unit uCheckRepairSpec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Qrctrls, uCommonProcs;

type
  TfrmCheckRepairSpec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel31: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    edtBikeRegNo: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    edtBikeOwner: TEdit;
    Panel7: TPanel;
    edtBikeRegDate: TEdit;
    Panel8: TPanel;
    edtBikeName: TEdit;
    edtBikeType: TEdit;
    Panel10: TPanel;
    edtBikeDistance: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    edtOwnerAddr: TEdit;
    Panel13: TPanel;
    edtOwnerTel: TEdit;
    Panel14: TPanel;
    edtVIN: TEdit;
    GroupBox3: TGroupBox;
    Panel15: TPanel;
    Panel16: TPanel;
    GroupBox4: TGroupBox;
    edtShopRegNo: TEdit;
    Panel17: TPanel;
    Panel18: TPanel;
    edtShopName: TEdit;
    Panel20: TPanel;
    edtShopRepairRegNo: TEdit;
    Panel23: TPanel;
    edtShopAddr: TEdit;
    Panel24: TPanel;
    edtShopTel: TEdit;
    Panel21: TPanel;
    Panel22: TPanel;
    edtShopCEO: TEdit;
    Panel27: TPanel;
    GroupBox5: TGroupBox;
    Panel28: TPanel;
    GroupBox6: TGroupBox;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    Panel29: TPanel;
    edtTotalAmt: TEdit;
    Panel32: TPanel;
    edtBeforeTax: TEdit;
    Panel33: TPanel;
    edtGrandTotal: TEdit;
    Panel34: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    edtTask01: TEdit;
    edtPartType01: TEdit;
    edtPartCount01: TEdit;
    edtUnitPrice01: TEdit;
    edtPartSum01: TEdit;
    edtLC01: TEdit;
    edtTask02: TEdit;
    edtPartType02: TEdit;
    edtPartCount02: TEdit;
    edtUnitPrice02: TEdit;
    edtPartSum02: TEdit;
    edtLC02: TEdit;
    edtTask03: TEdit;
    edtPartType03: TEdit;
    edtPartCount03: TEdit;
    edtUnitPrice03: TEdit;
    edtPartSum03: TEdit;
    edtLC03: TEdit;
    edtTask04: TEdit;
    edtPartType04: TEdit;
    edtPartCount04: TEdit;
    edtUnitPrice04: TEdit;
    edtPartSum04: TEdit;
    edtLC04: TEdit;
    edtTask05: TEdit;
    edtPartType05: TEdit;
    edtPartCount05: TEdit;
    edtUnitPrice05: TEdit;
    edtPartSum05: TEdit;
    edtLC05: TEdit;
    edtTask06: TEdit;
    edtPartType06: TEdit;
    edtPartCount06: TEdit;
    edtUnitPrice06: TEdit;
    edtPartSum06: TEdit;
    edtLC06: TEdit;
    edtTask07: TEdit;
    edtPartType07: TEdit;
    edtPartCount07: TEdit;
    edtUnitPrice07: TEdit;
    edtPartSum07: TEdit;
    edtLC07: TEdit;
    edtTask08: TEdit;
    edtPartType08: TEdit;
    edtPartCount08: TEdit;
    edtUnitPrice08: TEdit;
    edtPartSum08: TEdit;
    edtLC08: TEdit;
    Panel41: TPanel;
    edtIssueDate: TEdit;
    edtCEOName: TEdit;
    Panel42: TPanel;
    edtSerialNo: TEdit;
    Panel43: TPanel;
    Panel35: TPanel;
    rgIType: TRadioGroup;
    Panel19: TPanel;
    edtLineSum01: TEdit;
    edtLineSum02: TEdit;
    edtLineSum03: TEdit;
    edtLineSum04: TEdit;
    edtLineSum05: TEdit;
    edtLineSum06: TEdit;
    edtLineSum07: TEdit;
    edtLineSum08: TEdit;
    Panel25: TPanel;
    edtLCSum: TEdit;
    edtVAT: TEdit;
    Panel26: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckRepairSpec: TfrmCheckRepairSpec;

implementation

uses uRptCheckRepairSpec;

{$R *.dfm}

procedure TfrmCheckRepairSpec.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  qcmp, ecmp: TComponent;
begin
  try
    rptCheckRepairSpec := TrptCheckRepairSpec.Create(Self);

    rptCheckRepairSpec.qSerialNo.Caption := edtSerialNo.Text;
    // bike owner
    rptCheckRepairSpec.qBikeRegNo.Caption := edtBikeRegNo.Text;
    rptCheckRepairSpec.qBikeName.Caption := edtBikeName.Text;
    rptCheckRepairSpec.qBikeType.Caption := '('+edtBikeType.Text+')';
    rptCheckRepairSpec.qBikeDistance.Caption := edtBikeDistance.Text + ' km';
    rptCheckRepairSpec.qBikeOwner.Caption := edtBikeOwner.Text;
    rptCheckRepairSpec.qVIN.Caption := edtVIN.Text;
    rptCheckRepairSpec.qBikeRegDate.Caption := getFormattedDate(edtBikeRegDate.Text);
    rptCheckRepairSpec.qOwnerAddr.Caption := edtOwnerAddr.Text;
    rptCheckRepairSpec.qOwnerTel.Caption := '(전화번호 : '+edtOwnerTel.Text+')';

    // repair shop
    rptCheckRepairSpec.qShopRegNo.Caption := edtShopRegNo.Text;
    rptCheckRepairSpec.qShopRepairRegNo.Caption := edtShopRepairRegNo.Text;
    rptCheckRepairSpec.qShopName.Caption := edtShopName.Text;
    rptCheckRepairSpec.qShopCEO.Caption := '('+edtShopCEO.Text+')';
    rptCheckRepairSpec.qShopAddr.Caption := edtShopAddr.Text;
    rptCheckRepairSpec.qShopTel.Caption := '(전화번호 : '+edtShopTel.Text+')';

    // details 
    case rgIType.ItemIndex of
    0: begin
        rptCheckRepairSpec.qsITypeIns.Pen.Mode := pmBlack;
        rptCheckRepairSpec.qsITypeGen.Pen.Mode := pmCopy;
      end;
    1: begin
        rptCheckRepairSpec.qsITypeIns.Pen.Mode := pmCopy;
        rptCheckRepairSpec.qsITypeGen.Pen.Mode := pmBlack;
      end;
    end;

    for i := 0 to 5 do
    begin
      //edtTask01
      ecmp := FindComponent('edtTask0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qTask0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartType01
      ecmp := FindComponent('edtPartType0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qPartType0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartCount01
      ecmp := FindComponent('edtPartCount0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qPartCount0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtUnitPrice01
      ecmp := FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartSum01
      ecmp := FindComponent('edtPartSum0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qPartSum0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtLC01
      ecmp := FindComponent('edtLC0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qLC0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtLineSum01
      ecmp := FindComponent('edtLineSum0'+ IntToStr(i+1));
      qcmp := rptCheckRepairSpec.FindComponent('qLineSum0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;

     end;

    rptCheckRepairSpec.qTotalAmt.Caption := edtTotalAmt.Text;
    rptCheckRepairSpec.qLCSum.Caption := edtLCSum.Text;
    rptCheckRepairSpec.qBeforeTax.Caption := edtBeforeTax.Text;
    rptCheckRepairSpec.qVAT.Caption := edtVAT.Text;
    rptCheckRepairSpec.qGrandTotal.Caption := edtGrandTotal.Text;

    rptCheckRepairSpec.qIssueDate.Caption := getFormattedDate(edtIssueDate.Text);
    rptCheckRepairSpec.qCEOName.Caption := edtCEOName.Text;

    if TBitBtn(Sender).Tag = 0 then
      rptCheckRepairSpec.QR1.Preview
    else if TBitBtn(Sender).Tag = 1 then
      rptCheckRepairSpec.QR1.Print;

  finally
    rptCheckRepairSpec.Free;

  end;
end;

procedure TfrmCheckRepairSpec.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, edtBikeRegDate.Text);
  if edtBikeRegDate.Text <> S then
    edtBikeRegDate.Text := S;

end;

procedure TfrmCheckRepairSpec.SpeedButton1Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton1, edtIssueDate.Text);
  if edtIssueDate.Text <> S then
    edtIssueDate.Text := S;

end;

end.
