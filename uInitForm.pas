unit uInitForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, IniFiles, uCommonProcs;

type
  TfrmInitForm = class(TForm)
    btnApply: TBitBtn;
    btnCancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    edtUNAME: TEdit;
    edtUJUMIN: TEdit;
    edtUZIP: TEdit;
    edtUJUSO1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtUJUSO2: TEdit;
    Label9: TLabel;
    edtUEMAIL: TEdit;
    Label10: TLabel;
    edtUCOMPANY: TEdit;
    Label11: TLabel;
    edtUTEL: TEdit;
    Label12: TLabel;
    edtUFAX: TEdit;
    Label13: TLabel;
    edtUHP: TEdit;
    Label14: TLabel;
    edtNICESMSID: TEdit;
    Label15: TLabel;
    edtNICESMSPASS: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtBIZNO: TEdit;
    Label19: TLabel;
    edtSHOPNO: TEdit;
    Label20: TLabel;
    edtCEOName: TEdit;
    BitBtn1: TBitBtn;
    Label22: TLabel;
    SpeedButton6: TSpeedButton;
    Label21: TLabel;
    eBJong: TEdit;
    Label23: TLabel;
    eBType: TEdit;
    procedure btnApplyClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    IsCanClose: Boolean;
  public
    { Public declarations }
  end;

var
  frmInitForm: TfrmInitForm;

implementation

{$R *.DFM}

procedure TfrmInitForm.btnApplyClick(Sender: TObject);
begin
  IsCanClose := False;

  if Trim(Edit1.Text) = '' then
  begin
    MessageDlg('사용자ID를 입력하십시요', mtInformation, [mbOK], 0);
    Edit1.SetFocus;
    Exit;
  end;

  if Trim(Edit2.Text) = '' then
  begin
    MessageDlg('비밀번호를 입력하십시요', mtInformation, [mbOK], 0);
    Edit2.SetFocus;
    Exit;
  end;

  if Trim(Edit3.Text) = '' then
  begin
    MessageDlg('확인비밀번호를 입력하십시요', mtInformation, [mbOK], 0);
    Edit3.SetFocus;
    Exit;
  end;

  if Trim(Edit2.Text) <> Trim(Edit3.Text) then
  begin
    MessageDlg('비밀번호가 일치하지 않습니다', mtWarning, [mbOK], 0);
    Edit2.SetFocus;
    Exit;
  end;

  

  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    BBIni.WriteString('MemberInfo', 'UID', Trim(Edit1.Text));
    BBIni.WriteString('MemberInfo', 'UPASS', Trim(Edit2.Text));

    BBIni.WriteString('MemberInfo', 'UNAME', Trim(edtUNAME.Text));
    BBIni.WriteString('MemberInfo', 'UJUMIN', Trim(edtUJUMIN.Text));
    BBIni.WriteString('MemberInfo', 'UZIP', Trim(edtUZIP.Text));
    BBIni.WriteString('MemberInfo', 'UJUSO1', Trim(edtUJUSO1.Text));
    BBIni.WriteString('MemberInfo', 'UJUSO2', Trim(edtUJUSO2.Text));
    BBIni.WriteString('MemberInfo', 'UEMAIL', Trim(edtUEMAIL.Text));
    BBIni.WriteString('MemberInfo', 'UCOMPANY', Trim(edtUCOMPANY.Text));
    BBIni.WriteString('MemberInfo', 'UTEL', Trim(edtUTEL.Text));
    BBIni.WriteString('MemberInfo', 'UFAX', Trim(edtUFAX.Text));
    BBIni.WriteString('MemberInfo', 'UHP', Trim(edtUHP.Text));
    BBIni.WriteString('MemberInfo', 'NICESMSID', Trim(edtNICESMSID.Text));
    BBIni.WriteString('MemberInfo', 'NICESMSPASS', Trim(edtNICESMSPASS.Text));

    BBIni.WriteString('MemberInfo', 'BIZNO', Trim(edtBIZNO.Text));
    BBIni.WriteString('MemberInfo', 'SHOPNO', Trim(edtSHOPNO.Text));
    BBIni.WriteString('MemberInfo', 'CEONAME', Trim(edtCEONAME.Text));

    BBIni.WriteString('MemberInfo', 'BTYPE', Trim(eBTYPE.Text));
    BBIni.WriteString('MemberInfo', 'BJONG', Trim(eBJONG.Text));

    IsCanClose := True;

  finally
    BBIni.Free;
  end;
end;

procedure TfrmInitForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := IsCanClose;
end;

procedure TfrmInitForm.btnCancelClick(Sender: TObject);
begin
  IsCanClose := True;
end;

procedure TfrmInitForm.BitBtn1Click(Sender: TObject);
begin
  try

    BBIni := TIniFile.Create(BBUDDY_INI);
    Edit1.Text := BBIni.ReadString('MemberInfo', 'UID', '');
    Edit2.Text := BBIni.ReadString('MemberInfo', 'UPASS', '');
    Edit3.Text := BBIni.ReadString('MemberInfo', 'UPASS', '');

    edtUNAME.Text := BBIni.ReadString('MemberInfo', 'UNAME', '');
    edtUJUMIN.Text:=BBIni.ReadString('MemberInfo', 'UJUMIN', '');
    edtUZIP.Text:=BBIni.ReadString('MemberInfo', 'UZIP', '');
    edtUJUSO1.Text:=BBIni.ReadString('MemberInfo', 'UJUSO1', '');
    edtUJUSO2.Text:=BBIni.ReadString('MemberInfo', 'UJUSO2', '');
    edtUEMAIL.Text:=BBIni.ReadString('MemberInfo', 'UEMAIL', '');
    edtUCOMPANY.Text:=BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    edtUTEL.Text:=BBIni.ReadString('MemberInfo', 'UTEL', '');
    edtUFAX.Text:=BBIni.ReadString('MemberInfo', 'UFAX', '');
    edtUHP.Text:=BBIni.ReadString('MemberInfo', 'UHP', '');
    edtNICESMSID.Text:=BBIni.ReadString('MemberInfo', 'NICESMSID', '');
    edtNICESMSPASS.Text:=BBIni.ReadString('MemberInfo', 'NICESMSPASS', '');

    edtBIZNO.Text:=BBIni.ReadString('MemberInfo', 'BIZNO', '');
    edtSHOPNO.Text:=BBIni.ReadString('MemberInfo', 'SHOPNO', '');
    edtCEONAME.Text:=BBIni.ReadString('MemberInfo', 'CEONAME', '');
    eBTYPE.Text:= BBIni.ReadString('MemberInfo', 'BTYPE', '');
    eBJONG.Text:=BBIni.ReadString('MemberInfo', 'BJONG', '');

  finally
    BBIni.Free;
  end;
end;

procedure TfrmInitForm.SpeedButton6Click(Sender: TObject);
begin
  edtUJUMIN.Text := showMCal(SpeedButton6, edtUJUMIN.Text);
end;

end.
