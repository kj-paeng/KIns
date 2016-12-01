unit uAutoInsApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc, Buttons, StdCtrls, ExtCtrls, uCommonProcs;

type
  TfrmAutoInsApp = class(TForm)
    XD: TXMLDocument;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    eINSUREDNAME: TEdit;
    eJUMIN1: TEdit;
    ePOLICY_SDATE: TEdit;
    eJUMIN2: TEdit;
    ePOLICY_EDATE: TEdit;
    Label5: TLabel;
    ePLATENUM: TEdit;
    Label6: TLabel;
    cCurrent_insurer: TComboBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    eINSURED_ZIP: TEdit;
    eINSURED_ADDR_SIGUN: TEdit;
    eINSURED_ADDR_DETAIL: TEdit;
    Edit9: TEdit;
    eINSURED_TEL: TEdit;
    Label3: TLabel;
    eINSURED_CELL: TEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    eCAR_NAME: TEdit;
    eCAR_YEAR: TEdit;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    eCONTRACTOR_ZIP: TEdit;
    eCONTRACTOR_ADDR_SIGUN: TEdit;
    eCONTRACTOR_ADDR_DETAIL: TEdit;
    eCONTRACTOR_EMAIL: TEdit;
    eCONTRACTOR_TEL: TEdit;
    eCONTRACTOR_CELL: TEdit;
    Label18: TLabel;
    eCONTRACTOR_RELATION: TEdit;
    Label21: TLabel;
    eCONTRACTOR_NUMBER: TEdit;
    CheckBox1: TCheckBox;
    Label22: TLabel;
    eCONTRACTOR_NAME: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox5: TGroupBox;
    rdRequired: TRadioButton;
    rdComprehensive: TRadioButton;
    Label26: TLabel;
    Label27: TLabel;
    cb_driverlimit: TComboBox;
    cb_agelimit: TComboBox;
    Panel4: TPanel;
    Label28: TLabel;
    cb_daein_one: TComboBox;
    cb_daein_two: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    cb_daemul: TComboBox;
    Label31: TLabel;
    cb_sinche: TComboBox;
    cb_uninsured: TComboBox;
    Label32: TLabel;
    cb_jacha: TComboBox;
    Label33: TLabel;
    cb_emergency: TComboBox;
    Label34: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure rdComprehensiveClick(Sender: TObject);
    procedure rdRequiredClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure parseXML;
    procedure setPanel4(v: Boolean);

  public
    { Public declarations }
  end;

var
  frmAutoInsApp: TfrmAutoInsApp;

implementation

uses uZipPopup;

{$R *.dfm}

procedure TfrmAutoInsApp.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAutoInsApp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAutoInsApp := nil;
  Action := caFree;
end;

procedure TfrmAutoInsApp.BitBtn6Click(Sender: TObject);
var
  sl: TStringList;
begin

  try
    sl := TStringList.Create;

    sl.Add('insuredname='+einsuredname.Text);
    sl.Add('jumin1='+ejumin1.Text);
    sl.Add('jumin2='+ejumin2.Text);
    sl.Add('policy_sdate='+epolicy_sdate.Text);
    sl.Add('policy_edate='+epolicy_edate.Text);
    sl.Add('platenum='+eplatenum.Text);
    sl.Add('current_insurer='+cCurrent_insurer.Items[cCurrent_insurer.ItemIndex]);
    sl.Add('car_name='+ecar_name.Text);
    sl.Add('car_year='+ecar_year.Text);
    sl.Add('insured_zip='+einsured_zip.Text);
    sl.Add('insured_addr_sigun='+einsured_addr_sigun.Text);
    sl.Add('insured_addr_detail='+einsured_addr_detail.Text);
    sl.Add('insured_tel='+einsured_tel.Text);
    sl.Add('insured_cell='+einsured_cell.Text);
    sl.Add('contractor_name='+econtractor_name.Text);
    sl.Add('contractor_number='+econtractor_number.Text);
    sl.Add('contractor_relation='+econtractor_relation.Text);
    sl.Add('contractor_cell='+econtractor_cell.Text);
    sl.Add('contractor_tel='+econtractor_tel.Text);
    sl.Add('contractor_email='+econtractor_email.Text);
    sl.Add('contractor_zip='+econtractor_zip.Text);
    sl.Add('contractor_addr_sigun='+econtractor_addr_sigun.Text);
    sl.Add('contractor_addr_detail='+econtractor_addr_detail.Text);
    sl.Add('dealer_id='+GetDealerID);

    if rdRequired.Checked then
    begin
      sl.Add('isrequired=Y');
    end
    else
    begin
      sl.Add('isrequired=N');
      sl.Add('daein_one='+cb_daein_one.Items[cb_daein_one.ItemIndex]);
      sl.Add('daein_two='+cb_daein_two.Items[cb_daein_two.ItemIndex]);
      sl.Add('daemul='+cb_daemul.Items[cb_daemul.ItemIndex]);
      sl.Add('sinche='+cb_sinche.Items[cb_sinche.ItemIndex]);
      sl.Add('uninsured='+cb_uninsured.Items[cb_uninsured.ItemIndex]);
      sl.Add('jacha='+cb_jacha.Items[cb_jacha.ItemIndex]);
      sl.Add('emergency='+cb_emergency.Items[cb_emergency.ItemIndex]);
    end;

    sl.Add('driverlimit='+cb_driverlimit.Items[cb_driverlimit.ItemIndex]);
    sl.Add('agelimit='+cb_agelimit.Items[cb_agelimit.ItemIndex]);

    CallService(SET_AUTOINS_APP, sl, XD);

    try
      if not XD.Active then XD.Active := true;
      parseXML;
    except

    end;

  finally
    sl.Free;
  end;
end;

procedure TfrmAutoInsApp.parseXML;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
begin

  if not XD.Active then exit;

  for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
     S := KNode.ChildNodes['RESULT'].Text;

     if trim(S) = 'OK' then
     begin
       ShowMessage('자동차보험 견적요청이 완료되었습니다. ');
     end
     else if trim(S) = 'NO' then
     begin
       ShowMessage('자동차보험 견적요청 과정에 문제가 있습니다. 관리자에게 연락해 보십시요.');
     end;
  end;
end;

procedure TfrmAutoInsApp.SpeedButton2Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      eINSURED_ZIP.Text := frmZipPopup.edtZipCode.Text;
      eINSURED_ADDR_SIGUN.Text := frmZipPopup.Edit2.Text;
      eINSURED_ADDR_DETAIL.Text := frmZipPopup.Edit3.Text;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

procedure TfrmAutoInsApp.SpeedButton1Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      eCONTRACTOR_ZIP.Text := frmZipPopup.edtZipCode.Text;
      eCONTRACTOR_ADDR_SIGUN.Text := frmZipPopup.Edit2.Text;
      eCONTRACTOR_ADDR_DETAIL.Text := frmZipPopup.Edit3.Text;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

procedure TfrmAutoInsApp.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    eCONTRACTOR_ZIP.Text := eINSURED_ZIP.Text;
    eCONTRACTOR_ADDR_SIGUN.Text := eINSURED_ADDR_SIGUN.Text;
    eCONTRACTOR_ADDR_DETAIL.Text := eINSURED_ADDR_DETAIL.Text;
    eCONTRACTOR_TEL.Text := eINSURED_TEL.Text;
    eCONTRACTOR_CELL.Text := eINSURED_CELL.Text;
  end
  else
  begin
    eCONTRACTOR_ZIP.Text := '';
    eCONTRACTOR_ADDR_SIGUN.Text := '';
    eCONTRACTOR_ADDR_DETAIL.Text := '';
    eCONTRACTOR_TEL.Text := '';
    eCONTRACTOR_CELL.Text := '';
  end;
end;

procedure TfrmAutoInsApp.setPanel4(v: Boolean);
var
  i: Integer;
begin
  for i := 0 to Panel4.ControlCount - 1 do
  begin
    if Panel4.Controls[i] is TComboBox then
      if v then
        TComboBox(Panel4.Controls[i]).Color := clWindow
      else
        TComboBox(Panel4.Controls[i]).Color := clBtnFace;
  end;
end;

procedure TfrmAutoInsApp.rdComprehensiveClick(Sender: TObject);
begin
  if rdComprehensive.Checked then
  begin
    rdRequired.Checked := false;
    Panel4.Enabled := true;
    setPanel4(true);
  end
  else
  begin
    rdRequired.Checked := true;
    Panel4.Enabled := false;
    setPanel4(false);
  end;
end;

procedure TfrmAutoInsApp.rdRequiredClick(Sender: TObject);
begin
  if rdRequired.Checked then
  begin
    rdComprehensive.Checked := false;
    Panel4.Enabled := false;
    setPanel4(false);    
  end
  else
  begin
    rdComprehensive.Checked := true;
    Panel4.Enabled := true;
    setPanel4(true);
  end;
end;

procedure TfrmAutoInsApp.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, ePOLICY_SDATE.Text);
  if ePOLICY_SDATE.Text <> S then
    ePOLICY_SDATE.Text := S;

end;

procedure TfrmAutoInsApp.SpeedButton3Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton3, ePOLICY_EDATE.Text);
  if ePOLICY_EDATE.Text <> S then
    ePOLICY_EDATE.Text := S;

end;

end.
