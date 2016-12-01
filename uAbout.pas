unit uAbout;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TfrmAboutBox = class(TForm)
    OKButton: TButton;
    Copyright: TLabel;
    Bevel1: TBevel;
    ProductName1: TLabel;
    Versiont: TLabel;
    PhysMem: TLabel;
    OS: TLabel;
    Label3: TLabel;
    URL: TLabel;
    ProgramIcon: TImage;
    ProductName2: TLabel;
    ProductName3: TLabel;
    lblVersion: TLabel;
    Label1: TLabel;
    EMAIL: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure URLClick(Sender: TObject);
    procedure EMAILClick(Sender: TObject);
  private
    procedure GetOSInfo;
    procedure InitializeCaptions;
    function Regkey(Key: HKEY; Subkey: string; var Data: string): Longint;
  end;

var
  frmAboutBox: TfrmAboutBox;

implementation

uses ShellAPI, uCommonProcs;

{$R *.DFM}

// get version info;
function GetFileVersion(exeName : string): string;
const
  c_StringInfo = 'StringFileInfo\040904E4\FileVersion';
var
  n, Len : cardinal;
  Buf, Value : PChar;
begin
  Result := BB_VERSION;
{  n := GetFileVersionInfoSize(PChar(exeName),n);
  if n > 0 then begin
    Buf := AllocMem(n);
    try
      GetFileVersionInfo(PChar(exeName),0,n,Buf);
      if VerQueryValue(Buf,PChar(c_StringInfo),Pointer(Value),Len) then begin
        Result := Trim(Value);
      end;
    finally
      FreeMem(Buf,n);
    end;
  end;
}

end;

function TfrmAboutBox.Regkey(Key: HKEY; Subkey: string; var Data: string): Longint;
var
  H    : HKEY;
  tData: array[0..259] of Char;
  dSize: Integer;
begin
{
  Result := RegOpenKeyEx(Key, PChar(Subkey), 0, KEY_QUERY_VALUE, H);
  if Result = ERROR_SUCCESS then
  begin
    dSize := Sizeof(tData);
    RegQueryValue(H, nil, tData, dSize);
    Data := StrPas(tData);
    RegCloseKey(H);
  end;
}
end;

procedure TfrmAboutBox.GetOSInfo;
var
  Platform   : string; 
  BuildNumber: Integer;
begin
  case Win32Platform of
    VER_PLATFORM_WIN32_WINDOWS:
    begin
      Platform := 'Windows 98 ';
      BuildNumber := Win32BuildNumber and $0000FFFF;
    end;
    VER_PLATFORM_WIN32_NT:
    begin
      Platform := 'Windows NT ';
      BuildNumber := Win32BuildNumber;
    end;
  else
  begin
    Platform := 'Windows ';
    BuildNumber := 0;
  end;
end;
if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) or
  (Win32Platform = VER_PLATFORM_WIN32_NT) then
begin
  if Win32CSDVersion = '' then
    OS.Caption := Format('%s %d.%d (Build %d)',[Platform, Win32MajorVersion,
    Win32MinorVersion, BuildNumber])
  else
    OS.Caption := Format('%s %d.%d (Build %d: %s)',[Platform, Win32MajorVersion,
      Win32MinorVersion, BuildNumber, Win32CSDVersion]);
end
else
  OS.Caption := Format('%s %d.%d',[Platform, Win32MajorVersion,
    Win32MinorVersion])
end;

procedure TfrmAboutBox.InitializeCaptions;
var
  ms: TMemoryStatus;
begin
  GetOSInfo;
  ms.dwLength := Sizeof(TMemoryStatus);
  GlobalMemoryStatus(ms);
  PhysMem.Caption := FormatFloat('#,###" KB"', ms.dwTotalPhys div 1024);

  lblVersion.Caption := GetFileVersion(Application.ExeName);
end;

procedure TfrmAboutBox.FormCreate(Sender: TObject);
begin
  InitializeCaptions;
end;

procedure TfrmAboutBox.URLClick(Sender: TObject);
var
  P  : Integer;
  Key: string;
begin
{
  if Regkey(HKEY_CLASSES_ROOT, '.htm', Key) = ERROR_SUCCESS then
  begin
    Key := Key + '\shell\open\command';
    if Regkey(HKEY_CLASSES_ROOT, Key, Key) = ERROR_SUCCESS then
    begin
      P := Pos('"%1"', Key);
      if P = 0 then
        P := Pos('%1', Key);
      if P <> 0 then
        setlength(Key, P - 1);
      Key := Key + ' ' + URL.Caption;
      if WinExec(PChar(Key), SW_SHOWNORMAL) < 32 then
        raise Exception.Create('Couldn''t launch default browser');
    end;
  end;
}
end;

procedure TfrmAboutBox.EMAILClick(Sender: TObject);
begin
  ShellExecute(0, nil, PChar('mailto:' + EMAIL.Caption), nil, nil, SW_NORMAL);
end;

end.

