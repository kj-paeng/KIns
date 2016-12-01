unit uRepairCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, DB, DBTables, Grids,
  DBGrids, Jpeg, Clipbrd, IniFiles;

type
  TfrmRepairCust = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Panel8: TPanel;
    DBEdit6: TDBEdit;
    Panel7: TPanel;
    DBEdit5: TDBEdit;
    Table1: TTable;
    Table1CUSTOMER_ID: TStringField;
    Table1REPAIR_AMT: TFloatField;
    Table1NO_RECEIVED_AMT: TFloatField;
    Table1RECEIVED_AMT: TFloatField;
    Table1USED_PARTS_DESC: TMemoField;
    Table1TECHNICIAN: TStringField;
    Table1IS_VAT: TStringField;
    Table1MILEAGE: TFloatField;
    Table1CASH_IN: TFloatField;
    Table1CASH_DC: TFloatField;
    Table1CARD_IN: TFloatField;
    Table1CARD_DC: TFloatField;
    Table1TRANSF_IN: TFloatField;
    Table1TRANSF_DC: TFloatField;
    Table1CASH_IN_DESC: TStringField;
    Table1CARD_IN_DESC: TStringField;
    Table1TRANSF_IN_DESC: TStringField;
    Table1BEFORE_IMG: TGraphicField;
    Table1AFTER_IMG: TGraphicField;
    DataSource1: TDataSource;
    Table1REPAIR_DESC: TStringField;
    qryCust: TQuery;
    dsCust: TDataSource;
    qryCustcustomer_id: TStringField;
    qryCustcustomer_name: TStringField;
    qryCustcell_no: TStringField;
    qryCusttel_no: TStringField;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    Table2: TTable;
    DataSource2: TDataSource;
    Table2CUSTOMER_ID: TStringField;
    Table2PART_NAME: TStringField;
    Table2PART_COUNT: TFloatField;
    Table2UNIT_PRICE: TFloatField;
    Table2LABOUR_CHARGE: TFloatField;
    Table2DISCOUNT: TFloatField;
    Table2LIST_PRICE: TFloatField;
    Table2VAT: TFloatField;
    Table2TOTAL_AMT: TFloatField;
    Table2MEMO: TStringField;
    BitBtn7: TBitBtn;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel15: TPanel;
    DBEdit1: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBEdit26: TDBEdit;
    Panel22: TPanel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Panel10: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel21: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel13: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel14: TPanel;
    DBGrid1: TDBGrid;
    DBGrid0: TDBGrid;
    BitBtn8: TBitBtn;
    Table1REPAIR_DATE: TStringField;
    BitBtn9: TBitBtn;
    rdgIsVAT: TDBRadioGroup;
    qryCustaddress_sigun: TStringField;
    qryCustaddress_detail: TStringField;
    Table1SEQ: TIntegerField;
    qrySeq1: TQuery;
    Table2SEQ: TIntegerField;
    Table2PART_SEQ: TIntegerField;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    DBGrid00: TDBGrid;
    Query00: TQuery;
    DataSource00: TDataSource;
    Query00customer_id: TStringField;
    Query00seq: TIntegerField;
    Query00bike_number: TStringField;
    Query00bike_type: TStringField;
    Query00bike_vin: TStringField;
    Query00engine_size: TStringField;
    Query00bike_year: TStringField;
    Table1BIKE_NUMBER: TStringField;
    Query00bike_model_name: TStringField;
    Query00bike_reg_date: TStringField;
    Query00mileage: TIntegerField;
    BitBtn10: TBitBtn;
    qryCustcompany_name: TStringField;
    qryCustbusiness_no: TStringField;
    qryCustbus_type: TStringField;
    qryCustbus_jong: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryCustAfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Query00AfterScroll(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    procedure getTotalRepairAmt;
  public
    { Public declarations }
    custID: String;
    repairSeq: Integer;
    bike_number, bike_vin, bike_year: String;
    procedure setCustID(customerID: String);
  end;

var
  frmRepairCust: TfrmRepairCust;

implementation

uses uRepairCustList, uRepairCustParts, uCommonProcs, uRepairReceipt,
  uCheckRepairSpec, uTaxReceiptCheck;

{$R *.dfm}

procedure TfrmRepairCust.getTotalRepairAmt;
var
  amt: Integer;
  i: Integer;
begin
  amt := 0;
  for i := 0 to Table2.RecordCount -1 do
  begin
    amt := amt + Table2.FieldByName('TOTAL_AMT').AsInteger;
    Table2.Next;
  end;

  if not (Table1.State in [dsEdit, dsInsert]) then Table1.Edit;
  Table1.FieldByName('REPAIR_AMT').AsInteger := amt;



  Table1.Post;

end;

procedure TfrmRepairCust.setCustID(customerID: String);
begin

  custID := customerID;
  qryCust.Close;
  qryCust.ParamByName('customer_id').AsString := customerID;
  qryCust.Open;

  if not Table1.Active then
    Table1.Active := true;
  if not Table2.Active then
    Table2.Active := true;

end;

procedure TfrmRepairCust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmRepairCust := nil;
  Action := caFree;
end;

procedure TfrmRepairCust.SpeedButton1Click(Sender: TObject);
begin
  try
    frmRepairCustList := TfrmRepairCustList.Create(Self);
    frmRepairCustList.ShowModal;
    custID := frmRepairCustList.custID;
    repairSeq := frmRepairCustList.repairSeq;
    bike_number := frmRepairCustList.bike_number;
    bike_vin := frmRepairCustList.bike_vin;
    bike_year := frmRepairCustList.bike_year;

    setCustID(custID);

  finally
    frmRepairCustList.Free;
  end;
end;

procedure TfrmRepairCust.BitBtn1Click(Sender: TObject);
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  qrySeq1.Close;
  qrySeq1.ParamByName('CUSTOMER_ID').AsString := qryCust.FieldByName('CUSTOMER_ID').AsString;
  qrySeq1.Open;

  Table1.Append;
  DBEdit28.SetFocus;
  Table1.FieldByName('REPAIR_DATE').AsString := FormatDatetime('YYYYMMDD', Now);
  Table1.FieldByName('SEQ').AsInteger := qrySeq1.FieldByName('NSEQ').AsInteger;
  Table1.FieldByName('IS_VAT').AsString := '포함';


end;

procedure TfrmRepairCust.qryCustAfterScroll(DataSet: TDataSet);
begin

  Query00.Close;
  Query00.ParamByName('CUSTOMER_ID').AsString := qryCust.FieldByName('CUSTOMER_ID').AsString;
  Query00.Open;
  
end;

procedure TfrmRepairCust.BitBtn2Click(Sender: TObject);
begin
  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if Table1.State in [dsEdit, dsInsert] then
    Table1.Post;

end;

procedure TfrmRepairCust.BitBtn3Click(Sender: TObject);
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;
  
  if Table2.RecordCount > 0 then
  begin
    MessageDlg('먼저 부품 내역 자료를 지우십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('정비내역을 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRepairCust.SpeedButton4Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if not Table1.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;


  if not ( Table1.State in [dsInsert, dsEdit]) then
  begin
    //MessageDlg('먼저 정비추가 버튼을 누르십시요.', mtWarning, [mbOK], 0);
    //exit;
    Table1.Edit;
  end;

  if Table1BEFORE_IMG.IsNull and OpenDialog1.Execute then
  begin

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
  end;

end;

procedure TfrmRepairCust.SpeedButton5Click(Sender: TObject);
begin

  if not Table1.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;


  if not ( Table1.State in [dsInsert, dsEdit]) then
  begin
    //MessageDlg('먼저 정비추가 버튼을 누르십시요.', mtWarning, [mbOK], 0);
    //exit;
    Table1.Edit;
  end;

  Table1BEFORE_IMG.Clear;
  
end;

procedure TfrmRepairCust.SpeedButton2Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if not Table1.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;


  if not ( Table1.State in [dsInsert, dsEdit]) then
  begin
    //MessageDlg('먼저 정비추가 버튼을 누르십시요.', mtWarning, [mbOK], 0);
    //exit;
    Table1.Edit;
  end;

  if Table1AFTER_IMG.IsNull and OpenDialog2.Execute then
  begin
    JP := TJpegImage.Create;
    CB := TClipboard.Create;
    picname := OpenDialog2.FileName;
    try
      JP.LoadFromFile(picname);
      CB.Assign(JP);
      DBImage2.PasteFromClipboard;
    finally
      JP.Free;
      CB.Free;
    end;
  end; 
end;

procedure TfrmRepairCust.SpeedButton3Click(Sender: TObject);
begin

  if not Table1.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if not ( Table1.State in [dsInsert, dsEdit]) then
  begin
    //MessageDlg('먼저 정비추가 버튼을 누르십시요.', mtWarning, [mbOK], 0);
    //exit;
    Table1.Edit;
  end;

  Table1AFTER_IMG.Clear;

end;

procedure TfrmRepairCust.Table1BeforePost(DataSet: TDataSet);
begin
  Table1.FieldByName('customer_id').AsString := custID;
  Table1.FieldByName('bike_number').AsString := Query00.FieldByName('BIKE_NUMBER').AsString;
end;

procedure TfrmRepairCust.BitBtn4Click(Sender: TObject);
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if Table1.State in [dsEdit, dsInsert] then Table1.Post;

  try
    frmRepairCustParts := TfrmRepairCustParts.Create(Self);
    frmRepairCustParts.repairSeq := Table1.FieldByName('SEQ').AsInteger;
    frmRepairCustParts.custID := Table1.FieldByName('CUSTOMER_ID').AsString;
    frmRepairCustParts.whatToDo := 'insert';
    frmRepairCustParts.taxHandling := Table1.FieldByName('IS_VAT').AsString;
    frmRepairCustParts.ShowModal;
    Table2.Refresh;
    getTotalRepairAmt;
  finally
    frmRepairCustParts.Free;
  end;
end;

procedure TfrmRepairCust.BitBtn5Click(Sender: TObject);
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if Table1.State in [dsEdit, dsInsert] then Table1.Post;

  if Table2.RecordCount > 0 then
  begin
    try
      frmRepairCustParts := TfrmRepairCustParts.Create(Self);

        frmRepairCustParts.repairSeq := Table2.FieldByName('SEQ').AsInteger;
        frmRepairCustParts.custID := Table2.FieldByName('CUSTOMER_ID').AsString;
        frmRepairCustParts.partSeq := Table2.FieldByName('PART_SEQ').AsInteger;

      frmRepairCustParts.whatToDo := 'edit';
      frmRepairCustParts.taxHandling := Table1.FieldByName('IS_VAT').AsString;      
      frmRepairCustParts.ShowModal;
      Table2.Refresh;
      getTotalRepairAmt;
    finally
      frmRepairCustParts.Free;
    end;
  end
  else
    MessageDlg('수정할 부품자료가 없습니다. 부품추가를 사용하십시요.', mtInformation, [mbOK], 0);

end;

procedure TfrmRepairCust.BitBtn7Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepairCust.BitBtn6Click(Sender: TObject);
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  if Table1.State in [dsEdit, dsInsert] then Table1.Post;

  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table2.Delete;
    getTotalRepairAmt;
  except
    MessageDlg('부품내역을 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRepairCust.FormActivate(Sender: TObject);
begin
{
  if trim(custID) = '' then
  begin
    try
      frmRepairCustList := TfrmRepairCustList.Create(Self);
      if frmRepairCustList.ShowModal = mrOK then
      begin
        custID := frmRepairCustList.custID;
        repairSeq := frmRepairCustList.repairSeq;
      end;
    finally
      frmRepairCustList.Free;
    end;
  end;

  qryCust.Close;
  qryCust.ParamByName('customer_id').AsString := custID;
  qryCust.Open;
}

end;

procedure TfrmRepairCust.FormCreate(Sender: TObject);
begin
  Table1.Active := false;
  Table2.Active := false;
  //MessageDlg('먼저 고객 조회를 하십시요', mtWarning, [mbOK], 0);
end;

procedure TfrmRepairCust.DBEdit1Exit(Sender: TObject);
begin
  if not ChkDate(EraseStr(DBEdit1.Text, '-')) then
  begin
    MessageDlg('올바른 날짜가 아닙니다. YYYYMMDD 형식으로 숫자만 입력하십시요', mtWarning, [mbOK], 0);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmRepairCust.BitBtn8Click(Sender: TObject);
var
  i: Integer;
  cmp: TComponent;
  cname: String;
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  try
  try
    frmRepairReceipt := TfrmRepairReceipt.Create(Self);
    BBIni := TIniFile.Create(BBUDDY_INI);
    // customer info
    frmRepairReceipt.edtBikeOwner.Text := qryCust.FieldByName('customer_name').AsString;
    frmRepairReceipt.edtOwnerTel.Text := qryCust.FieldByName('tel_no').AsString;

    // bike_info
    frmRepairReceipt.edtBikeRegNo.Text := Query00.FieldByName('bike_number').AsString;
    frmRepairReceipt.edtBikeName.Text := Query00.FieldByName('bike_model_name').AsString;
    frmRepairReceipt.edtBikeType.Text := Query00.FieldByName('bike_type').AsString;
    frmRepairReceipt.edtBikeDistance.Text := StrConv(Query00.FieldByName('mileage').AsString);
    frmRepairReceipt.edtBikeRegDate.Text := Query00.FieldByName('bike_reg_date').AsString;
    frmRepairReceipt.edtOwnerReqDate.Text := FormatDateTime('YYYYMMDD', Now);

    // shop info
    frmRepairReceipt.edtShopRegNo.Text := BBIni.ReadString('MemberInfo', 'BIZNO', '');
    frmRepairReceipt.edtShopAddr.Text := BBIni.ReadString('MemberInfo', 'UJUSO1', '') +
                                         ' ' + BBIni.ReadString('MemberInfo', 'UJUSO2', '');
    frmRepairReceipt.edtShopRepairRegNo.Text := BBIni.ReadString('MemberInfo', 'SHOPNO', '');
    frmRepairReceipt.edtShopName.Text := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    frmRepairReceipt.edtShopCEO.Text := BBIni.ReadString('MemberInfo', 'CEONAME', '');
    frmRepairReceipt.edtShopTel.Text := BBIni.ReadString('MemberInfo', 'UTEL', '');
    frmRepairReceipt.edtShopCompDate.Text := FormatDateTime('YYYYMMDD', Now);
    frmRepairReceipt.edtShopOutDate.Text := FormatDateTime('YYYYMMDD', Now);
    frmRepairReceipt.edtShopMechanic.Text := Table1.FieldByName('TECHNICIAN').AsString;

    // repair info
    frmRepairReceipt.edtFixDesc.Text := Table1.FieldByName('REPAIR_DESC').AsString;


    Table2.First;
    for i := 0 to Table2.RecordCount - 1 do
    begin
      //edtTask01
      cmp := frmRepairReceipt.FindComponent('edtTask0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('PART_NAME').AsString;
      //edtPartType01
      {cmp := frmRepairReceipt.FindComponent('edtPartType0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('??').AsString;}
      //edtPartCount01
      cmp := frmRepairReceipt.FindComponent('edtPartCount0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('PART_COUNT').AsString;
      //edtUnitPrice01
      cmp := frmRepairReceipt.FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := '\' + StrConv(Table2.FieldByName('UNIT_PRICE').AsString);
      //edtPartSum01
      cmp := frmRepairReceipt.FindComponent('edtPartSum0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := '\' + StrConv(Table2.FieldByName('TOTAL_AMT').AsString);
      //edtLC01
      cmp := frmRepairReceipt.FindComponent('edtLC0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := '\' + StrConv(Table2.FieldByName('LABOUR_CHARGE').AsString);

      Table2.Next;
    end;

    case rdgIsVAT.ItemIndex of
    0: begin
         frmRepairReceipt.edtTotalAmt.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger * 0.9)));
         frmRepairReceipt.edtVAT.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger * 0.1)));
         frmRepairReceipt.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger)));
      end;
    1: begin
         frmRepairReceipt.edtTotalAmt.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger)));
         frmRepairReceipt.edtVAT.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger * 0.1)));
         frmRepairReceipt.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger*1.1)));
      end;
    2: begin
         frmRepairReceipt.edtTotalAmt.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger)));
         frmRepairReceipt.edtVAT.Text := '\0';
         frmRepairReceipt.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger)));
      end;
    else
      begin
         frmRepairReceipt.edtTotalAmt.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger * 0.9)));
         frmRepairReceipt.edtVAT.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger * 0.1)));
         frmRepairReceipt.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(Table1.FieldByName('REPAIR_AMT').AsInteger)));
      end;
    end;

    frmRepairReceipt.edtIssueDate.Text := FormatDateTime('YYYYMMDD', Now);
    frmRepairReceipt.edtCEOName.Text := BBIni.ReadString('MemberInfo', 'CEONAME', '');

    frmRepairReceipt.ShowModal;

  finally
    frmRepairReceipt.Free;
    BBIni.Free;
  end;
  except
  end;
end;

procedure TfrmRepairCust.BitBtn9Click(Sender: TObject);
var
  i: Integer;
  cmp: TComponent;
  cname: String;
  amtPart, amtLC, amtFinal: Integer;
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  try
  try
    frmCheckRepairSpec := TfrmCheckRepairSpec.Create(Self);
    BBIni := TIniFile.Create(BBUDDY_INI);

    frmCheckRepairSpec.edtSerialNo.Text := FormatDateTime('YYYYMMDDHHMMSS', Now);
    // customer info
    frmCheckRepairSpec.edtBikeOwner.Text := qryCust.FieldByName('customer_name').AsString;
    frmCheckRepairSpec.edtOwnerTel.Text := qryCust.FieldByName('tel_no').AsString;
    frmCheckRepairSpec.edtOwnerAddr.Text := qryCust.FieldByName('address_sigun').AsString+ ' ' +qryCust.FieldByName('address_detail').AsString;

    // bike info
    frmCheckRepairSpec.edtBikeRegNo.Text := Query00.FieldByName('bike_number').AsString;
    frmCheckRepairSpec.edtVIN.Text := Query00.FieldByName('bike_vin').AsString;
    frmCheckRepairSpec.edtBikeType.Text := Query00.FieldByName('bike_type').AsString;
    frmCheckRepairSpec.edtBikeName.Text := Query00.FieldByName('bike_MODEL_NAME').AsString;
    frmCheckRepairSpec.edtBikeRegDate.Text := Query00.FieldByName('bike_REG_DATE').AsString;
    frmCheckRepairSpec.edtBikeDistance.Text := StrConv(Query00.FieldByName('MILEAGE').AsString);

    // shop info
    frmCheckRepairSpec.edtShopRegNo.Text := BBIni.ReadString('MemberInfo', 'BIZNO', '');
    frmCheckRepairSpec.edtShopRepairRegNo.Text := BBIni.ReadString('MemberInfo', 'SHOPNO', '');
    frmCheckRepairSpec.edtShopCEO.Text := BBIni.ReadString('MemberInfo', 'CEONAME', '');
    frmCheckRepairSpec.edtCEOName.Text := BBIni.ReadString('MemberInfo', 'CEONAME', '');
    frmCheckRepairSpec.edtShopAddr.Text := BBIni.ReadString('MemberInfo', 'UJUSO1', '') +
                                         ' ' + BBIni.ReadString('MemberInfo', 'UJUSO2', '');
    frmCheckRepairSpec.edtShopName.Text := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    frmCheckRepairSpec.edtShopTel.Text := BBIni.ReadString('MemberInfo', 'UTEL', '');

    Table2.First;
    // repair info
    for i := 0 to Table2.RecordCount - 1 do
    begin
      //edtTask01
      cmp := frmCheckRepairSpec.FindComponent('edtTask0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('PART_NAME').AsString;
      //edtPartType01
      {cmp := frmRepairReceipt.FindComponent('edtPartType0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('??').AsString;}
      //edtPartCount01
      cmp := frmCheckRepairSpec.FindComponent('edtPartCount0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := Table2.FieldByName('PART_COUNT').AsString;
      //edtUnitPrice01
      cmp := frmCheckRepairSpec.FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := '\' + StrConv(Table2.FieldByName('UNIT_PRICE').AsString);
      //edtPartSum01
      cmp := frmCheckRepairSpec.FindComponent('edtPartSum0'+ IntToStr(i+1));
      if Assigned(cmp) then
      begin
        amtPart := amtPart + Table2.FieldByName('PART_COUNT').AsInteger * Table2.FieldByName('UNIT_PRICE').AsInteger;
        TEdit(cmp).Text := '\' + StrConv(IntToStr(Table2.FieldByName('PART_COUNT').AsInteger * Table2.FieldByName('UNIT_PRICE').AsInteger) );
      end;
      //edtLC01
      cmp := frmCheckRepairSpec.FindComponent('edtLC0'+ IntToStr(i+1));
      if Assigned(cmp) then
      begin
        amtLC := amtLC + Table2.FieldByName('LABOUR_CHARGE').AsInteger;
        TEdit(cmp).Text := '\' + StrConv(Table2.FieldByName('LABOUR_CHARGE').AsString);
      end;
      //edtLineSum01
      cmp := frmCheckRepairSpec.FindComponent('edtLineSum0'+ IntToStr(i+1));
      if Assigned(cmp) then
        TEdit(cmp).Text := '\' + StrConv(IntToStr(Table2.FieldByName('TOTAL_AMT').AsInteger {+ Table2.FieldByName('LABOUR_CHARGE').AsInteger } ));

      Table2.Next;
    end;

    frmCheckRepairSpec.edtTotalAmt.Text := '\' + StrConv(IntToStr(amtPart));
    frmCheckRepairSpec.edtLCSum.Text := '\' + StrConv(IntToStr(amtLC));
    frmCheckRepairSpec.edtBeforeTax.Text := '\' + StrConv(IntToStr(amtLC+amtPart));

    amtFinal := Table1.FieldByName('REPAIR_AMT').AsInteger;
    if not (amtFinal = (amtPart+amtLC)) then
      amtFinal := amtPart+amtLC;

    case rdgIsVAT.ItemIndex of
    0: begin
         frmCheckRepairSpec.edtVAT.Text := '\' + StrConv(IntToStr(round(amtFinal * 0.1)));
         frmCheckRepairSpec.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(amtFinal)));
      end;
    1: begin
         frmCheckRepairSpec.edtVAT.Text := '\' + StrConv(IntToStr(round(amtFinal * 0.1)));
         frmCheckRepairSpec.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(amtFinal*1.1)));
      end;
    2: begin
         frmCheckRepairSpec.edtVAT.Text := '\0';
         frmCheckRepairSpec.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(amtFinal)));
      end;
    else
      begin
         frmCheckRepairSpec.edtVAT.Text := '\' + StrConv(IntToStr(round(amtFinal * 0.1)));
         frmCheckRepairSpec.edtGrandTotal.Text := '\' + StrConv(IntToStr(round(amtFinal)));
      end;
    end;

    frmCheckRepairSpec.edtIssueDate.Text := FormatDateTime('YYYYMMDD', Now);
    frmCheckRepairSpec.ShowModal;

  finally
    frmCheckRepairSpec.Free;
    BBIni.Free;
  end;
  except
  end;

end;

procedure TfrmRepairCust.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  S := showMCal(SpeedButton6, Table1.FieldByName('REPAIR_DATE').AsString);
  if Table1.FieldByName('REPAIR_DATE').AsString <> S then
    if Table1.State in [dsEdit, dsInsert] then
      Table1.FieldByName('REPAIR_DATE').AsString := S
    else
    begin
      Table1.Edit;
      Table1.FieldByName('REPAIR_DATE').AsString := S
    end;
end;

procedure TfrmRepairCust.Query00AfterScroll(DataSet: TDataSet);
var
  S: String;
begin
  Table1.Filtered := false;
  S := 'customer_id = ''' + custID + ''' and bike_number = ''' + Query00.FieldByName('BIKE_NUMBER').AsString + '''';
  Table1.filter := S;
  Table1.Filtered := true;

end;

procedure TfrmRepairCust.BitBtn10Click(Sender: TObject);
var
  i: Integer;
  cmp: TComponent;
  cname: String;
  amtPart, amtLC, amtFinal: Integer;
begin

  if not qryCust.Active then
  begin
    MessageDlg('먼저 고객조회를 하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  try
  try
    frmTaxReceiptCheck := TfrmTaxReceiptCheck.Create(Self);
    BBIni := TIniFile.Create(BBUDDY_INI);

    frmTaxReceiptCheck.edtSerialNo.Text := FormatDateTime('YYYYMMDDHHMMSS', Now);

    frmTaxReceiptCheck.eCustName.Text := qryCust.FieldByName('customer_name').AsString;
    frmTaxReceiptCheck.cust_id := qryCust.FieldByName('customer_id').AsString;

    frmTaxReceiptCheck.eSRegNo.Text := BBIni.ReadString('MemberInfo', 'BIZNO', '');
    frmTaxReceiptCheck.eSTitle.Text := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    frmTaxReceiptCheck.eSName.Text := BBIni.ReadString('MemberInfo', 'CEONAME', '');
    frmTaxReceiptCheck.eSAddr.Text := BBIni.ReadString('MemberInfo', 'UJUSO2', '');
    frmTaxReceiptCheck.eSBTYPE.Text := BBIni.ReadString('MemberInfo', 'BTYPE', '');
    frmTaxReceiptCheck.eSBJONG.Text := BBIni.ReadString('MemberInfo', 'BJONG', '');

    frmTaxReceiptCheck.eDRegNo.Text := qryCust.FieldByName('business_no').AsString;
    frmTaxReceiptCheck.eDTitle.Text := qryCust.FieldByName('company_name').AsString;
    frmTaxReceiptCheck.eDName.Text := qryCust.FieldByName('customer_name').AsString;
    frmTaxReceiptCheck.eDAddr.Text := qryCust.FieldByName('address_detail').AsString;
    frmTaxReceiptCheck.eDBTYPE.Text := qryCust.FieldByName('bus_type').AsString;
    frmTaxReceiptCheck.eDBJONG.Text := qryCust.FieldByName('bus_jong').AsString;

    frmTaxReceiptCheck.rp_date := Table1.FieldByName('repair_date').AsString;
    frmTaxReceiptCheck.rp_seq := Table1.FieldByName('seq').AsString;

    frmTaxReceiptCheck.ShowModal;

  finally
    frmTaxReceiptCheck.Free;
    BBIni.Free;
  end;
  
  except
  end;
end;

end.
