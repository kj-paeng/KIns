unit uDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ScktComp, PacketManage, IniFiles, DBXpress,
  SqlExpr;

type
  TfrmDM = class(TDataModule)
    BBDB: TDatabase;
    Query1: TQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CreateAlias;
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;

implementation

uses Debug;

{$R *.DFM}

procedure TfrmDM.CreateAlias;
const
  FDbDriver = 'PARADOX';
  SubDir = 'Data';
var
  FAlias: String;
  FAliasDir: String;
begin

  FAlias := 'KorInsDB';
  Session.NetFileDir := ExtractFilePath(Paramstr(0));
  Session.PrivateDir := ExtractFilePath(Paramstr(0));

  Session.ConfigMode := cmPersistent;
  if not Session.IsAlias(FAlias) then
  begin
    FAliasDir := ExtractFilePath(ParamStr(0)) + SubDir;
    Session.AddStandardAlias(FAlias, FAliasDir, FDbDriver);
    //Session.SaveConfigFile;
  end;

  Session.AddPassword('matthew');

end;

procedure TfrmDM.DataModuleCreate(Sender: TObject);
begin
  CreateAlias;

end;

end.
