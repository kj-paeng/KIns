unit uPartOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids,
  Buttons;

type
  TfrmPartOut = class(TForm)
    Table1: TTable;
    dtTrade: TDateTimePicker;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2part_id: TStringField;
    Query2part_name: TStringField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    maskCnt: TMaskEdit;
    BitBtn1: TBitBtn;
    qrySeq: TQuery;
    qrySeqnextseq: TFloatField;
    Button1: TButton;
    Edit1: TEdit;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    qryResult: TQuery;
    dsResult: TDataSource;
    DBGrid2: TDBGrid;
    qryResultpart_id: TStringField;
    qry00: TQuery;
    qry11: TQuery;
    BitBtn2: TBitBtn;
    Table1PART_ID: TStringField;
    Table1OUT_DATE: TDateField;
    Table1OUT_SEQ: TFloatField;
    Table1OUT_CNT: TFloatField;
    Table1OUT_AMT: TFloatField;
    Table1GET_AMT: TFloatField;
    Table1NO_GET_AMT: TFloatField;
    Table1ETC: TStringField;
    Table1STOCK: TFloatField;
    qryResultout_date: TDateField;
    qryResultout_seq: TFloatField;
    qryResultout_cnt: TFloatField;
    Query2part_price: TFloatField;
    Table1BUYER_ID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure maskCntExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartOut: TfrmPartOut;

implementation

uses uPopupCust, uPartIn;

{$R *.dfm}

procedure TfrmPartOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPartOut := nil;
  Action := caFree;

end;

procedure TfrmPartOut.FormCreate(Sender: TObject);
begin
  if not Table1.Active then Table1.Open;
  if not Query2.Active then Query2.Open;
  dtTrade.DateTime := Now;
end;

procedure TfrmPartOut.BitBtn1Click(Sender: TObject);
var
  nextseq: Integer;
  curcnt: Integer;
  S: String;
begin


  // 재고테이블에 반영
  qry00.Close;
  qry00.ParamByName('part_id').AsString := Query2.FieldByName('part_id').AsString;
  qry00.Open;

  curcnt := qry00.FieldByName('stock').AsInteger - StrToInt(maskCnt.Text);

  if curcnt < 0 then
  begin
    MessageDlg('부품재고가 부족합니다. 출고할 수 없습니다. ', mtWarning, [mbOK], 0);
    Exit;
  end
  else
  begin
    S := 'UPDATE part SET stock = ' + IntToStr(curcnt) + ' ';
    S := S + 'WHERE part_id = ''' + Query2.FieldByName('part_id').AsString + '''';

    qry11.Close;
    qry11.SQL.Clear;
    qry11.SQL.Add(S);
    qry11.ExecSQL;
  end;



  qrySeq.Close;
  qrySeq.ParamByName('part_id').AsString := Query2.FieldByName('part_id').AsString;
  qrySeq.ParamByName('out_date').AsDateTime := dtTrade.DateTime;
  qrySeq.Open;
  nextseq := qrySeq.FieldByName('nextseq').AsInteger;

  if not Table1.Active then Table1.Open;
  Table1.Insert;
  Table1.FieldByName('part_id').AsString := Query2.FieldByName('part_id').AsString;
  Table1.FieldByName('out_date').AsDateTime := dtTrade.DateTime;
  Table1.FieldByName('out_seq').AsInteger := nextseq;
  Table1.FieldByName('out_cnt').AsInteger := StrToInt(maskCnt.Text);
  Table1.FieldByName('out_amt').AsInteger := StrToInt(Edit2.Text);
  Table1.FieldByName('buyer_id').AsString := Edit3.Text;
  //지불금액
  Table1.FieldByName('get_amt').AsInteger := StrToInt(Edit4.Text);
  Table1.FieldByName('no_get_amt').AsInteger := StrToInt(Edit5.Text);
  Table1.FieldByName('etc').AsString := Edit6.Text;
  Table1.Post;

  qryResult.Close;
  qryResult.ParamByName('part_id').AsString := Query2.FieldByName('part_id').AsString;
  qryResult.ParamByName('out_date').AsDateTime := dtTrade.DateTime;
  qryResult.Open;

  qrySeq.Close;


end;

procedure TfrmPartOut.Button1Click(Sender: TObject);
begin
  try
    frmPopupCust := TfrmPopupCust.Create(Self);
    if frmPopupCust.ShowModal = mrOK then
    begin
      Edit3.Text := frmPopupCust.Query1.FieldByName('Customer_id').AsString;
      Edit1.Text := frmPopupCust.Query1.FieldByName('Customer_Name').AsString;
    end;
  finally
    frmPopupCust.Free;
  end;

end;

procedure TfrmPartOut.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  maskCnt.Text := '1';
  Edit2.Text := Query2.FieldByName('part_price').AsString;
  Edit4.Text := Query2.FieldByName('part_price').AsString;

  Edit3.Text := '';
  Edit1.Text := '';

  Edit6.Text := '';
  
end;

procedure TfrmPartOut.maskCntExit(Sender: TObject);
var
  amt: Integer;
begin
    try
      amt := StrToInt(maskCnt.Text) * Query2.FieldByName('part_price').AsInteger;
      Edit2.Text := IntToStr(amt);
      Edit4.Text := IntToStr(amt);


    except
      MessageDlg('숫자를 입력했는지 확인하십시요.', mtWarning, [mbOK], 0);
    end;

end;

procedure TfrmPartOut.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
