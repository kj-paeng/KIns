unit uRepairCustList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmRepairCustList = class(TForm)
    Query1: TQuery;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Query1jumin_no: TStringField;
    Query1customer_name: TStringField;
    Query1tel_no: TStringField;
    Query1address_detail: TStringField;
    Query1customer_id: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    Query3: TQuery;
    Query3customer_id: TStringField;
    Query3seq: TIntegerField;
    Query3repair_desc: TStringField;
    Query3repair_amt: TFloatField;
    Query3technician: TStringField;
    Query3repair_date: TStringField;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2customer_id: TStringField;
    Query2seq: TIntegerField;
    Query2bike_number: TStringField;
    Query2bike_vin: TStringField;
    Query2bike_year: TStringField;
    Query2engine_size: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sKey, sName, sTableName: String;
    custID: String;
    repairSeq: Integer;
    bike_number: String;
    bike_vin: String;
    bike_year: String;
  end;

var
  frmRepairCustList: TfrmRepairCustList;

implementation

{$R *.DFM}

procedure TfrmRepairCustList.BitBtn3Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT customer_id, jumin_no, customer_name, tel_no, address_detail ';
  S := S + ' FROM customer ';
  S := S + ' WHERE customer_name LIKE ''%' + Trim(Edit1.Text) + '%'' ';
  S := S + ' ORDER BY customer_name';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmRepairCustList.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    BitBtn3Click(nil);

end;

procedure TfrmRepairCustList.Query1AfterScroll(DataSet: TDataSet);
begin
  Query2.Close;
  Query2.ParamByName('customer_id').AsString := Query1.fieldByName('customer_id').AsString;
  Query2.Open;
end;

procedure TfrmRepairCustList.BitBtn1Click(Sender: TObject);
begin
  custID := Query1.FieldByName('customer_id').AsString;
  bike_number := Query2.FieldByName('bike_number').AsString;
  bike_vin := Query2.FieldByName('bike_vin').AsString;
  bike_year := Query2.FieldByName('bike_year').AsString;
  repairSeq := Query3.FieldByName('seq').AsInteger;
end;


procedure TfrmRepairCustList.Query2AfterScroll(DataSet: TDataSet);
begin
  Query3.Close;
  Query3.ParamByName('customer_id').AsString := Query2.fieldByName('customer_id').AsString;
  Query3.ParamByName('bike_number').AsString := Query2.fieldByName('bike_number').AsString;

  Query3.Open;
end;

end.
