unit uSupplier;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, BDE, ExtCtrls, DBCtrls, Navbtn,
  Buttons, Mask, SearchCD, IniFiles, Jpeg, Clipbrd, ImgList, ComCtrls;

type
  TfrmSupplier = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    Panel1: TPanel;
    Table1COMPANY_NAME: TStringField;
    Table1CEO_NAME: TStringField;
    Table1BUSINESS_NO: TStringField;
    Table1BUS_TYPE: TStringField;
    Table1BUS_JONG: TStringField;
    Table1TEL1: TStringField;
    Table1TEL2: TStringField;
    Table1FAX: TStringField;
    Table1NON_PAYED_AMT: TFloatField;
    Table1ZIPCODE: TStringField;
    Table1ADDR_SIGUN: TStringField;
    Table1ADDR_DETAIL: TStringField;
    Table1MEMO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Panel29: TPanel;
    BitBtn2: TBitBtn;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Panel16: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    Table1SEQ: TIntegerField;
    qrySeq: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmSupplier: TfrmSupplier;

implementation

uses uDM, uZipPopup;

{$R *.DFM}

procedure TfrmSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSupplier := nil;
  Action:=caFree;
end;

procedure TfrmSupplier.FormActivate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Active := true;
end;

procedure TfrmSupplier.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSupplier.Button3Click(Sender: TObject);
begin
  qrySeq.Close;
  qrySeq.Open;

  Table1.Append;
  Table1.FieldByName('SEQ').AsInteger := qrySeq.FieldByName('NSEQ').AsInteger;
  
end;

procedure TfrmSupplier.Button4Click(Sender: TObject);
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

procedure TfrmSupplier.Button5Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmSupplier.SpeedButton2Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      if Table1.State in [dsInsert, dsEdit] then
      begin
        Table1.FieldByName('ZIPCODE').AsString := frmZipPopup.edtZipCode.Text;
        Table1.FieldByName('addr_sigun').AsString := frmZipPopup.Edit2.Text;
        Table1.FieldByName('addr_detail').AsString := frmZipPopup.Edit3.Text;
      end
      else
      begin
        Table1.Edit;
        Table1.FieldByName('zipcode').AsString := frmZipPopup.edtZipCode.Text;
        Table1.FieldByName('addr_sigun').AsString := frmZipPopup.Edit2.Text;
        Table1.FieldByName('addr_detail').AsString := frmZipPopup.Edit3.Text;
      end;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

end.
