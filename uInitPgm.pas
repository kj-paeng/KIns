unit uInitPgm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IniFiles;

type
  TfrmInitPgm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInitPgm: TfrmInitPgm;

implementation

uses uInitSetting, uMain;

{$R *.DFM}

procedure TfrmInitPgm.FormCreate(Sender: TObject);
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    if BBIni.ReadString('INIT_SETTING', 'VALUE', '1') = '1' then   //다음에 띄운다
      Application.CreateForm(TfrmInitSetting, frmInitSetting)
    else
      Application.CreateForm(TfrmMain, frmMain);
  finally
    BBIni.Free;
  end;
end;

end.
