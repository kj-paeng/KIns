unit uVehicleRegist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, Jpeg, Clipbrd,
  Grids, DBGrids, ComCtrls;

type
  TfrmVehicleRegist = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    Panel16: TPanel;
    Panel23: TPanel;
    Panel18: TPanel;
    Panel22: TPanel;
    DBEdit28: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Panel28: TPanel;
    Panel27: TPanel;
    Panel26: TPanel;
    Panel31: TPanel;
    Panel30: TPanel;
    DBEdit38: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Panel25: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Table1VIN: TStringField;
    Table1ENGINE_ID: TStringField;
    Table1PLATE_NO: TStringField;
    Table1BUILT_YEAR: TStringField;
    Table1ENGINE_SIZE: TStringField;
    Table1BUILT_COUNTRY: TStringField;
    Table1BUILT_COMPANY: TStringField;
    Table1MODEL: TStringField;
    Table1SELL_PRICE: TIntegerField;
    Table1PURCHASE_PRICE: TIntegerField;
    Table1PHOTO1: TGraphicField;
    Table1PHOTO2: TGraphicField;
    Table1STATUS: TStringField;
    Table1STOCK: TIntegerField;
    Table1MEMO: TMemoField;
    Table1BIKE_CODE: TStringField;
    DBComboBox2: TDBComboBox;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBImage1: TDBImage;
    Panel5: TPanel;
    DBImage2: TDBImage;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Table1SEQ: TIntegerField;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Table1AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVehicleRegist: TfrmVehicleRegist;

implementation

uses uDM;

{$R *.dfm}

procedure TfrmVehicleRegist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmVehicleRegist := nil;
  Action := caFree;
end;

procedure TfrmVehicleRegist.FormCreate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Open;
end;

procedure TfrmVehicleRegist.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmVehicleRegist.SpeedButton1Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if Table1PHOTO1.IsNull and OpenDialog1.Execute then
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

procedure TfrmVehicleRegist.SpeedButton2Click(Sender: TObject);
var
  picname: String;
  JP: TJPegImage;
  CB: TClipboard;
begin

  if Table1PHOTO2.IsNull and OpenDialog2.Execute then
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

procedure TfrmVehicleRegist.SpeedButton4Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PHOTO2.Clear;
  Table1.Post;
end;

procedure TfrmVehicleRegist.SpeedButton3Click(Sender: TObject);
begin
  Table1.Edit;
  Table1PHOTO1.Clear;
  Table1.Post;
end;

procedure TfrmVehicleRegist.BitBtn2Click(Sender: TObject);
begin
  Query1.Close;
  Query1.Open;

  Table1.Append;
  Table1.FieldByName('SEQ').AsInteger := Query1.FieldByName('NSEQ').AsInteger;
  DBEdit28.SetFocus;

end;

procedure TfrmVehicleRegist.BitBtn3Click(Sender: TObject);
begin
  try
    Table1.Post;
  except

  end;
end;

procedure TfrmVehicleRegist.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('차량정보를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmVehicleRegist.Table1AfterInsert(DataSet: TDataSet);
begin
  Table1.FieldByName('STOCK').AsInteger := 1;
end;

end.
