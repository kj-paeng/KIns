unit uLogIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBTables, Db, ComCtrls, IniFiles, OleCtrls,
  SHDocVw, uCommonProcs, jpeg, uMain;

type
  TfrmLogIn = class(TForm)
    edtUserId: TEdit;
    edtPassWd: TEdit;
    btnConnect: TBitBtn;
    btnClose: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtUserIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtUserIdChange(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPassWdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    iTryCount :Integer;                      // LogIn �õ�Ƚ��
    procedure ChangeTag(Sender :TObject);    // �� �Է� ���� üũ
    procedure AddBBSysMenu;
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;

  public
    { Public declarations }
    class function Execute: Boolean;

  end;

var
  frmLogIn: TfrmLogIn;

const
  SC_BBMenu1 = WM_USER + 1;

implementation

uses uInitForm;

{$R *.DFM}

class function TfrmLogin.Execute: Boolean;
begin
  with TfrmLogin.Create(nil) do
  try
    result := ShowModal = mrOK;
  finally
    Free;
  end;
end;

procedure TfrmLogIn.WMSysCommand(var Msg: TWMSysCommand);
begin
  if Msg.CmdType = SC_BBMenu1 then
  begin
    BitBtn2Click(Self);
  end
  else
    inherited;

end;

procedure TfrmLogIn.AddBBSysMenu;
const
  sBBMenuCaption1 = '����� �ʱ�ȭ';
var
  SysMenu: HMenu;
begin
  SysMenu := GetSystemMenu(Handle, FALSE);
  AppendMenu(SysMenu, MF_SEPARATOR, 0, '');
  AppendMenu(SysMenu, MF_STRING, SC_BBMenu1, sBBMenuCaption1);

end;

procedure TfrmLogIn.ChangeTag(Sender :TObject); // �� �Է� ���� üũ
begin
  if (Sender as TEdit).Text = '' then
    (Sender as TEdit).Tag := 0
  else
    (Sender as TEdit).Tag := 1;
end;

procedure TfrmLogIn.FormCreate(Sender: TObject);
var
  curDir, destDir: String;
  restoreName: String;
begin

  AddBBSysMenu;

  iTryCount := 0;      // Login �õ�Ƚ�� �ʱ�ȭ

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    // DB restore �۾� ����
    // ���� db�� data_old_yyyymmdd�� ����
    // excueterestorename�� data �� rename
    if BBIni.ReadString('BACKUP', 'EXECUTERESTORE', '0') = '1' then
    begin
      restoreName := BBIni.ReadString('BACKUP', 'EXECUTERESTORENAME', '');
      if trim(restoreName) <> '' then
      begin
        curDir := GetCurrentDir+'\data';
        destDir := GetCurrentDir + '\data_old_'+ FormatDateTime('YYYYMMDD', Now);
        if RenameFile(curDir, destDir) then
        begin
          curDir := restoreName;
          destDir := GetCurrentDir + '\data';
          RenameFile(curDir, destDir);

          BBIni.WriteString('BACKUP', 'EXECUTERESTORE', '0');
          BBIni.WriteString('BACKUP', 'EXECUTERESTORENAME', '');
        end;
      end;
    end;

    if BBIni.ReadString(UpperCase('MEMBERINFO'), 'UPASS', '') = '' then
    begin
      Bitbtn2.Visible := True;
      btnConnect.Enabled := False;
      btnClose.Enabled := False;
    end;

    if BBIni.ReadString(UpperCase('MEMBERINFO'), 'UID', '') <> '' then
    begin
      edtUserId.Text := BBIni.ReadString(UpperCase('MEMBERINFO'), 'UID', '');
    end;

  finally
    BBIni.Free;
  end;

end;

procedure TfrmLogIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLogIn.edtUserIdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then edtPassWd.SetFocus;
end;

// ���� �ԷµǸ� TAG���� 1�� ���ý�Ų��.
// edtPassWdChange Event�� ���� ����Ǿ� �ִ�.
procedure TfrmLogIn.edtUserIdChange(Sender: TObject);
begin
  ChangeTag(Sender);
end;

procedure TfrmLogIn.btnConnectClick(Sender: TObject);
var
  sUser: String;
  sPass: String;
begin

  //ModalResult := mrAbort;
  inc(iTryCount);
  
  if trim(edtUserId.Text) = '' then
  begin
    MessageDlg('�����ID�� �Է��Ͻʽÿ�.', mtInformation, [mbOK], 0);
    edtUserId.SetFocus;
    Exit;
  end;

  if trim(edtPassWd.Text) = '' then begin
    MessageDlg('��й�ȣ�� �Է��Ͻʽÿ�.', mtInformation, [mbOK], 0);
    edtPassWd.SetFocus;
    Exit;
  end;

  // PassWD �Է��� ��Ȯ���� ���� iFoundPassWd   -> ����
  //                             iNoFoundPassWd -> ������
  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    sUser := BBIni.ReadString('MemberInfo', 'UID', '');
    sPass := BBIni.ReadString('MemberInfo', 'UPASS', '');
  finally
    BBIni.Free;
  end;

  if sUser = Trim(edtUserId.Text) then
  begin
    if sPass = Trim(edtPassWd.Text) then
    begin
      
      guid := sUser;
      gupass := sPass;

      ModalResult := mrOK;
      exit;
    end
    else
    begin

      // ���� �õ�Ƚ���� 3 �̻��̸� ���� ����
      if iTryCount = 3 then
      begin
        if MessageDlg('���� �õ�Ƚ���� �ʰ��Ͽ����ϴ�.'#13#13
                    + 'ID�� PASSWD�� �ٽ� �ѹ� Ȯ���Ͻʽÿ�.'#13#13
                    + 'ID�� PASSWD �ʱ�ȭ�� �Ͻðڽ��ϱ�?', mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          BitBtn2Click(Self);
          iTryCount := 0;
          exit;
        end
        else
        begin
          ModalResult := mrAbort;
          exit;
        end;
      end;

      MessageDlg('��й�ȣ�� ��ġ���� �ʽ��ϴ�.', mtWarning, [mbOK], 0);
      edtPassWd.SetFocus;
      exit;
    end;
  end
  else
  begin

    // ���� �õ�Ƚ���� 3 �̻��̸� ���� ����
    if iTryCount = 3 then
    begin
      if MessageDlg('���� �õ�Ƚ���� �ʰ��Ͽ����ϴ�.'#13#13
                  + 'ID�� PASSWD�� �ٽ� �ѹ� Ȯ���Ͻʽÿ�.'#13#13
                  + 'ID�� PASSWD �ʱ�ȭ�� �Ͻðڽ��ϱ�?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      begin
        BitBtn2Click(Self);
        iTryCount := 0;
        exit;
      end
      else
      begin
        ModalResult := mrAbort;
        exit;
      end;
    end;

    MessageDlg('����� ID�� ��ġ���� �ʽ��ϴ�.', mtWarning, [mbOK], 0);
    edtUserId.SetFocus;
    exit;
  end;
end;

procedure TfrmLogIn.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

procedure TfrmLogIn.BitBtn2Click(Sender: TObject);
var
  S: String;
begin
  try
    frmInitForm := TfrmInitForm.Create(nil);
    if frmInitForm.ShowModal = mrOK then
    begin
      try
        BBIni := TIniFile.Create(BBUDDY_INI);
        S := BBIni.ReadString('MemberInfo', 'UPASS', '____**____**____');

        if S = '____**____**____' then
        begin
          MessageDlg('��й�ȣ ������ �ȵǾ����ϴ�.', mtInformation, [mbOK], 0);
          Exit;
        end;

        Bitbtn2.Visible := False;
        btnConnect.Enabled := True;
        btnClose.Enabled := True;
        edtUserID.SetFocus;

      finally
        BBIni.Free;
      end;
    end;
  finally
    frmInitForm.Free;
  end;
end;

procedure TfrmLogIn.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btnConnectClick(nil);
end;

procedure TfrmLogIn.edtPassWdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if Key = 13 then
  //  btnConnectClick(nil);
end;

procedure TfrmLogIn.FormActivate(Sender: TObject);
begin
  if trim(edtUserId.Text) <> '' then
    edtPassWd.SetFocus;

end;

end.
