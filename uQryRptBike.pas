unit uQryRptBike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, Grids, DBGrids;

type
  TfrmQryRptBike = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    cbYear: TComboBox;
    Label3: TLabel;
    cbMF: TComboBox;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    qry00: TQuery;
    qry00built_company: TStringField;
    Query1: TQuery;
    DataSource1: TDataSource;
    cbYear2: TComboBox;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Query1SEQ: TIntegerField;
    Query1VIN: TStringField;
    Query1ENGINE_ID: TStringField;
    Query1PLATE_NO: TStringField;
    Query1BUILT_YEAR: TStringField;
    Query1ENGINE_SIZE: TStringField;
    Query1BUILT_COUNTRY: TStringField;
    Query1BUILT_COMPANY: TStringField;
    Query1MODEL: TStringField;
    Query1SELL_PRICE: TIntegerField;
    Query1PURCHASE_PRICE: TIntegerField;
    Query1PHOTO1: TGraphicField;
    Query1PHOTO2: TGraphicField;
    Query1STATUS: TStringField;
    Query1STOCK: TIntegerField;
    Query1MEMO: TMemoField;
    Query1BIKE_CODE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cbYearChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQryRptBike: TfrmQryRptBike;

implementation

uses uRptBike;

{$R *.dfm}

procedure TfrmQryRptBike.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryRptBike := nil;
  Action:=caFree;
end;

procedure TfrmQryRptBike.FormActivate(Sender: TObject);
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
  cbYear2.Items.Clear;

  y := StrToInt(FormatDateTime('YYYY', Now));
  cbYear.Items.Add('전체');
  cbYear2.Items.Add('전체');

  for i := 0 to 29 do
  begin
    cbYear.Items.Add(IntToStr(y - i));
    cbYear2.Items.Add(IntToStr(y - i));

  end;

  cbYear.ItemIndex := 0;
  cbYear2.ItemIndex := 0;

end;

procedure TfrmQryRptBike.BitBtn4Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT * from bike ';
  S := S + ' WHERE model LIKE ''%' + Trim(Edit1.Text) + '%'' ';

  if (cbYear.ItemIndex > 0) and (cbYear2.ItemIndex > 0) then
    S := S + ' AND built_year between ''' + cbYear.Items.Strings[cbYear.ItemIndex] + ''' AND ''' + cbYear2.Items.Strings[cbYear2.ItemIndex] + ''' ';

  if cbMF.ItemIndex > 0 then
    S := S + ' AND built_company = ''' + cbMF.Items.Strings[cbMF.ItemIndex] + '''';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';


end;

procedure TfrmQryRptBike.cbYearChange(Sender: TObject);
begin
  if cbYear.ItemIndex = 0 then
    cbYear2.Enabled := false
  else
    cbYear2.Enabled := true;
end;

procedure TfrmQryRptBike.BitBtn2Click(Sender: TObject);
begin
  try
    rptBike := TrptBike.Create(Self);
    rptBike.QR1.Preview;
  finally
    rptBike.Free;
  end;

end;

end.
