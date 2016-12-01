unit uConverter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  ComCtrls, StrUtils, Dateedit, DBTables;

type
  TfrmConverter = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    Query1: TQuery;
    Panel3: TPanel;
    eFileName: TEdit;
    btnFChoose: TButton;
    OpenDialog1: TOpenDialog;
    Label10: TLabel;
    Button7: TButton;
    PB: TProgressBar;
    ComboBox1: TComboBox;
    BitBtn8: TBitBtn;
    qryMaxSeq: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnFChooseClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ConnectToExcel;
    procedure LoadData;
    procedure GetFieldInformation;
    procedure UploadPartCode;

 public
    { Public declarations }
  end;

var
  frmConverter: TfrmConverter;

implementation
{$R *.dfm}

uses typinfo;


{ TForm1 }

procedure TfrmConverter.ConnectToExcel;
var strConn :  widestring;
begin
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + eFileName.Text + ';' +
           'Extended Properties=Excel 8.0;';

  AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;
    AdoConnection1.GetTableNames(ComboBox1.Items,True);
  except
    ShowMessage('엑셀파일 연결 오류');
    raise;
  end;
end;(*ConnectToExcel*)

procedure TfrmConverter.LoadData;
begin

  if not AdoConnection1.Connected then ConnectToExcel;

  AdoQuery1.Close;
  AdoQuery1.SQL.Text := 'SELECT * FROM ['+ComboBox1.Items.Strings[0]+']';
  try
    AdoQuery1.Open;
  except
    ShowMessage('엑셀 데이타 읽기 실패');
    raise;
  end;
end;

procedure TfrmConverter.GetFieldInformation;
var
  i   : integer;
  ft     : TFieldType;
  sft    : string;
  fname  : string;
begin

  for i := 0 to AdoQuery1.Fields.Count - 1 do
  begin
    ft := AdoQuery1.Fields[i].DataType;
    sft := GetEnumName(TypeInfo(TFieldType), Integer(ft));
    fname:= AdoQuery1.Fields[i].FieldName;

  end;
end;

procedure TfrmConverter.UploadPartCode;
var
  i: Integer;
  S: String;
  m: Integer;
begin
  PB.Max := ADOQuery1.RecordCount;

  try
    for i := 1 to ADOQuery1.RecordCount - 1 do   // "0" is title names
    begin
      PB.Position := i + 1;

      qryMaxSeq.Close;
      qryMaxSeq.Open;

      if qryMaxSeq.FieldByName('NSEQ').AsString = '' then
        m := 0
      else
        m := qryMaxSeq.FieldByName('NSEQ').AsInteger;


      Query1.SQL.Clear;
      S := 'INSERT INTO PART (SEQ,CATEGORY,MODEL_NAME,PART_NAME,PART_NUMBER,BARCODE,STOCK,PSIZE,UNIT,PURCHASE_PRICE, SELL_PRICE,LABOUR_CHARGE,TAXIBLE,LOCATION,MEMO) ';
      S := S + 'VALUES (:SEQ,:CATEGORY,:MODEL_NAME,:PART_NAME,:PART_NUMBER,:BARCODE,:STOCK,:PSIZE,:UNIT,:PURCHASE_PRICE, :SELL_PRICE,:LABOUR_CHARGE,:TAXIBLE,:LOCATION,:MEMO)';

      Query1.SQL.Add(S);

      Query1.ParamByName('SEQ').AsInteger := m;
      Query1.ParamByName('CATEGORY').AsString := ADOQuery1.Fields[0].AsString;
      Query1.ParamByName('MODEL_NAME').AsString := ADOQuery1.Fields[1].AsString;
      Query1.ParamByName('PART_NAME').AsString := ADOQuery1.Fields[2].AsString;
      Query1.ParamByName('PART_NUMBER').AsString := ADOQuery1.Fields[3].AsString;
      Query1.ParamByName('BARCODE').AsString := ADOQuery1.Fields[4].AsString;
      Query1.ParamByName('STOCK').AsInteger := ADOQuery1.Fields[5].AsInteger;
      Query1.ParamByName('PSIZE').AsString := ADOQuery1.Fields[6].AsString;
      Query1.ParamByName('UNIT').AsString := ADOQuery1.Fields[7].AsString;
      Query1.ParamByName('PURCHASE_PRICE').AsInteger := ADOQuery1.Fields[8].AsInteger;
      Query1.ParamByName('SELL_PRICE').AsInteger := ADOQuery1.Fields[9].AsInteger;
      Query1.ParamByName('LABOUR_CHARGE').AsInteger := ADOQuery1.Fields[10].AsInteger;
      Query1.ParamByName('TAXIBLE').AsString := ADOQuery1.Fields[11].AsString;
      Query1.ParamByName('LOCATION').AsString := ADOQuery1.Fields[12].AsString;
      Query1.ParamByName('MEMO').AsString := ADOQuery1.Fields[13].AsString;



      Query1.ExecSQL;

      ADOQuery1.Next;
    end;
    ShowMessage('작업완료 되었습니다.');

  except
    ShowMessage('자료입력도중 에러 발생. 관리자에게 문의하십시요.');
  end;
end;

procedure TfrmConverter.FormCreate(Sender: TObject);
begin
  AdoConnection1.LoginPrompt:=False;
  AdoQuery1.Connection:=AdoConnection1;
  DataSource1.DataSet:=AdoQuery1;


end;

procedure TfrmConverter.Button3Click(Sender: TObject);
begin
  ConnectToExcel;
end;

procedure TfrmConverter.btnFChooseClick(Sender: TObject);
var
  exname: String;
begin
  if OpenDialog1.Execute then
  begin
    exname := OpenDialog1.FileName;
    eFileName.Text := exname;
  end;
end;

procedure TfrmConverter.Button7Click(Sender: TObject);
begin

  ConnectToExcel;
  LoadData;
  GetFieldInformation;
  UploadPartCode;

end;

procedure TfrmConverter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmConverter := nil;
  Action := caFree;
end;

end.
