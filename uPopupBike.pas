unit uPopupBike;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmPopupBike = class(TForm)
    Query1: TQuery;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    cbMF: TComboBox;
    qry00: TQuery;
    qry00built_company: TStringField;
    cbYear: TComboBox;
    Query1built_year: TStringField;
    Query1built_company: TStringField;
    Query1status: TStringField;
    Query1model: TStringField;
    Query1seq: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sKey, sName, sTableName: String;
  end;

var
  frmPopupBike: TfrmPopupBike;

implementation

{$R *.DFM}

procedure TfrmPopupBike.BitBtn3Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT seq, built_year, built_company, status, model from bike ';
  S := S + ' WHERE model LIKE ''%' + Trim(Edit1.Text) + '%'' ';

  if cbYear.ItemIndex > 0 then
    S := S + ' AND built_year = ''' + cbYear.Items.Strings[cbYear.ItemIndex] + '''';

  if cbMF.ItemIndex > 0 then
    S := S + ' AND built_company = ''' + cbMF.Items.Strings[cbMF.ItemIndex] + '''';

  S := S + ' ORDER BY model';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmPopupBike.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    BitBtn3Click(nil);

end;

procedure TfrmPopupBike.FormActivate(Sender: TObject);
var
  i: Integer;
  y: Integer;
begin
  if not qry00.Active then qry00.Open;

  cbMF.Items.Clear;
  cbMF.Items.Add('전체');
  for i := 0 to qry00.RecordCount - 1 do
  begin
    cbMF.Items.Add(qry00.FieldByName('built_company').AsString);
    qry00.Next;
  end;
  cbMF.ItemIndex := 0;


  cbYear.Items.Clear;
  y := StrToInt(FormatDateTime('YYYY', Now));
  cbYear.Items.Add('전체');
  for i := 0 to 29 do
  begin
    cbYear.Items.Add(IntToStr(y - i));
  end;

  cbYear.ItemIndex := 0;

end;

end.
