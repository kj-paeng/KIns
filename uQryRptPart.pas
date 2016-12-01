unit uQryRptPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, Grids, DBGrids;

type
  TfrmQryRptPart = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Query1PART_ID: TStringField;
    Query1PART_NAME: TStringField;
    Query1PART_PRICE: TFloatField;
    Query1PART_GET_PRICE: TFloatField;
    Query1PART_PHOTO1: TGraphicField;
    Query1PART_PHOTO2: TGraphicField;
    Query1STOCK: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQryRptPart: TfrmQryRptPart;

implementation

uses uRptPart;

{$R *.dfm}

procedure TfrmQryRptPart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryRptPart := nil;
  Action:=caFree;
end;

procedure TfrmQryRptPart.BitBtn4Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT * from part ';
  S := S + ' WHERE part_name LIKE ''%' + Trim(Edit1.Text) + '%'' ';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;


procedure TfrmQryRptPart.BitBtn2Click(Sender: TObject);
begin
  try
    rptPart := TrptPart.Create(Self);
    rptPart.QR1.Preview;
  finally
    rptPart.Free;
  end;

end;

end.
