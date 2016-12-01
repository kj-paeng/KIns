unit uPartLookup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, BDE, ExtCtrls, DBCtrls, Navbtn,
  Buttons, Mask, SearchCD, IniFiles, ImgList;

type
  TfrmPartLookup = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Query1: TQuery;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Table1SEQ: TIntegerField;
    Table1CATEGORY: TStringField;
    Table1MODEL_NAME: TStringField;
    Table1PART_NAME: TStringField;
    Table1PART_NUMBER: TStringField;
    Table1BARCODE: TStringField;
    Table1PART_PHOTO1: TGraphicField;
    Table1PART_PHOTO2: TGraphicField;
    Table1STOCK: TIntegerField;
    Table1PSIZE: TStringField;
    Table1UNIT: TStringField;
    Table1PURCHASE_PRICE: TIntegerField;
    Table1SELL_PRICE: TIntegerField;
    Table1LABOUR_CHARGE: TIntegerField;
    Table1TAXIBLE: TStringField;
    Table1LOCATION: TStringField;
    Table1MEMO: TStringField;
    Table1ETC1: TStringField;
    Table1ETC2: TStringField;
    Table1ETC3: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
      sPART_NAME: String;
      iPURCHASE_PRICE: Integer;
      iLABOUR_CHARGE: Integer;
      iSELL_PRICE: Integer;
  end;

var
  frmPartLookup: TfrmPartLookup;

implementation

uses uDM;

{$R *.DFM}

procedure TfrmPartLookup.FormActivate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Active := true;
end;

procedure TfrmPartLookup.BitBtn1Click(Sender: TObject);
begin
  sPART_NAME := Table1.FieldByName('PART_NAME').AsString;
  iPURCHASE_PRICE := Table1.FieldByName('PURCHASE_PRICE').AsInteger;
  iLABOUR_CHARGE := Table1.FieldByName('LABOUR_CHARGE').AsInteger;
  iSELL_PRICE := Table1.FieldByName('SELL_PRICE').AsInteger;

  Close;
end;


procedure TfrmPartLookup.BitBtn3Click(Sender: TObject);
var
  S: String;
begin
  Table1.Filtered := false;
  S := 'CATEGORY = ''' + ComboBox1.Text + ''' ';
  if not (trim(Edit1.Text) = '') then S := S + ' AND MODEL_NAME = ''' + trim(Edit1.Text) + '*''';
  if not (trim(Edit2.Text) = '') then S := S + ' AND PART_NAME = ''' + trim(Edit2.Text) + '*''';

  Table1.filter := S;
  Table1.Filtered := true;
end;

end.
