unit uDBBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BDE, DBTables, ExtCtrls, ShellApi, uCommonProcs,
  DateUtils, ComCtrls, IniFiles;

type
  TfrmDBBackup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button3: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GBox0: TRadioGroup;
    Label1: TLabel;
    Button2: TButton;
    Button4: TButton;
    GBox1: TRadioGroup;
    edtDays: TEdit;
    Panel4: TPanel;
    Button1: TButton;
    Panel5: TPanel;
    LB: TListBox;
    LV: TListView;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GBox0Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure loadBkups;

  public
    { Public declarations }
    procedure QuickCopyTable(T: TTable; DestTblName: String; Overwrite: Boolean);
  end;

var
  frmDBBackup: TfrmDBBackup;

implementation

{$R *.dfm}


procedure TfrmDBBackup.loadBkups;
var
  rec: TSearchRec;
  path: String;
  LI: TListItem;
begin
  path := IncludeTrailingBackslash(GetCurrentDir);
  if FindFirst(path+'*.*', faDirectory, rec) = 0 then
    try
      repeat
        if (UpperCase(Copy(rec.Name,1,4)) = 'DATA') and (Length(rec.Name) = 12) then
        begin
          LB.Items.Add(path+rec.name);
          LI := LV.Items.Add;
          LI.Caption := rec.name;
          LI.SubItems.Add(path);
        end;
      until FindNext(rec) <> 0;
    finally
      FindClose(rec);
    end;


end;

procedure TfrmDBBackup.QuickCopyTable(T: TTable; DestTblName: String; Overwrite: Boolean);
var
  DBType: DBIName;
  wasOpen: Boolean;
  NumCopied: Word;
begin
  WasOpen := T.Active;
  if not WasOpen then T.Open;
  Check(DbiGetProp(hDBIObj(T.Handle), drvDRIVERTYPE, @DBType, SizeOf(DBINAME), NumCopied));
  Check(DbiCopyTable(T.DBHandle, Overwrite, PChar(T.TableName), DBType, PChar(DestTblName)));
  T.Active := WasOpen;
end;

procedure TfrmDBBackup.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDBBackup.Button1Click(Sender: TObject);
const
  DATA = '\data';
var
  curDir, destDir: String;
begin
  curDir := GetCurrentDir+DATA;
  destDir := curDir+FormatDateTime('YYYYMMDD', Now);
  if DirectoryExists(destDir) then
  begin
    MessageDlg('이미 백업이 생성되었습니다.', mtInformation, [mbOK], 0);
    exit;
  end;

  if CopyDir(curDir, destDir) = True then
    MessageDlg('자료 백업이 완료되었습니다.', mtInformation, [mbOK], 0)
  else
    MessageDlg('자료 백업중 문제가 발생했습니다. 관리자에게 문의하십시요.', mtWarning, [mbOK], 0)

end;

procedure TfrmDBBackup.GBox0Click(Sender: TObject);
begin
  if GBox0.ItemIndex = 0 then
    GBox1.Enabled := false
  else if GBox0.ItemIndex = 1 then
    GBox1.Enabled := true;
end;

procedure TfrmDBBackup.Button4Click(Sender: TObject);
var
  S: String;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    BBIni.WriteString('BACKUP', 'AUTOBACKUP', IntToStr(GBox0.ItemIndex));
    case GBox1.ItemIndex of
    0: S := 'EVERYDAY';
    1: S := 'WEEKLY';
    2: S := 'MONTHLY';
    3: begin S := 'USERDEFINED';  BBIni.WriteString('BACKUP', 'USERDEFINEDDAYS', edtDays.Text); end;
    else
      S := 'WEEKLY';
    end;

    BBIni.WriteString('BACKUP', 'AUTOPERIOD', S);
    BBIni.WriteString('BACKUP', 'LASTBACKUPDAY', FormatDateTime('YYYYMMDD', Now));

  finally
    BBIni.Free;
  end;
end;

procedure TfrmDBBackup.FormCreate(Sender: TObject);
var
  S: String;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    GBox0.ItemIndex := StrToInt(BBIni.ReadString('BACKUP', 'AUTOBACKUP', '0'));

    if BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'EVERYDAY' then
      GBox1.ItemIndex := 0;
    if BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'WEEKLY' then
      GBox1.ItemIndex := 1;
    if BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'MONTHLY' then
      GBox1.ItemIndex := 2;
    if BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'USERDEFINED' then
    begin
      GBox1.ItemIndex := 3;
      edtDays.Text := BBIni.ReadString('BACKUP', 'USERDEFINEDDAYS', '');
    end;

  finally
    BBIni.Free;
  end;

  PageControl1.ActivePageIndex := 0;

  loadBkups;
end;

procedure TfrmDBBackup.Button2Click(Sender: TObject);
var
  S: String;
begin

  if LV.Selected = nil then
  begin
    MessageDlg('먼저 백업에 사용할 항목을 선택하십시요..', mtInformation, [mbOK], 0);
    exit;
  end;


  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    BBIni.WriteString('BACKUP', 'EXECUTERESTORE', '1');  //로그인 시 0면 안함, 1이면 복구실행
    BBIni.WriteString('BACKUP', 'EXECUTERESTORENAME', LV.Selected.SubItems[0]+LV.Selected.Caption);
    MessageDlg('다음 로그인 시 복구작업이 시작됩니다.', mtInformation, [mbOK], 0);
  finally
    BBIni.Free;
  end;

end;

end.
