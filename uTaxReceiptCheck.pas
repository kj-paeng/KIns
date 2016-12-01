unit uTaxReceiptCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Qrctrls, uCommonProcs, Grids,
  DBGrids, ComCtrls, CheckLst, DB, DBTables;

type
  TfrmTaxReceiptCheck = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel31: TPanel;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    eSRegNo: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    eSTitle: TEdit;
    Panel8: TPanel;
    eSName: TEdit;
    eSBtype: TEdit;
    Panel10: TPanel;
    eSBJong: TEdit;
    Panel12: TPanel;
    eSAddr: TEdit;
    Panel21: TPanel;
    Panel27: TPanel;
    GroupBox5: TGroupBox;
    Panel28: TPanel;
    GroupBox6: TGroupBox;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    Panel34: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    eItem01: TEdit;
    edtPartType01: TEdit;
    edtPartCount01: TEdit;
    edtUnitPrice01: TEdit;
    edtPartSum01: TEdit;
    eTax01: TEdit;
    eItem02: TEdit;
    edtPartType02: TEdit;
    edtPartCount02: TEdit;
    edtUnitPrice02: TEdit;
    edtPartSum02: TEdit;
    eTax02: TEdit;
    eItem03: TEdit;
    edtPartType03: TEdit;
    edtPartCount03: TEdit;
    edtUnitPrice03: TEdit;
    edtPartSum03: TEdit;
    eTax03: TEdit;
    eItem04: TEdit;
    edtPartType04: TEdit;
    edtPartCount04: TEdit;
    edtUnitPrice04: TEdit;
    edtPartSum04: TEdit;
    eTax04: TEdit;
    edtSerialNo: TEdit;
    Panel43: TPanel;
    Panel19: TPanel;
    eEtc01: TEdit;
    eEtc02: TEdit;
    eEtc03: TEdit;
    eEtc04: TEdit;
    Panel4: TPanel;
    GroupBox7: TGroupBox;
    Panel7: TPanel;
    GroupBox8: TGroupBox;
    eDRegNo: TEdit;
    Panel11: TPanel;
    Panel13: TPanel;
    eDTitle: TEdit;
    Panel14: TPanel;
    eDName: TEdit;
    eDBtype: TEdit;
    Panel30: TPanel;
    eDBJong: TEdit;
    Panel44: TPanel;
    eDAddr: TEdit;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel3: TPanel;
    eBTAmt: TEdit;
    eBTCash: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    eBTCheck: TEdit;
    Panel17: TPanel;
    eBTLoan: TEdit;
    Panel18: TPanel;
    eBTNAmt: TEdit;
    eM02: TEdit;
    eM03: TEdit;
    eM04: TEdit;
    eM01: TEdit;
    Panel20: TPanel;
    eDay02: TEdit;
    eDay03: TEdit;
    eDay04: TEdit;
    eDay01: TEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    eWriteDate: TEdit;
    Panel24: TPanel;
    eTAmt: TEdit;
    Panel25: TPanel;
    eTaxAmt: TEdit;
    Panel26: TPanel;
    eETC: TEdit;
    eCustName: TEdit;
    Panel29: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    rgPrintOption: TRadioGroup;
    clRepairList: TCheckListBox;
    qryRList: TQuery;
    qryRListcustomer_id: TStringField;
    qryRListseq: TIntegerField;
    qryRListrepair_date: TStringField;
    qryRListrepair_desc: TStringField;
    dtStart: TDateTimePicker;
    dtEnd: TDateTimePicker;
    Panel35: TPanel;
    qryCalc: TQuery;
    btnTaxCalc: TButton;
    rTaxOption: TRadioGroup;
    qryCalccustomer_id: TStringField;
    qryCalcseq: TIntegerField;
    qryCalcrepair_date: TStringField;
    qryCalcrepair_amt: TFloatField;
    qryParts: TQuery;
    qryPartsSEQ: TIntegerField;
    qryPartsCUSTOMER_ID: TStringField;
    qryPartsPART_SEQ: TIntegerField;
    qryPartsPART_NAME: TStringField;
    qryPartsPART_COUNT: TFloatField;
    qryPartsUNIT_PRICE: TFloatField;
    qryPartsLABOUR_CHARGE: TFloatField;
    qryPartsDISCOUNT: TFloatField;
    qryPartsLIST_PRICE: TFloatField;
    qryPartsVAT: TFloatField;
    qryPartsTOTAL_AMT: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure rgPrintOptionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnTaxCalcClick(Sender: TObject);
  private
    { Private declarations }

    procedure loadRList;
    procedure clearFields;

  public
    { Public declarations }
    cust_id: String;
    rp_date, rp_seq: String;
    
  end;

var
  frmTaxReceiptCheck: TfrmTaxReceiptCheck;

implementation

uses uRptTaxReceipt;

{$R *.dfm}

procedure TfrmTaxReceiptCheck.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  qcmp, ecmp: TComponent;
  S: String;
begin
  try
    rptTaxReceipt := TrptTaxReceipt.Create(Self);

    //공급자 등록번호
    rptTaxReceipt.C1.Caption := eSRegNo.Text;
    rptTaxReceipt.CC1.Caption := eSRegNo.Text;
    //공급자 상호
    rptTaxReceipt.D1.Caption := eSTitle.Text;
    rptTaxReceipt.D3.Caption := eSName.Text;
    rptTaxReceipt.DD1.Caption := eSTitle.Text;
    rptTaxReceipt.DD3.Caption := eSName.Text;
    //공급자 사업장주소
    rptTaxReceipt.E1.Caption := eSAddr.Text;
    rptTaxReceipt.EE1.Caption := eSAddr.Text;
    //공급자 업태
    rptTaxReceipt.F1.Caption := eSBtype.Text;
    rptTaxReceipt.FF1.Caption := eSBtype.Text;
    //공급자 종목
    rptTaxReceipt.F2.Caption := eSBJong.Text;
    rptTaxReceipt.FF2.Caption := eSBJong.Text;
    //공급자 작성연월일
    rptTaxReceipt.F2.Caption := eSBJong.Text;
    rptTaxReceipt.FF2.Caption := eSBJong.Text;


    //공급받는자 등록번호
    S := EraseStr(eDRegNo.Text, '-');
    rptTaxReceipt.C2.Caption := Copy(S, 1, 1);
    rptTaxReceipt.C3.Caption := Copy(S, 2, 1);
    rptTaxReceipt.C4.Caption := Copy(S, 3, 1);
    rptTaxReceipt.C5.Caption := Copy(S, 4, 1);
    rptTaxReceipt.C6.Caption := Copy(S, 5, 1);
    rptTaxReceipt.C7.Caption := Copy(S, 6, 1);
    rptTaxReceipt.C8.Caption := Copy(S, 7, 1);
    rptTaxReceipt.C9.Caption := Copy(S, 8, 1);
    rptTaxReceipt.C10.Caption := Copy(S, 9, 1);
    rptTaxReceipt.C11.Caption := Copy(S, 10, 1);

    rptTaxReceipt.CC2.Caption := Copy(S, 1, 1);
    rptTaxReceipt.CC3.Caption := Copy(S, 2, 1);
    rptTaxReceipt.CC4.Caption := Copy(S, 3, 1);
    rptTaxReceipt.CC5.Caption := Copy(S, 4, 1);
    rptTaxReceipt.CC6.Caption := Copy(S, 5, 1);
    rptTaxReceipt.CC7.Caption := Copy(S, 6, 1);
    rptTaxReceipt.CC8.Caption := Copy(S, 7, 1);
    rptTaxReceipt.CC9.Caption := Copy(S, 8, 1);
    rptTaxReceipt.CC10.Caption := Copy(S, 9, 1);
    rptTaxReceipt.CC11.Caption := Copy(S, 10, 1);

    //공급받는자 상호
    rptTaxReceipt.D4.Caption := eDTitle.Text;
    rptTaxReceipt.D6.Caption := eDName.Text;
    rptTaxReceipt.DD4.Caption := eDTitle.Text;
    rptTaxReceipt.DD6.Caption := eDName.Text;
    //공급받는자 사업장주소
    rptTaxReceipt.E2.Caption := eDAddr.Text;
    rptTaxReceipt.EE2.Caption := eDAddr.Text;
    //공급받는자 업태
    rptTaxReceipt.F3.Caption := eDBType.Text;
    rptTaxReceipt.FF3.Caption := eDBtype.Text;
    //공급받는자 종목
    rptTaxReceipt.F4.Caption := eDBJong.Text;
    rptTaxReceipt.FF4.Caption := eDBJong.Text;
    //작성일
    S := EraseStr(EraseStr(eWriteDate.Text, '-'), '/');
    rptTaxReceipt.G1.Caption := Copy(S, 3, 2);
    rptTaxReceipt.G2.Caption := Copy(S, 5, 2);
    rptTaxReceipt.G3.Caption := Copy(S, 7, 2);
    rptTaxReceipt.GG1.Caption := Copy(S, 3, 2);
    rptTaxReceipt.GG2.Caption := Copy(S, 5, 2);
    rptTaxReceipt.GG3.Caption := Copy(S, 7, 2);
    //공급가액
    S := LPad(EraseStr(EraseStr(eTAmt.Text, ','), '\'), ' ', 11);
    rptTaxReceipt.G4.Caption := IntToStr(11 - Length(EraseStr(EraseStr(eTAmt.Text, ','), '\')));
    rptTaxReceipt.G5.Caption := Copy(S, 1, 1);
    rptTaxReceipt.G6.Caption := Copy(S, 2, 1);
    rptTaxReceipt.G7.Caption := Copy(S, 3, 1);
    rptTaxReceipt.G8.Caption := Copy(S, 4, 1);
    rptTaxReceipt.G9.Caption := Copy(S, 5, 1);
    rptTaxReceipt.G10.Caption := Copy(S, 6, 1);
    rptTaxReceipt.G11.Caption := Copy(S, 7, 1);
    rptTaxReceipt.G12.Caption := Copy(S, 8, 1);
    rptTaxReceipt.G13.Caption := Copy(S, 9, 1);
    rptTaxReceipt.G14.Caption := Copy(S, 10, 1);
    rptTaxReceipt.G15.Caption := Copy(S, 11, 1);

    rptTaxReceipt.GG4.Caption := IntToStr(11 - Length(EraseStr(EraseStr(eTAmt.Text, ','), '\')));
    rptTaxReceipt.GG5.Caption := Copy(S, 1, 1);
    rptTaxReceipt.GG6.Caption := Copy(S, 2, 1);
    rptTaxReceipt.GG7.Caption := Copy(S, 3, 1);
    rptTaxReceipt.GG8.Caption := Copy(S, 4, 1);
    rptTaxReceipt.GG9.Caption := Copy(S, 5, 1);
    rptTaxReceipt.GG10.Caption := Copy(S, 6, 1);
    rptTaxReceipt.GG11.Caption := Copy(S, 7, 1);
    rptTaxReceipt.GG12.Caption := Copy(S, 8, 1);
    rptTaxReceipt.GG13.Caption := Copy(S, 9, 1);
    rptTaxReceipt.GG14.Caption := Copy(S, 10, 1);
    rptTaxReceipt.GG15.Caption := Copy(S, 11, 1);
    //세액
    S := LPad(EraseStr(EraseStr(eTaxAmt.Text, ','), '\'), ' ', 10);
    rptTaxReceipt.G16.Caption := Copy(S, 1, 1);
    rptTaxReceipt.G17.Caption := Copy(S, 2, 1);
    rptTaxReceipt.G18.Caption := Copy(S, 3, 1);
    rptTaxReceipt.G19.Caption := Copy(S, 4, 1);
    rptTaxReceipt.G20.Caption := Copy(S, 5, 1);
    rptTaxReceipt.G21.Caption := Copy(S, 6, 1);
    rptTaxReceipt.G22.Caption := Copy(S, 7, 1);
    rptTaxReceipt.G23.Caption := Copy(S, 8, 1);
    rptTaxReceipt.G24.Caption := Copy(S, 9, 1);
    rptTaxReceipt.G25.Caption := Copy(S, 10, 1);

    rptTaxReceipt.GG16.Caption := Copy(S, 1, 1);
    rptTaxReceipt.GG17.Caption := Copy(S, 2, 1);
    rptTaxReceipt.GG18.Caption := Copy(S, 3, 1);
    rptTaxReceipt.GG19.Caption := Copy(S, 4, 1);
    rptTaxReceipt.GG20.Caption := Copy(S, 5, 1);
    rptTaxReceipt.GG21.Caption := Copy(S, 6, 1);
    rptTaxReceipt.GG22.Caption := Copy(S, 7, 1);
    rptTaxReceipt.GG23.Caption := Copy(S, 8, 1);
    rptTaxReceipt.GG24.Caption := Copy(S, 9, 1);
    rptTaxReceipt.GG25.Caption := Copy(S, 10, 1);
    //품목 1
    rptTaxReceipt.H1.Caption := eM01.Text;
    rptTaxReceipt.H2.Caption := eDay01.Text;
    rptTaxReceipt.H3.Caption := eItem01.Text;
    rptTaxReceipt.H4.Caption := edtPartType01.Text;
    rptTaxReceipt.H5.Caption := edtPartCount01.Text;
    rptTaxReceipt.H6.Caption := edtUnitPrice01.Text;
    rptTaxReceipt.H7.Caption := edtPartSum01.Text;
    rptTaxReceipt.H8.Caption := eTax01.Text;
    rptTaxReceipt.H9.Caption := eEtc01.Text;

    rptTaxReceipt.HH1.Caption := eM01.Text;
    rptTaxReceipt.HH2.Caption := eDay01.Text;
    rptTaxReceipt.HH3.Caption := eItem01.Text;
    rptTaxReceipt.HH4.Caption := edtPartType01.Text;
    rptTaxReceipt.HH5.Caption := edtPartCount01.Text;
    rptTaxReceipt.HH6.Caption := edtUnitPrice01.Text;
    rptTaxReceipt.HH7.Caption := edtPartSum01.Text;
    rptTaxReceipt.HH8.Caption := eTax01.Text;
    rptTaxReceipt.HH9.Caption := eEtc01.Text;
    //품목 2
    rptTaxReceipt.K1.Caption := eM02.Text;
    rptTaxReceipt.K2.Caption := eDay02.Text;
    rptTaxReceipt.K3.Caption := eItem02.Text;
    rptTaxReceipt.K4.Caption := edtPartType02.Text;
    rptTaxReceipt.K5.Caption := edtPartCount02.Text;
    rptTaxReceipt.K6.Caption := edtUnitPrice02.Text;
    rptTaxReceipt.K7.Caption := edtPartSum02.Text;
    rptTaxReceipt.K8.Caption := eTax02.Text;
    rptTaxReceipt.K9.Caption := eEtc02.Text;

    rptTaxReceipt.KK1.Caption := eM02.Text;
    rptTaxReceipt.KK2.Caption := eDay02.Text;
    rptTaxReceipt.KK3.Caption := eItem02.Text;
    rptTaxReceipt.KK4.Caption := edtPartType02.Text;
    rptTaxReceipt.KK5.Caption := edtPartCount02.Text;
    rptTaxReceipt.KK6.Caption := edtUnitPrice02.Text;
    rptTaxReceipt.KK7.Caption := edtPartSum02.Text;
    rptTaxReceipt.KK8.Caption := eTax02.Text;
    rptTaxReceipt.KK9.Caption := eEtc02.Text;
    //품목 3
    rptTaxReceipt.L1.Caption := eM03.Text;
    rptTaxReceipt.L2.Caption := eDay03.Text;
    rptTaxReceipt.L3.Caption := eItem03.Text;
    rptTaxReceipt.L4.Caption := edtPartType03.Text;
    rptTaxReceipt.L5.Caption := edtPartCount03.Text;
    rptTaxReceipt.L6.Caption := edtUnitPrice03.Text;
    rptTaxReceipt.L7.Caption := edtPartSum03.Text;
    rptTaxReceipt.L8.Caption := eTax03.Text;
    rptTaxReceipt.L9.Caption := eEtc03.Text;

    rptTaxReceipt.LL1.Caption := eM03.Text;
    rptTaxReceipt.LL2.Caption := eDay03.Text;
    rptTaxReceipt.LL3.Caption := eItem03.Text;
    rptTaxReceipt.LL4.Caption := edtPartType03.Text;
    rptTaxReceipt.LL5.Caption := edtPartCount03.Text;
    rptTaxReceipt.LL6.Caption := edtUnitPrice03.Text;
    rptTaxReceipt.LL7.Caption := edtPartSum03.Text;
    rptTaxReceipt.LL8.Caption := eTax03.Text;
    rptTaxReceipt.LL9.Caption := eEtc03.Text;
    //품목 4
    rptTaxReceipt.M1.Caption := eM04.Text;
    rptTaxReceipt.M2.Caption := eDay04.Text;
    rptTaxReceipt.M3.Caption := eItem04.Text;
    rptTaxReceipt.M4.Caption := edtPartType04.Text;
    rptTaxReceipt.M5.Caption := edtPartCount04.Text;
    rptTaxReceipt.M6.Caption := edtUnitPrice04.Text;
    rptTaxReceipt.M7.Caption := edtPartSum04.Text;
    rptTaxReceipt.M8.Caption := eTax04.Text;
    rptTaxReceipt.M9.Caption := eEtc04.Text;

    rptTaxReceipt.MM1.Caption := eM04.Text;
    rptTaxReceipt.MM2.Caption := eDay04.Text;
    rptTaxReceipt.MM3.Caption := eItem04.Text;
    rptTaxReceipt.MM4.Caption := edtPartType04.Text;
    rptTaxReceipt.MM5.Caption := edtPartCount04.Text;
    rptTaxReceipt.MM6.Caption := edtUnitPrice04.Text;
    rptTaxReceipt.MM7.Caption := edtPartSum04.Text;
    rptTaxReceipt.MM8.Caption := eTax04.Text;
    rptTaxReceipt.MM9.Caption := eEtc04.Text;
    //합계금액
    rptTaxReceipt.N1.Caption := eBTAmt.Text;
    rptTaxReceipt.NN1.Caption := eBTAmt.Text;
    //현금
    rptTaxReceipt.N2.Caption := eBTCash.Text;
    rptTaxReceipt.NN2.Caption := eBTCash.Text;
    //수표
    rptTaxReceipt.N3.Caption := eBTCheck.Text;
    rptTaxReceipt.NN3.Caption := eBTCheck.Text;
    //어음
    rptTaxReceipt.N4.Caption := eBTLoan.Text;
    rptTaxReceipt.NN4.Caption := eBTLoan.Text;
    //외상미수금
    rptTaxReceipt.N5.Caption := eBTNAmt.Text;
    rptTaxReceipt.NN5.Caption := eBTNAmt.Text;


    if TBitBtn(Sender).Tag = 0 then
      rptTaxReceipt.QR1.Preview
    else if TBitBtn(Sender).Tag = 1 then
      rptTaxReceipt.QR1.Print;

  finally
    rptTaxReceipt.Free;

  end;
end;

procedure TfrmTaxReceiptCheck.rgPrintOptionClick(Sender: TObject);
begin
  case rgPrintOption.ItemIndex of
  0:
    begin
      dtStart.Enabled := false;
      dtEnd.Enabled := false;
    end;
  1:
    begin
      dtStart.Enabled := true;
      dtEnd.Enabled := true;
    end;
  end;
end;

procedure TfrmTaxReceiptCheck.loadRList;
var
  i: Integer;
  S: String;

begin
  clRepairList.Items.Clear;
  qryRList.Close;
  qryRList.ParamByName('customer_id').AsString := cust_id;
  qryRList.ParamByName('rdstart').AsString := FormatDateTime('YYYYMMDD', AddMonth(Now, -1));
  qryRList.ParamByName('rdend').AsString := FormatDateTime('YYYYMMDD', Now);

  qryRList.Open;

  for i := 0 to qryRList.RecordCount - 1 do
  begin
    S := qryRList.FieldByName('repair_date').AsString + ' [' + qryRList.FieldByName('seq').AsString + ']' + qryRList.FieldByName('repair_desc').AsString;

    clRepairList.Items.Add(S);

    if (qryRList.FieldByName('repair_date').AsString = rp_date)
      and (qryRList.FieldByName('seq').AsString = rp_seq) then
      clRepairList.Checked[i] := true;


    qryRList.Next;
  end;

end;

procedure TfrmTaxReceiptCheck.FormCreate(Sender: TObject);
begin
  rgPrintOption.ItemIndex := 0;
  dtStart.DateTime := now;
  dtEnd.DateTime := now;
  dtStart.Enabled := false;
  dtEnd.Enabled := false;

  eWriteDate.Text := FormatDateTime('YYYYMMDD', Now);

end;

procedure TfrmTaxReceiptCheck.FormActivate(Sender: TObject);
begin
  loadRList;
  btnTaxCalcClick(nil);
end;

procedure TfrmTaxReceiptCheck.clearFields;
begin
  eM01.Text := '';   eM02.Text := ''; eM03.Text := ''; eM04.Text := '';
  eDay01.Text := ''; eDay02.Text := ''; eDay03.Text := ''; eDay04.Text := '';
  eItem01.Text := ''; eItem02.Text := ''; eItem03.Text := ''; eItem04.Text := '';
  edtPartCount01.Text := '';edtPartCount02.Text := ''; edtPartCount03.Text := ''; edtPartCount04.Text := '';
  edtUnitPrice01.Text := ''; edtUnitPrice02.Text := ''; edtUnitPrice03.Text := ''; edtUnitPrice04.Text := '';
  edtPartSum01.Text := '';  edtPartSum02.Text := ''; edtPartSum03.Text := ''; edtPartSum04.Text := '';
  eTax01.Text := '';  eTax02.Text := ''; eTax03.Text := ''; eTax04.Text := '';

end;

procedure TfrmTaxReceiptCheck.btnTaxCalcClick(Sender: TObject);
var
  i, k, checkItemNum: Integer;
  TotAmt, VatAmt, OtherAmt: Double;
  S: String;
begin

  clearFields;

  TotAmt := 0;
  checkItemNum := 0;
  OtherAmt := 0;

  for i := 0 to clRepairList.Items.Count - 1 do
  begin
    if clRepairList.Checked[i] then
    begin
      inc(checkItemNum);
      try
        S := clRepairList.Items[i];
        qryCalc.Close;
        qryCalc.ParamByName('customer_id').AsString := cust_id;
        qryCalc.ParamByName('repair_date').AsString := Copy(S, 1, 8);
        qryCalc.ParamByName('seq').AsInteger := StrToInt(WithinString(S, '[', ']'));
        qryCalc.Open;

        TotAmt := TotAmt + qryCalc.FieldByName('repair_amt').AsFloat;

      except

      end;
    end;
  end;

  if rTaxOption.ItemIndex = 0 then
  begin
    eTAmt.Text := FloatToStr(round(TotAmt / 1.1));
    eTaxAmt.Text := FloatToStr(round(TotAmt / 1.1 * 0.1));
    eBTAmt.Text := FloatToStr(round(TotAmt));
  end else if rTaxOption.ItemIndex = 1 then
  begin
    eTAmt.Text := FloatToStr(round(TotAmt * 1));
    eTaxAmt.Text := FloatToStr(round(TotAmt * 0.1));
    eBTAmt.Text := FloatToStr(round(TotAmt * 1.1));

  end else if rTaxOption.ItemIndex = 2 then
  begin
    eTAmt.Text := FloatToStr(round(TotAmt * 1));
    eTaxAmt.Text := FloatToStr(0);
    eBTAmt.Text := FloatToStr(round(TotAmt));

  end;

  if checkItemNum = 1 then
  begin
    qryParts.Close;
    qryParts.ParamByName('customer_id').AsString := cust_id;
    qryParts.ParamByName('seq').AsInteger := qryCalc.FieldByName('seq').AsInteger;
    qryParts.Open;

    for i := 0 to qryParts.RecordCount - 1 do
    begin
      if i = 0 then
      begin
        eM01.Text := Copy(S, 5, 2);
        eDay01.Text := Copy(S, 7, 2);
        eItem01.Text := qryParts.FieldByName('part_name').AsString;
        //edtPartCount01.Text := qryParts.FieldByName('part_count').AsString;
        //edtUnitPrice01.Text := qryParts.FieldByName('unit_price').AsString;

        TotAmt := qryParts.FieldByName('total_amt').AsFloat;
        if rTaxOption.ItemIndex = 0 then
        begin
          edtPartSum01.Text := FloatToStr(round(TotAmt / 1.1));
          eTax01.Text := FloatToStr(round(TotAmt / 1.1 * 0.1));
        end else if rTaxOption.ItemIndex = 1 then
        begin
          edtPartSum01.Text := FloatToStr(round(TotAmt * 1));
          eTax01.Text := FloatToStr(round(TotAmt * 0.1));
        end else if rTaxOption.ItemIndex = 2 then
        begin
          edtPartSum01.Text := FloatToStr(round(TotAmt));
          eTax01.Text := FloatToStr(round(TotAmt * 0));
        end;
      end;

      if i = 1 then
      begin
        eM02.Text := Copy(S, 5, 2);
        eDay02.Text := Copy(S, 7, 2);
        eItem02.Text := qryParts.FieldByName('part_name').AsString;
        //edtPartCount02.Text := qryParts.FieldByName('part_count').AsString;
        //edtUnitPrice02.Text := qryParts.FieldByName('unit_price').AsString;

        TotAmt := qryParts.FieldByName('total_amt').AsFloat;
        if rTaxOption.ItemIndex = 0 then
        begin
          edtPartSum02.Text := FloatToStr(round(TotAmt / 1.1));
          eTax02.Text := FloatToStr(round(TotAmt / 1.1 * 0.1));
        end else if rTaxOption.ItemIndex = 1 then
        begin
          edtPartSum02.Text := FloatToStr(round(TotAmt * 1));
          eTax02.Text := FloatToStr(round(TotAmt * 0.1));
        end else if rTaxOption.ItemIndex = 2 then
        begin
          edtPartSum02.Text := FloatToStr(round(TotAmt));
          eTax02.Text := FloatToStr(round(TotAmt * 0));
        end;
      end;

      if i = 2 then
      begin
        eM03.Text := Copy(S, 5, 2);
        eDay03.Text := Copy(S, 7, 2);
        eItem03.Text := qryParts.FieldByName('part_name').AsString;
        //edtPartCount03.Text := qryParts.FieldByName('part_count').AsString;
        //edtUnitPrice03.Text := qryParts.FieldByName('unit_price').AsString;

        TotAmt := qryParts.FieldByName('total_amt').AsFloat;
        if rTaxOption.ItemIndex = 0 then
        begin
          edtPartSum03.Text := FloatToStr(round(TotAmt / 1.1));
          eTax03.Text := FloatToStr(round(TotAmt / 1.1 * 0.1));
        end else if rTaxOption.ItemIndex = 1 then
        begin
          edtPartSum03.Text := FloatToStr(round(TotAmt * 1));
          eTax03.Text := FloatToStr(round(TotAmt * 0.1));
        end else if rTaxOption.ItemIndex = 2 then
        begin
          edtPartSum03.Text := FloatToStr(round(TotAmt));
          eTax03.Text := FloatToStr(TotAmt * 0);
        end;
      end;

      if i >= 3 then
      begin
        OtherAmt := OtherAmt + qryParts.FieldByName('total_amt').AsFloat;
      end;

      qryParts.Next;
    end;

    if qryParts.RecordCount >=4 then
    begin
      eM04.Text := Copy(S, 5, 2);
      eDay04.Text := Copy(S, 7, 2);
      eItem04.Text := '기타';
      edtPartCount04.Text := '';
      edtUnitPrice04.Text := '';

      if rTaxOption.ItemIndex = 0 then
      begin
        edtPartSum04.Text := FloatToStr(round(OtherAmt / 1.1));
        eTax04.Text := FloatToStr(round(OtherAmt / 1.1 * 0.1));
      end else if rTaxOption.ItemIndex = 1 then
      begin
        edtPartSum04.Text := FloatToStr(round(OtherAmt * 1));
        eTax04.Text := FloatToStr(round(OtherAmt * 0.1));
      end else if rTaxOption.ItemIndex = 2 then
      begin
        edtPartSum04.Text := FloatToStr(round(OtherAmt));
        eTax04.Text := FloatToStr(OtherAmt * 0);
      end;
    end;

  end
  else if checkItemNum > 1 then
  begin

    eM01.Text := Copy(S, 5, 2);
    eDay01.Text := Copy(S, 7, 2);
    eItem01.Text := '정비 외';
    edtPartCount01.Text := '';
    edtUnitPrice01.Text := '';

    try
      TotAmt := StrToFloat(eBTAmt.Text);
    except
    end;
    if rTaxOption.ItemIndex = 0 then
    begin
      edtPartSum01.Text := FloatToStr(round(TotAmt / 1.1));
      eTax01.Text := FloatToStr(round(TotAmt / 1.1 * 0.1));
    end else if rTaxOption.ItemIndex = 1 then
    begin
      edtPartSum01.Text := FloatToStr(round(TotAmt * 1));
      eTax01.Text := FloatToStr(round(TotAmt * 0.1));
    end else if rTaxOption.ItemIndex = 2 then
    begin
      edtPartSum01.Text := FloatToStr(round(TotAmt));
      eTax01.Text := FloatToStr(TotAmt * 0);
    end;
  end;
end;

end.
