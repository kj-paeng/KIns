unit uRepairReceipt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Qrctrls, uCommonProcs;

type
  TfrmRepairReceipt = class(TForm)
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
    edtOwnerReqDate: TEdit;
    GroupBox3: TGroupBox;
    Panel15: TPanel;
    Panel16: TPanel;
    GroupBox4: TGroupBox;
    edtShopRegNo: TEdit;
    Panel17: TPanel;
    Panel18: TPanel;
    edtShopName: TEdit;
    Panel19: TPanel;
    edtShopCompDate: TEdit;
    Panel20: TPanel;
    edtShopRepairRegNo: TEdit;
    Panel23: TPanel;
    edtShopAddr: TEdit;
    Panel24: TPanel;
    edtShopTel: TEdit;
    Panel25: TPanel;
    edtShopOutDate: TEdit;
    Panel26: TPanel;
    edtShopMechanic: TEdit;
    Panel21: TPanel;
    Panel22: TPanel;
    edtShopCEO: TEdit;
    Panel27: TPanel;
    GroupBox5: TGroupBox;
    Panel28: TPanel;
    GroupBox6: TGroupBox;
    edtFixDesc: TEdit;
    Panel30: TPanel;
    Panel35: TPanel;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    rgConsent: TRadioGroup;
    Panel29: TPanel;
    edtTotalAmt: TEdit;
    Panel32: TPanel;
    edtVAT: TEdit;
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
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepairReceipt: TfrmRepairReceipt;

implementation

uses uRptRepairReceipt;

{$R *.dfm}

procedure TfrmRepairReceipt.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  qcmp, ecmp: TComponent;
begin
  try
    rptRepairReceipt := TrptRepairReceipt.Create(Self);
    // bike owner
    rptRepairReceipt.qBikeDistance.Caption := edtBikeDistance.Text + ' km';
    rptRepairReceipt.qBikeRegNo.Caption := edtBikeRegNo.Text;
    rptRepairReceipt.qBikeName.Caption := edtBikeName.Text;
    rptRepairReceipt.qBikeType.Caption := '('+edtBikeType.Text+')';
    rptRepairReceipt.qBikeOwner.Caption := edtBikeOwner.Text;
    rptRepairReceipt.qOwnerAddr.Caption := edtOwnerAddr.Text;
    rptRepairReceipt.qOwnerTel.Caption := '(전화번호 : '+edtOwnerTel.Text+')';
    rptRepairReceipt.qBikeRegDate.Caption := getFormattedDate(edtBikeRegDate.Text);
    rptRepairReceipt.qOwnerReqDate.Caption := getFormattedDate(edtOwnerReqDate.Text);

    // repair shop
    rptRepairReceipt.qShopRegNo.Caption := edtShopRegNo.Text;
    rptRepairReceipt.qShopAddr.Caption := edtShopAddr.Text;
    rptRepairReceipt.qShopRepairRegNo.Caption := edtShopRepairRegNo.Text;
    rptRepairReceipt.qShopName.Caption := edtShopName.Text;
    rptRepairReceipt.qShopCEO.Caption := '('+edtShopCEO.Text+')';
    rptRepairReceipt.qShopTel.Caption := '(전화번호 : '+edtShopTel.Text+')';
    rptRepairReceipt.qShopCompDate.Caption := getFormattedDate(edtShopCompDate.Text);
    rptRepairReceipt.qShopOutDate.Caption := getFormattedDate(edtShopOutDate.Text);
    rptRepairReceipt.qShopMechanic.Caption := edtShopMechanic.Text;

    // details
    rptRepairReceipt.qFixDesc.Caption := edtFixDesc.Text;
    case rgConsent.ItemIndex of
    0: begin
        rptRepairReceipt.qsConsent.Pen.Mode := pmBlack;
        rptRepairReceipt.qsConsentNo.Pen.Mode := pmCopy;
      end;
    1: begin
        rptRepairReceipt.qsConsent.Pen.Mode := pmCopy;
        rptRepairReceipt.qsConsentNo.Pen.Mode := pmBlack;
      end;
    end;

    for i := 0 to 5 do
    begin
      //edtTask01
      ecmp := FindComponent('edtTask0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('qTask0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartType01
      ecmp := FindComponent('edtPartType0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('qPartType0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartCount01
      ecmp := FindComponent('edtPartCount0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('qPartCount0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtUnitPrice01
      ecmp := FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('edtUnitPrice0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtPartSum01
      ecmp := FindComponent('edtPartSum0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('qPartSum0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
      //edtLC01
      ecmp := FindComponent('edtLC0'+ IntToStr(i+1));
      qcmp := rptRepairReceipt.FindComponent('qLC0'+ IntToStr(i+1));
      if Assigned(ecmp) then
        if Assigned(qcmp) then
          TQRLabel(qcmp).Caption := TEdit(ecmp).Text;
     end;

    rptRepairReceipt.qTotalAmt.Caption := edtTotalAmt.Text;
    rptRepairReceipt.qVAT.Caption := edtVAT.Text;
    rptRepairReceipt.qGrandTotal.Caption := edtGrandTotal.Text;
    rptRepairReceipt.qIssueDate.Caption := getFormattedDate(edtIssueDate.Text);
    rptRepairReceipt.qCEOName.Caption := edtCEOName.Text;

    if TBitBtn(Sender).Tag = 0 then
      rptRepairReceipt.QR1.Preview
    else if TBitBtn(Sender).Tag = 1 then
      rptRepairReceipt.QR1.Print;

  finally
    rptRepairReceipt.Free;

  end;
end;

procedure TfrmRepairReceipt.SpeedButton3Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton3, edtBikeRegDate.Text);
  if edtBikeRegDate.Text <> S then
    edtBikeRegDate.Text := S;

end;

procedure TfrmRepairReceipt.SpeedButton4Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton4, edtOwnerReqDate.Text);
  if edtOwnerReqDate.Text <> S then
    edtOwnerReqDate.Text := S;

end;

procedure TfrmRepairReceipt.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, edtShopCompDate.Text);
  if edtShopCompDate.Text <> S then
    edtShopCompDate.Text := S;

end;

procedure TfrmRepairReceipt.SpeedButton1Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton1, edtShopOutDate.Text);
  if edtShopOutDate.Text <> S then
    edtShopOutDate.Text := S;

end;

procedure TfrmRepairReceipt.SpeedButton2Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton2, edtIssueDate.Text);
  if edtIssueDate.Text <> S then
    edtIssueDate.Text := S;

end;

end.
