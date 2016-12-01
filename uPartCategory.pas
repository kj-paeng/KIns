unit uPartCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, Mask, DBCtrls;

type
  TfrmPartCategory = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1SEQ: TAutoIncField;
    Table1CATEGORYNAME: TStringField;
    Button4: TButton;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartCategory: TfrmPartCategory;

implementation

{$R *.dfm}

procedure TfrmPartCategory.FormCreate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Active := true;
end;

procedure TfrmPartCategory.Button3Click(Sender: TObject);
begin
  Table1.Close;
  Close;
end;

procedure TfrmPartCategory.Button1Click(Sender: TObject);
begin
  Table1.Append;
end;

procedure TfrmPartCategory.Button4Click(Sender: TObject);
begin
  if Table1.State in [dsInsert, dsEdit] then
    Table1.Post;
end;

procedure TfrmPartCategory.Button2Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
  end;
end;

end.
