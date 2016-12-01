unit uPartCode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, BDE, ExtCtrls, DBCtrls, Navbtn,
  Buttons, Mask, SearchCD, IniFiles, Jpeg, Clipbrd, ImgList;

type
  TfrmPartCode = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
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
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
    procedure fillCategory;
  public
    { Public declarations }

  end;

var
  frmPartCode: TfrmPartCode;

implementation

uses uDM, uPartCodeInput, uPartCategory;

{$R *.DFM}

procedure TfrmPartCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPartCode := nil;
  Action:=caFree;
end;

procedure TfrmPartCode.FormActivate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Active := true;

  fillCategory;
     
end;

procedure TfrmPartCode.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPartCode.Button3Click(Sender: TObject);
begin
  try
    frmPartCodeInput := TfrmPartCodeInput.Create(Self);
    frmPartCodeInput.nextAction := 'insert';
    frmPartCodeInput.ShowModal;
    Table1.Refresh;
  finally
    frmPartCodeInput.Free;
  end;

end;

procedure TfrmPartCode.Button4Click(Sender: TObject);
begin
  try
    frmPartCodeInput := TfrmPartCodeInput.Create(Self);
    frmPartCodeInput.nextAction := 'edit';
    frmPartCodeInput.curSeq := Table1.FieldByName('SEQ').AsInteger;
    frmPartCodeInput.ShowModal;
    Table1.Refresh;
  finally
    frmPartCodeInput.Free;
  end;
end;

procedure TfrmPartCode.Button5Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmPartCode.SpeedButton3Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PART_PHOTO1.Clear;
  Table1.Post;
end;

procedure TfrmPartCode.SpeedButton5Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PART_PHOTO2.Clear;
  Table1.Post;
end;

procedure TfrmPartCode.BitBtn3Click(Sender: TObject);
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

procedure TfrmPartCode.fillCategory;
var
  i: Integer;
begin
  ComboBox1.Items.Clear;
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT CATEGORYNAME FROM PARTCATEGORY');
  Query1.Open;

  Query1.First;
  for i := 0 to Query1.RecordCount - 1 do
  begin
    ComboBox1.Items.Add(Query1.FieldByName('CATEGORYNAME').AsString);
    Query1.Next;
  end;
  ComboBox1.ItemIndex := 0;
end;

procedure TfrmPartCode.BitBtn2Click(Sender: TObject);
begin
  try
    frmPartCategory := TfrmPartCategory.Create(Self);
    frmPartCategory.ShowModal;
  finally
    frmPartCategory.Free;
  end;

  fillCategory;

end;

end.
