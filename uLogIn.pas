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
    iTryCount :Integer;                      // LogIn 시도횟수
    procedure ChangeTag(Sender :TObject);    // 값 입력 여부 체크
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
  sBBMenuCaption1 = '사용자 초기화';
var
  SysMenu: HMenu;
begin
  SysMenu := GetSystemMenu(Handle, FALSE);
  AppendMenu(SysMenu, MF_SEPARATOR, 0, '');
  AppendMenu(SysMenu, MF_STRING, SC_BBMenu1, sBBMenuCaption1);

end;

procedure TfrmLogIn.ChangeTag(Sender :TObject); // 값 입력 여부 체크
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

  iTryCount := 0;      // Login 시도횟수 초기화

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    // DB restore 작업 설정
    // 원래 db를 data_old_yyyymmdd로 변경
    // excueterestorename을 data 로 rename
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

// 값이 입력되면 TAG값을 1로 세팅시킨다.
// edtPassWdChange Event도 같이 연결되어 있다.
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
    MessageDlg('사용자ID를 입력하십시요.', mtInformation, [mbOK], 0);
    edtUserId.SetFocus;
    Exit;
  end;

  if trim(edtPassWd.Text) = '' then begin
    MessageDlg('비밀번호를 입력하십시요.', mtInformation, [mbOK], 0);
    edtPassWd.SetFocus;
    Exit;
  end;

  // PassWD 입력이 정확한지 여부 iFoundPassWd   -> 정상
  //                             iNoFoundPassWd -> 비정상
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

      // 접속 시도횟수가 3 이상이면 강제 종료
      if iTryCount = 3 then
      begin
        if MessageDlg('접속 시도횟수가 초과하였습니다.'#13#13
                    + 'ID와 PASSWD를 다시 한번 확인하십시오.'#13#13
                    + 'ID와 PASSWD 초기화를 하시겠습니까?', mtInformation, [mbYes, mbNo], 0) = mrYes then
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

      MessageDlg('비밀번호가 일치하지 않습니다.', mtWarning, [mbOK], 0);
      edtPassWd.SetFocus;
      exit;
    end;
  end
  else
  begin

    // 접속 시도횟수가 3 이상이면 강제 종료
    if iTryCount = 3 then
    begin
      if MessageDlg('접속 시도횟수가 초과하였습니다.'#13#13
                  + 'ID와 PASSWD를 다시 한번 확인하십시오.'#13#13
                  + 'ID와 PASSWD 초기화를 하시겠습니까?', mtInformation, [mbYes, mbNo], 0) = mrYes then
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

    MessageDlg('사용자 ID가 일치하지 않습니다.', mtWarning, [mbOK], 0);
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
          MessageDlg('비밀번호 설정이 안되었습니다.', mtInformation, [mbOK], 0);
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
