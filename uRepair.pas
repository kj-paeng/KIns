unit uRepair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask,
  ComCtrls;

type
  TfrmRepair = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Table2: TTable;
    Table2REPAIR_DATE: TDateField;
    Table2REPAIR_DESC: TMemoField;
    Table2REPAIR_AMT: TCurrencyField;
    Table2NO_RECEIVED_AMT: TCurrencyField;
    Table2RECEIVED_AMT: TCurrencyField;
    Table2USED_PARTS_DESC: TMemoField;
    Table3: TTable;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Table3REPAIR_DATE: TDateField;
    Table3PART_ID: TStringField;
    Table3PART_COUNT: TFloatField;
    DataSource4: TDataSource;
    Query4: TQuery;
    Query4part_id: TStringField;
    Query4part_name: TStringField;
    Query4part_price: TFloatField;
    Query4part_get_price: TFloatField;
    Table3PARTNAME: TStringField;
    Table3UNITPRICE: TIntegerField;
    Table3TUNITAMT: TIntegerField;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button8: TButton;
    BitBtn1: TBitBtn;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dtRepairDate: TDateTimePicker;
    Table1: TTable;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Table2CUSTOMER_ID: TStringField;
    Table3CUSTOMER_ID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Table3CalcFields(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Table2BeforePost(DataSet: TDataSet);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Table3BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    custID: String;
  end;

var
  frmRepair: TfrmRepair;

implementation

{$R *.dfm}

procedure TfrmRepair.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRepair := nil;
  Action := caFree;
end;

procedure TfrmRepair.FormCreate(Sender: TObject);
begin
  if not Table1.Active then Table1.Open;
  if not Table2.Active then Table2.Open;
  if not Table3.Active then Table3.Open;
  if not Query4.Active then Query4.Open;

  dtRepairDate.DateTime := Now;

end;

procedure TfrmRepair.Table3CalcFields(DataSet: TDataSet);
begin
  Table3.FieldByName('TUNITAMT').AsInteger := Table3.FieldByName('PART_COUNT').AsInteger * Table3.FieldByName('UNITPRICE').AsInteger;
end;

procedure TfrmRepair.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Edit1.Text := Table1.FieldByName('customer_name').AsString;
end;

procedure TfrmRepair.Button1Click(Sender: TObject);
begin
  Table2.Append;
end;

procedure TfrmRepair.BitBtn1Click(Sender: TObject);
begin
  Close;

end;

procedure TfrmRepair.Button2Click(Sender: TObject);
begin
  if Table2.State in [dsEdit, dsInsert] then
  begin
    try             
      Table2.Post;
      MessageDlg('저장되었습니다.', mtInformation, [mbOK], 0);
    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;

  end;
end;

procedure TfrmRepair.Button3Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table2.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRepair.Table2BeforePost(DataSet: TDataSet);
begin
  Table2.FieldByName('REPAIR_DATE').AsDateTime := dtRepairDate.DateTime;
  Table2.FieldByName('CUSTOMER_ID').AsString := Table1.FieldByName('CUSTOMER_ID').AsString;

end;

procedure TfrmRepair.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  dtRepairDate.DateTime := Table2.FieldByName('REPAIR_DATE').AsDateTime;
end;

procedure TfrmRepair.Button4Click(Sender: TObject);
begin
  Table3.Append;
end;

procedure TfrmRepair.Button8Click(Sender: TObject);
begin
  if Table3.State in [dsEdit, dsInsert] then
  begin
    try             
      Table3.Post;
      MessageDlg('저장되었습니다.', mtInformation, [mbOK], 0);
    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;

  end;
end;

procedure TfrmRepair.Button6Click(Sender: TObject);
begin

  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table3.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRepair.Table3BeforePost(DataSet: TDataSet);
begin
  Table3.FieldByName('REPAIR_DATE').AsDateTime := Table2.FieldByName('REPAIR_DATE').AsDateTime;
  Table3.FieldByName('CUSTOMER_ID').AsString := Table1.FieldByName('CUSTOMER_ID').AsString;

end;

end.



