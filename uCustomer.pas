unit uCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, Grids,
  DBGrids, ComCtrls, Jpeg, Clipbrd, IniFiles,
  xmldom, XMLIntf, msxmldom, XMLDoc ;

type
  TfrmCustomer = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
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
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBImage1: TDBImage;
    TabSheet3: TTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    DataSource2: TDataSource;
    Table2: TTable;
    DBGrid2: TDBGrid;
    Button6: TButton;
    Button1: TButton;
    DBEdit22: TDBEdit;
    DBEdit27: TDBEdit;
    Panel29: TPanel;
    Panel30: TPanel;
    DBEdit28: TDBEdit;
    Panel31: TPanel;
    SpeedButton3: TSpeedButton;
    DBGrid3: TDBGrid;
    Table3: TTable;
    DataSource3: TDataSource;
    Table3CUSTOMER_ID: TStringField;
    Table3BIKE_NUMBER: TStringField;
    Table3BIKE_TYPE: TStringField;
    Table3BIKE_VIN: TStringField;
    Table3ENGINE_SIZE: TStringField;
    Table3BIKE_YEAR: TStringField;
    Table3BIKE_OIL_TYPE: TStringField;
    Table3BIKE_COLOR: TStringField;
    Table3BIKE_INSURER: TStringField;
    Table3BIKE_PHOTO: TGraphicField;
    Table3INS_START: TStringField;
    Table3INS_END: TStringField;
    Table3BIKE_REG_DATE: TStringField;
    Table3BIKE_MODEL_NAME: TStringField;
    Table3MILEAGE: TIntegerField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Table3SEQ: TIntegerField;
    Query2: TQuery;
    Table1CUSTOMER_ID: TStringField;
    Table1JUMIN_NO: TStringField;
    Table1CUSTOMER_NAME: TStringField;
    Table1COMPANY_NAME: TStringField;
    Table1TEL_NO: TStringField;
    Table1CELL_NO: TStringField;
    Table1ZIP_CODE: TStringField;
    Table1ADDRESS_DETAIL: TStringField;
    Table1ADDRESS_SIGUN: TStringField;
    Table1FAX_NO: TStringField;
    Table1CUSTOMER_TYPE: TIntegerField;
    Table1EMAIL: TStringField;
    Table1HOMEPAGE: TStringField;
    Table1EMP_CHARGE: TStringField;
    Table1BUSINESS_NO: TStringField;
    Table1BUS_TYPE: TStringField;
    Table1BUS_JONG: TStringField;
    Table1BIKE_NUMBER: TStringField;
    Table1BIKE_TYPE: TStringField;
    Table1BIKE_VIN: TStringField;
    Table1ENGINE_SIZE: TIntegerField;
    Table1BIKE_YEAR: TIntegerField;
    Table1BIKE_OIL_TYPE: TStringField;
    Table1BIKE_COLOR: TStringField;
    Table1BIKE_INSURER: TStringField;
    Table1INS_START: TStringField;
    Table1INS_END: TStringField;
    Table1BIKE_PHOTO: TGraphicField;
    Table1BIKE_REG_DATE: TStringField;
    Table1BIKE_MODEL_NAME: TStringField;
    Table1MILEAGE: TIntegerField;
    Table2CUSTOMER_ID: TStringField;
    Table2SEQ: TIntegerField;
    Table2REPAIR_DATE: TStringField;
    Table2REPAIR_DESC: TStringField;
    Table2REPAIR_AMT: TFloatField;
    Table2NO_RECEIVED_AMT: TFloatField;
    Table2RECEIVED_AMT: TFloatField;
    Table2USED_PARTS_DESC: TMemoField;
    Table2TECHNICIAN: TStringField;
    Table2IS_VAT: TStringField;
    Table2MILEAGE: TFloatField;
    Table2CASH_IN: TFloatField;
    Table2CASH_DC: TFloatField;
    Table2CARD_IN: TFloatField;
    Table2CARD_DC: TFloatField;
    Table2TRANSF_IN: TFloatField;
    Table2TRANSF_DC: TFloatField;
    Table2CASH_IN_DESC: TStringField;
    Table2CARD_IN_DESC: TStringField;
    Table2TRANSF_IN_DESC: TStringField;
    Table2BEFORE_IMG: TGraphicField;
    Table2AFTER_IMG: TGraphicField;
    XD: TXMLDocument;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Table2BIKE_NUMBER: TStringField;
    Table3CURMILE: TIntegerField;
    Panel32: TPanel;
    DBEdit29: TDBEdit;
    Panel28: TPanel;
    DBEdit30: TDBEdit;
    Table3CURMILE_DATE: TStringField;
    SpeedButton8: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
    function registeredMemberCheck: Boolean;
  public
    { Public declarations }
    procedure gotoCust(cid: String);
  end;

var
  frmCustomer: TfrmCustomer;

implementation

uses uPopupCust, uZipPopUp, uCommonProcs, uQryRptCust, uRepair,
  uRepairCust, uQuoteBike, uCalendar, Debug;

{$R *.dfm}

procedure TfrmCustomer.gotoCust(cid: String);
begin
  if not Table1.Active then
    Table1.Open;
  Table1.Locate('CUSTOMER_ID', VarArrayOf([cid]), [loPartialKey]);
  PageControl1.ActivePageIndex := 1;

end;

procedure TfrmCustomer.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmCustomer := nil;
  Action := caFree;
end;

procedure TfrmCustomer.FormCreate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Open;
  if not Table2.Active then
    Table2.Open;
  if not Table3.Active then
    Table3.Open;

  PageControl1.ActivePageIndex := 0;

end;

procedure TfrmCustomer.Button3Click(Sender: TObject);
begin
  Table1.Append;
end;

procedure TfrmCustomer.Button4Click(Sender: TObject);
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

procedure TfrmCustomer.Button5Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmCustomer.DBEdit2Exit(Sender: TObject);
begin
{
  if not Chk_Jumin(EraseStr(DBEdit2.Text, '-')) then
  begin
    MessageDlg('주민번호가 올바르지 않습니다.', mtWarning, [mbOK], 0);
  end;
}
  if not ChkDate(EraseStr(DBEdit2.Text, '-')) then
  begin
    MessageDlg('올바른 날짜가 아닙니다. YYYYMMDD 형식으로 숫자만 입력하십시요', mtWarning, [mbOK], 0);
    DBEdit2.SetFocus;
  end;


end;

procedure TfrmCustomer.SpeedButton1Click(Sender: TObject);
begin
  try
    frmPopupCust := TfrmPopupCust.Create(Self);
    if frmPopupCust.ShowModal = mrOK then
    begin
      Table1.Locate('CUSTOMER_ID', frmPopupCust.Query1.FieldByName('Customer_id').AsString, [loPartialKey])
    end;
  finally
    frmPopupCust.Free;
  end;
end;

procedure TfrmCustomer.SpeedButton2Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      if Table1.State in [dsInsert, dsEdit] then
      begin
        Table1.FieldByName('zip_code').AsString := frmZipPopup.edtZipCode.Text;
        Table1.FieldByName('address_sigun').AsString := frmZipPopup.Edit2.Text;
        Table1.FieldByName('address_detail').AsString := frmZipPopup.Edit3.Text;
      end
      else
      begin
        Table1.Edit;
        Table1.FieldByName('zip_code').AsString := frmZipPopup.edtZipCode.Text;
        Table1.FieldByName('address_sigun').AsString := frmZipPopup.Edit2.Text;
        Table1.FieldByName('address_detail').AsString := frmZipPopup.Edit3.Text;
      end;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

procedure TfrmCustomer.Button2Click(Sender: TObject);
begin
  if frmQryRptCust = nil then
  begin
    frmQryRptCust:=TfrmQryRptCust.Create(Self);
    frmQryRptCust.Show;
  end
  else
  begin
    frmQryRptCust.Show;
  end;
end;

procedure TfrmCustomer.SpeedButton4Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if Table3BIKE_PHOTO.IsNull and OpenDialog1.Execute then
  begin
    if not ( Table3.State in [dsInsert, dsEdit]) then Table3.Edit;

    JP := TJpegImage.Create;
    CB := TClipboard.Create;
    picname := OpenDialog1.FileName;
    try
      JP.LoadFromFile(picname);
      CB.Assign(JP);
      DBImage1.PasteFromClipboard;
    finally
      JP.Free;
      CB.Free;
    end;

    Table3.Post;
  end;

end;

procedure TfrmCustomer.SpeedButton5Click(Sender: TObject);
begin
  Table3.Edit;
  Table3BIKE_PHOTO.Clear;
  Table3.Post;
end;

procedure TfrmCustomer.Button6Click(Sender: TObject);
begin
  if frmRepairCust = nil then
  begin
    frmRepairCust := TfrmRepairCust.Create(Self);                       
    frmRepairCust.Show;
    frmRepairCust.setCustID(Table1.FieldByName('CUSTOMER_ID').AsString);
  end
  else
  begin
    frmRepairCust.Show;
  end;
end;

function TfrmCustomer.registeredMemberCheck: Boolean;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;

  sl: TStringList;
begin

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    sl := TStringList.Create;
    sl.Add('uid='+BBIni.ReadString('MemberInfo', 'UID', ''));
    sl.Add('upass='+BBIni.ReadString('MemberInfo', 'UPASS', ''));
    sl.Add('uname='+BBIni.ReadString('MemberInfo', 'UNAME', ''));

    CallServiceHidden(GET_MEMBER_STATUS_CHECK, sl, XD);

    try
      if not XD.Active then XD.Active := true;

      for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
      begin
        KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
        S := KNode.ChildNodes['status'].Text; // wow case sensitive
             
        if trim(S) = 'OK' then
        begin
          result := true;
        end
        else
        begin
           MessageDlg('먼저 회원(사) 등록후 승인을 받으십시요. 관리자에게 연락바랍니다.'#13#13
                       + '회원승인을 이미 받은 경우에는 ID, 비밀번호를 확인하십시요', mtInformation, [mbOK], 0);
           result := false;
        end;
      end;

    except
    end;

  finally
    sl.Free;
    BBIni.Free;
  end;

end;


procedure TfrmCustomer.Button1Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmQuoteBike = nil then
  begin
    frmQuoteBike := TfrmQuoteBike.Create(Self);

    // setting basic info.
    frmQuoteBike.edtUNAME.Text := Table1.FieldByName('CUSTOMER_NAME').AsString;
    frmQuoteBike.edtJUMIN01.Text := Copy(Table1.FieldByName('JUMIN_NO').AsString, 3, 6);

    try
      frmQuoteBike.edtAge.Text := IntToStr(GetAge('19'+trim(frmQuoteBike.edtJUMIN01.Text), Now));
    except
    end;

    frmQuoteBike.edtUZIPCODE.Text := Table1.FieldByName('ZIP_CODE').AsString;
    frmQuoteBike.edtUJUSO1.Text := Table1.FieldByName('ADDRESS_SIGUN').AsString;
    frmQuoteBike.edtUJUSO2.Text := Table1.FieldByName('ADDRESS_DETAIL').AsString;
    frmQuoteBike.edtUTEL.Text := Table1.FieldByName('TEL_NO').AsString;
    frmQuoteBike.edtUHP.Text := Table1.FieldByName('CELL_NO').AsString;
    frmQuoteBike.edtUCARNO.Text := Table3.FieldByName('BIKE_NUMBER').AsString;

    frmQuoteBike.Show;
  end
  else
  begin
    frmQuoteBike.Show;
  end;
end;

procedure TfrmCustomer.DBEdit25Exit(Sender: TObject);
begin
  if not ChkDate(EraseStr(DBEdit25.Text, '-')) then
  begin
    MessageDlg('올바른 날짜가 아닙니다. YYYYMMDD 형식으로 숫자만 입력하십시요', mtWarning, [mbOK], 0);
    DBEdit25.SetFocus;
  end;
end;

procedure TfrmCustomer.DBEdit26Exit(Sender: TObject);
begin
  if not ChkDate(EraseStr(DBEdit26.Text, '-')) then
  begin
    MessageDlg('올바른 날짜가 아닙니다. YYYYMMDD 형식으로 숫자만 입력하십시요', mtWarning, [mbOK], 0);
    DBEdit26.SetFocus;
  end;
end;

procedure TfrmCustomer.SpeedButton3Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton3, Table1.FieldByName('JUMIN_NO').AsString);
  if Table1.FieldByName('JUMIN_NO').AsString <> S then
    if Table1.State in [dsEdit, dsInsert] then
      Table1.FieldByName('JUMIN_NO').AsString := S
    else
    begin
      Table1.Edit;
      Table1.FieldByName('JUMIN_NO').AsString := S
    end;
end;

procedure TfrmCustomer.BitBtn2Click(Sender: TObject);
begin

  Query2.ParamByName('CUSTOMER_ID').AsString := Table1.FieldByName('CUSTOMER_ID').AsString;
  Query2.Close;
  Query2.Open;

  Table3.Append;
  Table3.FieldByName('SEQ').AsInteger := Query2.FieldByName('NSEQ').AsInteger;

  DBEdit11.SetFocus;
  //Table1.FieldByName('REPAIR_DATE').AsString := FormatDatetime('YYYYMMDD', Now);

end;

procedure TfrmCustomer.BitBtn3Click(Sender: TObject);
begin
  try
    Table3.Post;
  except
    //MessageDlg('이미 저장되었습니다. ', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmCustomer.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table3.Delete;
  except
    MessageDlg('차량내역을 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmCustomer.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, Table3.FieldByName('BIKE_REG_DATE').AsString);
  if Table3.FieldByName('BIKE_REG_DATE').AsString <> S then
    if Table3.State in [dsEdit, dsInsert] then
      Table3.FieldByName('BIKE_REG_DATE').AsString := S
    else
    begin
      Table3.Edit;
      Table3.FieldByName('BIKE_REG_DATE').AsString := S
    end;

end;

procedure TfrmCustomer.SpeedButton7Click(Sender: TObject);
var
  S1, S2: String;
begin
  S1 := Table3.FieldByName('INS_START').AsString;
  S2 := Table3.FieldByName('INS_END').AsString;

  showMCalPeriod(SpeedButton7, S1, S2);
  //if Table3.FieldByName('INS_START').AsString <> S1 then
    if Table3.State in [dsEdit, dsInsert] then
    begin
      Table3.FieldByName('INS_START').AsString := S1;
      Table3.FieldByName('INS_END').AsString := S2;

    end
    else
    begin
      Table3.Edit;
      Table3.FieldByName('INS_START').AsString := S1;
      Table3.FieldByName('INS_END').AsString := S2;
    end;

end;

procedure TfrmCustomer.SpeedButton8Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton8, Table3.FieldByName('CURMILE_DATE').AsString);
  if Table3.FieldByName('CURMILE_DATE').AsString <> S then
    if Table3.State in [dsEdit, dsInsert] then
      Table3.FieldByName('CURMILE_DATE').AsString := S
    else
    begin
      Table3.Edit;
      Table3.FieldByName('CURMILE_DATE').AsString := S
    end;
end;

end.
