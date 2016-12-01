unit uMemberReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, xmldom, XMLIntf, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, msxmldom, XMLDoc,
  Buttons, IniFiles, Mask;

type
  TfrmMemberReg = class(TForm)
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Button2: TButton;
    edtUID: TEdit;
    edtUZIP: TEdit;
    edtUJUSO1: TEdit;
    edtUJUSO2: TEdit;
    edtUPASS: TEdit;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    edtUTEL: TEdit;
    edtUFAX: TEdit;
    edtNICESMSPASS: TEdit;
    Button1: TButton;
    Label1: TLabel;
    edtUNAME: TEdit;
    Label2: TLabel;
    Label29: TLabel;
    edtUEMAIL: TEdit;
    Label21: TLabel;
    edtUHP: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    XD: TXMLDocument;
    edtNICESMSID: TEdit;
    btnReg: TBitBtn;
    btnRetrieve: TBitBtn;
    btnUpdate: TBitBtn;
    btnClose: TBitBtn;
    edtUCOMPANY: TEdit;
    Label4: TLabel;
    edtUJUMIN: TEdit;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btnRegClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtUJUMINExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    BBIni: TIniFile;
    procedure parseXML;
    procedure parseXML_setMember;
    procedure parseXML_modMember;
    procedure createINISection;
    procedure readIniSection;
    function validateMemberInfo: Boolean;
    function registeredMemberCheck: Boolean;


  public
    { Public declarations }
  end;

var
  frmMemberReg: TfrmMemberReg;
  writeDay: String;

implementation

uses
  uCommonProcs, uZipPopup;

{$R *.dfm}

function TfrmMemberReg.validateMemberInfo: Boolean;
begin
  result := false;

  if trim(edtUID.Text)='' then
  begin
    MessageDlg('ȸ��ID�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUPASS.Text)='' then
  begin
    MessageDlg('ȸ�� ��й�ȣ�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUNAME.Text)='' then
  begin
    MessageDlg('ȸ�� �̸� �Ǵ� ��ȣ�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;

  try
    if trim(edtUJUMIN.Text) = '' then
    begin
      MessageDlg('��������� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
      exit;
    end;
{    if not Chk_Jumin(trim(edtUJUMIN.Text)) then
    begin
      MessageDlg('�ùٸ� �ֹι�ȣ�� �ƴմϴ�.', mtWarning, [mbOK], 0);
      exit;
    end;
}
  except
    MessageDlg('��������� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUZIP.Text)='' then
  begin
    MessageDlg('�����ȣ�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUJUSO1.Text)='' then
  begin
    MessageDlg('�ּ�(�ñ���)�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUJUSO2.Text)='' then
  begin
    MessageDlg('���ּҸ� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUEMAIL.Text)='' then
  begin
    MessageDlg('�̸��� �ּҸ� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUCOMPANY.Text)='' then
  begin
    MessageDlg('�븮�� �̸� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;  

  result := true;

end;

procedure TfrmMemberReg.readIniSection;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    edtUID.Text := BBIni.ReadString('MemberInfo', 'UID', '');
    edtUPASS.Text := BBIni.ReadString('MemberInfo', 'UPASS', '');
    edtUNAME.Text := BBIni.ReadString('MemberInfo', 'UNAME', '');
    edtUJUMIN.Text := BBIni.ReadString('MemberInfo', 'UJUMIN', '');
    edtUZIP.Text := BBIni.ReadString('MemberInfo', 'UZIP', '');
    edtUJUSO1.Text := BBIni.ReadString('MemberInfo', 'UJUSO1', '');
    edtUJUSO2.Text := BBIni.ReadString('MemberInfo', 'UJUSO2', '');
    edtUEMAIL.Text := BBIni.ReadString('MemberInfo', 'UEMAIL', '');
    edtUCOMPANY.Text := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    edtUTEL.Text := BBIni.ReadString('MemberInfo', 'UTEL', '');
    edtUFAX.Text := BBIni.ReadString('MemberInfo', 'UFAX', '');
    edtUHP.Text := BBIni.ReadString('MemberInfo', 'UHP', '');
    edtNICESMSID.Text := BBIni.ReadString('MemberInfo', 'NICESMSID', '');
    edtNICESMSPASS.Text := BBIni.ReadString('MemberInfo', 'NICESMSPASS', '');
    writeDay := BBIni.ReadString('MemberInfo', 'WRITEDAY', '');

  finally
    BBIni.Free;
  end;
end;

procedure TfrmMemberReg.createINISection;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    BBIni.WriteString('MemberInfo', 'UID', edtUID.Text);
    BBIni.WriteString('MemberInfo', 'UPASS', edtUPASS.Text);
    BBIni.WriteString('MemberInfo', 'UNAME', edtUNAME.Text);
    BBIni.WriteString('MemberInfo', 'UJUMIN', edtUJUMIN.Text);
    BBIni.WriteString('MemberInfo', 'UZIP', edtUZIP.Text);
    BBIni.WriteString('MemberInfo', 'UJUSO1', edtUJUSO1.Text);
    BBIni.WriteString('MemberInfo', 'UJUSO2', edtUJUSO2.Text);
    BBIni.WriteString('MemberInfo', 'UEMAIL', edtUEMAIL.Text);
    BBIni.WriteString('MemberInfo', 'UCOMPANY', edtUCOMPANY.Text);
    BBIni.WriteString('MemberInfo', 'UTEL', edtUTEL.Text);
    BBIni.WriteString('MemberInfo', 'UFAX', edtUFAX.Text);
    BBIni.WriteString('MemberInfo', 'UHP', edtUHP.Text);
    BBIni.WriteString('MemberInfo', 'NICESMSID', edtNICESMSID.Text);
    BBIni.WriteString('MemberInfo', 'NICESMSPASS', edtNICESMSPASS.Text);
    BBIni.WriteString('MemberInfo', 'WRITEDAY', FormatDateTime('YYYYMMDD', Now));

  finally
    BBIni.Free;
  end;
end;

procedure TfrmMemberReg.parseXML_SetMember;
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
       ShowMessage('ȸ��(��) ����� �Ϸ�Ǿ����ϴ�. �����ð� ���� �����ڷκ��� ��ȭ�� ������ �̴ϴ�.');
       createINISection;
       edtUID.SetFocus;
     end
     else if trim(S) = 'NO' then
     begin
       ShowMessage('ȸ��(��) ��� ������ ������ �ֽ��ϴ�. �����ڿ��� ������ ���ʽÿ�.');
       edtUID.SetFocus;

     end;
  end;
end;

procedure TfrmMemberReg.parseXML_modMember;
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
       ShowMessage('ȸ��(��) ������ �Ϸ�Ǿ����ϴ�. ');
       createINISection;
       edtUID.SetFocus;
     end
     else if trim(S) = 'NO' then
     begin
       ShowMessage('ȸ��(��) ���� ������ ������ �ֽ��ϴ�. �����ڿ��� ������ ���ʽÿ�.');
       edtUID.SetFocus;

     end;
  end;
end;

procedure TfrmMemberReg.parseXML;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
begin

  if not XD.Active then exit;

  for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
     S := KNode.ChildNodes['ID_NUM'].Text;
     if StrToInt(S) > 0 then
     begin
       ShowMessage('�ߺ��� ���̵� �Դϴ�. �ٸ� ���̵� �����Ͻʽÿ�.');
       edtUID.SetFocus;
     end
     else
     begin
       ShowMessage('��밡���� ���̵� �Դϴ�.');
       edtUID.SetFocus;

     end;
  end;

end;


procedure TfrmMemberReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMemberReg := nil;
  Action := caFree;
end;

procedure TfrmMemberReg.Button1Click(Sender: TObject);
var
  sl: TStringList;
begin

  if trim(edtUID.Text)='' then
  begin
    MessageDlg('ȸ��ID�� �Է��Ͻʽÿ�.', mtWarning, [mbOK], 0);
    exit;
  end;

  try
    sl := TStringList.Create;
    sl.Add('uid='+edtUID.Text);
    CallService(GET_VALID_MEMBER_ID, sl, XD);

    try
      if not XD.Active then XD.Active := true;
      parseXML;
    except

    end;

  finally
    sl.Free;
  end;
end;

procedure TfrmMemberReg.btnRegClick(Sender: TObject);
var
  sl: TStringList;
begin

  //if not validateMemberInfo then exit;

  try
    sl := TStringList.Create;

    sl.Add('uid='+edtUID.Text);
    sl.Add('upass='+edtUPASS.Text);
    sl.Add('uname='+edtUNAME.Text);
    sl.Add('ujumin='+edtUJUMIN.Text);
    sl.Add('uzip='+edtUZIP.Text);
    sl.Add('ujuso1='+edtUJUSO1.Text);
    sl.Add('ujuso2='+edtUJUSO2.Text);
    sl.Add('uemail='+edtUEMAIL.Text);
    sl.Add('ufax='+edtUFAX.Text);
    sl.Add('nicesmsid='+edtNICESMSID.Text);
    sl.Add('nicesmspass='+edtNICESMSPASS.Text);
    sl.Add('ucompany='+edtUCOMPANY.Text);

    CallService(SET_MEMBER_REG, sl, XD);

    try
      if not XD.Active then XD.Active := true;
      parseXML_SetMember;
    except

    end;

  finally
    sl.Free;
  end;

end;

procedure TfrmMemberReg.btnRetrieveClick(Sender: TObject);
begin
  readINISection;
end;

function TfrmMemberReg.registeredMemberCheck: Boolean;
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
          {           MessageDlg('���� ȸ��(��) ����� ������ �����ʽÿ�. �����ڿ��� �����ٶ��ϴ�.'#13#13
                       + 'ȸ�������� �̹� ���� ��쿡�� ID, ��й�ȣ�� Ȯ���Ͻʽÿ�', mtInformation, [mbOK], 0);
          }
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



procedure TfrmMemberReg.btnUpdateClick(Sender: TObject);
var
  sl: TStringList;
begin

  if not validateMemberInfo then
  begin
    MessageDlg('ȸ����Ͽ� ���� ������ �ʿ��մϴ�. �����ڿ��� ���� �ٶ��ϴ�.', mtInformation, [mbOK], 0);
    exit;
  end;

  try
    sl := TStringList.Create;
    sl.Add('uid='+edtUID.Text);
    sl.Add('uname='+edtUNAME.Text);
    sl.Add('upass='+edtUPASS.Text);
    sl.Add('ujumin='+edtUJUMIN.Text);
    sl.Add('uzip='+edtUZIP.Text);
    sl.Add('ujuso1='+edtUJUSO1.Text);
    sl.Add('ujuso2='+edtUJUSO2.Text);
    sl.Add('uemail='+edtUEMAIL.Text);
    sl.Add('ufax='+edtUFAX.Text);
    sl.Add('nicesmsid='+edtNICESMSID.Text);
    sl.Add('nicesmspass='+edtNICESMSPASS.Text);
    sl.Add('ucompany='+edtUCOMPANY.Text);

    CallService(MOD_MEMBER_REG, sl, XD);

    try
      if not XD.Active then XD.Active := true;
      parseXML_modMember;
    except

    end;

  finally
    sl.Free;
  end;
end;

procedure TfrmMemberReg.FormCreate(Sender: TObject);
begin

  if registeredMemberCheck then
  begin
    btnReg.Enabled := false;
    //btnRetrieve.Enabled := true;
    btnUpdate.Enabled := true;
  end
  else
  begin
    btnReg.Enabled := true;
    //btnRetrieve.Enabled := false;
    btnUpdate.Enabled := false;
  end;
end;

procedure TfrmMemberReg.Button2Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      edtUZIP.Text := frmZipPopup.edtZipCode.Text;
      edtUJUSO1.Text := frmZipPopup.Edit2.Text;
      edtUJUSO2.Text := frmZipPopup.Edit3.Text;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

procedure TfrmMemberReg.edtUJUMINExit(Sender: TObject);
begin
{
  if not Chk_jumin(EraseStr(edtUJUMIN.Text, '-')) then
  begin
    MessageDlg('�ֹι�ȣ�� �ùٸ��� �ʽ��ϴ�.', mtWarning, [mbOK], 0);
    exit;
  end;
}
end;

procedure TfrmMemberReg.SpeedButton6Click(Sender: TObject);
begin
  edtUJUMIN.Text := showMCal(SpeedButton6, edtUJUMIN.Text);
end;

end.
