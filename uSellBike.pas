unit uSellBike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, Mask, ComCtrls,
  DBCtrls, ExtCtrls;

type
  TfrmSellBike = class(TForm)
    qry00: TQuery;
    Panel1: TPanel;
    Panel16: TPanel;
    Panel23: TPanel;
    Panel18: TPanel;
    Panel22: TPanel;
    DBEdit28: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Panel26: TPanel;
    Panel30: TPanel;
    DBEdit38: TDBEdit;
    DBEdit34: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    qry00seq: TIntegerField;
    qry00auto_no: TIntegerField;
    qry00buy_date: TStringField;
    qry00buyer_id: TStringField;
    qry00buy_price: TFloatField;
    qry00condition: TStringField;
    qry00no_get_amt: TFloatField;
    qry00customer_name: TStringField;
    qry00jumin_no: TStringField;
    qry00tel_no: TStringField;
    qry00cell_no: TStringField;
    qry00model: TStringField;
    qry00built_year: TStringField;
    qry00plate_no: TStringField;
    qry00built_company: TStringField;
    DataSource00: TDataSource;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Panel12: TPanel;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    Panel11: TPanel;
    DBEdit17: TDBEdit;
    Panel10: TPanel;
    DBEdit9: TDBEdit;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel19: TPanel;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;
    Panel17: TPanel;
    Panel15: TPanel;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    Panel14: TPanel;
    Panel13: TPanel;
    DBEdit14: TDBEdit;
    Panel8: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid2: TDBGrid;
    Panel27: TPanel;
    GroupBox6: TGroupBox;
    DBEdit23: TDBEdit;
    Panel32: TPanel;
    Panel40: TPanel;
    Table1: TTable;
    Table1AUTO_NO: TIntegerField;
    Table1BUY_DATE: TStringField;
    Table1BUYER_ID: TStringField;
    Table1BUY_PRICE: TFloatField;
    Table1CONDITION: TStringField;
    Table1NO_GET_AMT: TFloatField;
    Table1SELLER_ID: TStringField;
    DataSource1: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    Panel20: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit12: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Table1SEQ: TIntegerField;
    qrySeq: TQuery;
    SpeedButton6: TSpeedButton;
    qryCust: TQuery;
    qryCar: TQuery;
    Table1BUYER: TStringField;
    Table1AUTO_NAME: TStringField;
    qryCarseq: TIntegerField;
    qryCarbike_name: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qry00AfterScroll(DataSet: TDataSet);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSellBike: TfrmSellBike;

implementation

uses uPopupCust, uPopupBike, uCommonProcs;

{$R *.dfm}

procedure TfrmSellBike.FormCreate(Sender: TObject);
begin
  Table1.Active := true;
  qry00.Active := true;    
end;

procedure TfrmSellBike.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmSellBike := nil;
  Action:=caFree;
end;

procedure TfrmSellBike.Button1Click(Sender: TObject);
begin

  try
    frmPopupCust := TfrmPopupCust.Create(Self);
    if frmPopupCust.ShowModal = mrOK then
    begin
      //Table1.Locate('BUYER_ID', frmPopupCust.Query1.FieldByName('Customer_id').AsString, [loPartialKey])

      if Table1.State in [dsInsert, dsEdit] then
        Table1.FieldByName('BUYER_ID').AsString := frmPopupCust.Query1.FieldByName('Customer_id').AsString
      else
      begin
        Table1.Edit;
        Table1.FieldByName('BUYER_ID').AsString := frmPopupCust.Query1.FieldByName('Customer_id').AsString
      end;
    end;
  finally
    frmPopupCust.Free;
  end;

end;

procedure TfrmSellBike.Button2Click(Sender: TObject);
begin
  try
    frmPopupBike := TfrmPopupBike.Create(Self);
    if frmPopupBike.ShowModal = mrOK then
    begin
      //Table1.Locate('BUYER_ID', frmPopupCust.Query1.FieldByName('Customer_id').AsString, [loPartialKey])

      if Table1.State in [dsInsert, dsEdit] then
        Table1.FieldByName('AUTO_NO').AsInteger := frmPopupBike.Query1.FieldByName('SEQ').AsInteger
      else
      begin
        Table1.Edit;
        Table1.FieldByName('AUTO_NO').AsInteger := frmPopupBike.Query1.FieldByName('SEQ').AsInteger
      end;
    end;
  finally
    frmPopupBike.Free;
  end;

end;

procedure TfrmSellBike.BitBtn3Click(Sender: TObject);
begin
  if Table1.State in [dsEdit, dsInsert] then
  begin
    try
      Table1.Post;
      MessageDlg('저장되었습니다.', mtInformation, [mbOK], 0);
    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;

  end;
end;

procedure TfrmSellBike.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmSellBike.BitBtn1Click(Sender: TObject);
begin
  try
    qrySeq.Close;
    qrySeq.Open;

    Table1.Append;
    Table1.FieldByName('SEQ').AsInteger := qrySeq.FieldByName('NSEQ').AsInteger;
    Table1.FieldByName('BUY_DATE').AsString := FormatDateTime('YYYYMMDD', Now);
  except
  end;
end;

procedure TfrmSellBike.qry00AfterScroll(DataSet: TDataSet);
begin
  Table1.Locate('SEQ', qry00.FieldByName('SEQ').AsInteger, [loPartialKey])
end;

procedure TfrmSellBike.Table1AfterPost(DataSet: TDataSet);
begin
  qry00.Close;
  qry00.Open;
end;

procedure TfrmSellBike.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, Table1.FieldByName('BUY_DATE').AsString);
  if Table1.FieldByName('BUY_DATE').AsString <> S then
    if Table1.State in [dsEdit, dsInsert] then
      Table1.FieldByName('BUY_DATE').AsString := S
    else
    begin
      Table1.Edit;
      Table1.FieldByName('BUY_DATE').AsString := S
    end;

end;

end.
