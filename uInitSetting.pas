unit uInitSetting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, IniFiles, ComCtrls, Spin, ExtCtrls, ScktComp, uCommonProcs,
  Winsock;

type
  TfrmInitSetting = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtIpAddress: TEdit;
    edtPort: TSpinEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtMngIpAddress: TEdit;
    edtMngPort: TSpinEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    edtMailAddress: TEdit;
    edtMailPort: TSpinEdit;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    edtUserID: TEdit;
    edtUserPasswd: TEdit;
    Panel5: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Panel6: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Panel7: TPanel;
    Label9: TLabel;
    Label21: TLabel;
    Panel8: TPanel;
    Label12: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function GetIPAddress: String;

  public
    { Public declarations }
    MyParentForm: TForm;
    MyParentApplication: TApplication;
  end;

var
  frmInitSetting: TfrmInitSetting;

implementation

uses uMain;

{$R *.DFM}

procedure TfrmInitSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    BBIni.WriteString('FORM', 'frmPortSetting', '0');
  finally
    BBIni.Free;
  end;
  Action := caFree;
end;

procedure TfrmInitSetting.FormCreate(Sender: TObject);
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    //CMate서버주소
    edtIpAddress.Text := BBIni.ReadString('IPPORT', 'IP', '0.0.0.0');
    edtPort.Text := BBIni.ReadString('IPPORT', 'PORT', '0');

    //관리자 자신의 주소
    if Trim(BBIni.ReadString('MNG_IPPORT', 'IP', '0.0.0.0')) = '0.0.0.0' then
    begin
      edtMngIpAddress.Text := GetIpAddress;
    end
    else
      edtMngIpAddress.Text := BBIni.ReadString('MNG_IPPORT', 'IP', '0.0.0.0');

    edtMngPort.Text := BBIni.ReadString('MNG_IPPORT', 'PORT', '0');

    //메일서버의주소(관리용으로 사용됨)
    edtMailAddress.Text := BBIni.ReadString('MAIL_IPPORT', 'IP', '0.0.0.0');
    edtMailPort.Text := BBIni.ReadString('MAIL_IPPORT', 'PORT', '0');

    //DB사용자 설정
    edtUserID.Text := BBIni.ReadString('DB_USER', 'USERID', 'ccmate');
    edtUserPasswd.Text := BBIni.ReadString('DB_USER', 'PASSWD', 'ccmate');

  finally
    BBIni.Free;
  end;
end;

procedure TfrmInitSetting.BitBtn2Click(Sender: TObject);
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    if CheckBox1.Checked then
      BBIni.WriteString('INIT_SETTING', 'VALUE', '0')   //다음에 안 띄운다
    else
      BBIni.WriteString('INIT_SETTING', 'VALUE', '1');  //다음에 다시 띄움

  finally
    BBIni.Free;
  end;

  Application.CreateForm(TfrmMain, frmMain);

  Close;

end;

procedure TfrmInitSetting.BitBtn1Click(Sender: TObject);
begin
  try
    try
      BBIni := TIniFile.Create(BBUDDY_INI);

      BBIni.WriteString('IPPORT', 'IP', edtIpAddress.Text);
      BBIni.WriteString('IPPORT', 'PORT', edtPort.Text);

      BBIni.WriteString('MNG_IPPORT', 'IP', edtMngIpAddress.Text);
      BBIni.WriteString('MNG_IPPORT', 'PORT', edtMngPort.Text);

      BBIni.WriteString('MAIL_IPPORT', 'IP', edtMailAddress.Text);
      BBIni.WriteString('MAIL_IPPORT', 'PORT', edtMailPort.Text);

      BBIni.WriteString('DB_USER', 'USERID', edtUserID.Text);
      BBIni.WriteString('DB_USER', 'PASSWD', edtUserPasswd.Text);

      if CheckBox1.Checked then
        BBIni.WriteString('INIT_SETTING', 'VALUE', '0')   //다음에 안 띄운다
      else
        BBIni.WriteString('INIT_SETTING', 'VALUE', '1');  //다음에 다시 띄움

      MessageDlg('설정되었습니다.', mtInformation, [mbOK], 0);
      Close;
    except
    end;

    Application.CreateForm(TfrmMain, frmMain);

  finally
    BBIni.Free;
  end;
end;

function TfrmInitSetting.GetIPAddress: String;
var
  pHostInfo : pHostEnt;
  pszHostName : array[0..40] of char;
  strIP : String;
begin
  GetHostName(pszHostName, 40);
  pHostInfo := GetHostByName(pszHostName);
  if Assigned(pHostInfo) then begin
    strIP := IntToStr(ord(pHostInfo.h_addr_list^[0])) + '.' +
             IntToStr(ord(pHostInfo.h_addr_list^[1])) + '.' +
             IntToStr(ord(pHostInfo.h_addr_list^[2])) + '.' +
             IntToStr(ord(pHostInfo.h_addr_list^[3]));
  end;

  result := strIP;
end;

end.
