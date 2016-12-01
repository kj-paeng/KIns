unit uPartCodeInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, Grids, DBGrids, ExtCtrls, DB,
  DBTables, Jpeg, Clipbrd;

type
  TfrmPartCodeInput = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBImage1: TDBImage;
    Label6: TLabel;
    DBImage2: TDBImage;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Query1: TQuery;
    Button1: TButton;
    BitBtn1: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn2: TBitBtn;
    Table1: TTable;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    Qry: TQuery;
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
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure fillCategory;

  public
    { Public declarations }
    nextAction: String; // 'insert or edit';
    curSeq: Integer;
  end;

var
  frmPartCodeInput: TfrmPartCodeInput;

implementation

{$R *.dfm}

procedure TfrmPartCodeInput.fillCategory;
var
  S: String;
  i: Integer;
begin
  Query1.Close;
  Query1.SQL.Add('SELECT CATEGORYNAME FROM PARTCATEGORY');
  Query1.Open;

  DBComboBox1.Items.Clear;
  DBComboBox1.Items.Add('기본');

  for i := 0 to Query1.RecordCount - 1 do
  begin
    DBComboBox1.Items.Add(Query1.FieldByName('CATEGORYNAME').AsString);
    Query1.Next;
  end;
end;

procedure TfrmPartCodeInput.FormCreate(Sender: TObject);
begin
  fillCategory;
  Table1.Active := true;
end;

procedure TfrmPartCodeInput.BitBtn2Click(Sender: TObject);
begin
  Qry.Close;
  Qry.Open;

  Table1.Append;
  Table1.FieldByName('SEQ').AsInteger := Qry.FieldByName('NSEQ').AsInteger;

end;

procedure TfrmPartCodeInput.Button1Click(Sender: TObject);
begin
  if Table1.State in [dsEdit, dsInsert] then
  begin
    try
      Table1.Post;
      if MessageDlg('저장되었습니다. 부품코드 입력을 하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
      begin
        Qry.Close;
        Qry.Open;

        Table1.Append;
        Table1.FieldByName('SEQ').AsInteger := Qry.FieldByName('NSEQ').AsInteger;
        //Table1.Insert;
        DBComboBox1.SetFocus;
      end;
    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TfrmPartCodeInput.BitBtn1Click(Sender: TObject);
begin
  if Table1.State in [dsInsert] then
    Table1.Close;
  Close;
end;

procedure TfrmPartCodeInput.SpeedButton4Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if Table1PART_PHOTO1.IsNull and OpenDialog1.Execute then
  begin
    if not ( Table1.State in [dsInsert, dsEdit]) then Table1.Edit;

    JP := TJpegImage.Create;
    CB := TClipboard.Create;
    picname := OpenDialog1.FileName;
    try
      JP.LoadFromFile(picname);
      CB.Assign(JP);
      DBImage1.PasteFromClipboard;
    finally
      JP.Free;
      CB.Free;
    end;

    Table1.Post;
  end;

end;

procedure TfrmPartCodeInput.SpeedButton1Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if Table1PART_PHOTO2.IsNull and OpenDialog2.Execute then
  begin
    if not ( Table1.State in [dsInsert, dsEdit]) then Table1.Edit;

    JP := TJpegImage.Create;
    CB := TClipboard.Create;
    picname := OpenDialog2.FileName;
    try
      JP.LoadFromFile(picname);
      CB.Assign(JP);
      DBImage2.PasteFromClipboard;
    finally
      JP.Free;
      CB.Free;
    end;

    Table1.Post;
  end;
end;

procedure TfrmPartCodeInput.SpeedButton5Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PART_PHOTO1.Clear;
  Table1.Post;
end;

procedure TfrmPartCodeInput.SpeedButton3Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PART_PHOTO2.Clear;
  Table1.Post;
end;

procedure TfrmPartCodeInput.FormShow(Sender: TObject);
begin
  if nextAction = 'insert' then
  begin

    Qry.Close;
    Qry.Open;

    if not Table1.Active then Table1.Active := true;

    Table1.Append;
    Table1.FieldByName('SEQ').AsInteger := Qry.FieldByName('NSEQ').AsInteger;

  end
  else if nextAction = 'edit' then
  begin
    Table1.Locate('SEQ', curSeq, [loCaseInsensitive]);
    Table1.Edit;
  end;
  DBComboBox1.SetFocus;
end;

end.
