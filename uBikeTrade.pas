unit uBikeTrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ComCtrls;

type
  TfrmBikeTrade = class(TForm)
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid4: TDBGrid;
    DataSource2: TDataSource;
    Query1jumin_no: TStringField;
    Query1customer_name: TStringField;
    Query2: TQuery;
    DataSource3: TDataSource;
    Query1address: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Query3: TQuery;
    DataSource4: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Query0: TQuery;
    Query0auto_no: TStringField;
    Query0buy_date: TDateField;
    Query0buyer_name: TStringField;
    Query0buy_price: TFloatField;
    Query0no_get_amt: TFloatField;
    Query0seller_name: TStringField;
    DataSource0: TDataSource;
    qryTemp: TQuery;
    dtTrade: TDateTimePicker;
    maskAmt: TMaskEdit;
    maskNoGetAmt: TMaskEdit;
    mmCondition: TMemo;
    Query3bike_id: TStringField;
    Query3vin: TStringField;
    Query3model: TStringField;
    Query3plate_no: TStringField;
    Table1: TTable;
    Query0model: TStringField;
    Edit5: TEdit;
    Edit6: TEdit;
    Query0buyer_id: TStringField;
    Query0seller_id: TStringField;
    Query1customer_id: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBikeTrade: TfrmBikeTrade;

implementation

{$R *.dfm}

procedure TfrmBikeTrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmBikeTrade := nil;
  Action := caFree;
end;

procedure TfrmBikeTrade.FormCreate(Sender: TObject);
begin
  dtTrade.DateTime := Now;
  if not Query0.Active then Query0.Open;
  if not Query1.Active then Query1.Open;
  if not Query2.Active then Query2.Open;
  if not Query3.Active then Query3.Open;
end;

procedure TfrmBikeTrade.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  Edit1.Text := Query1.FieldByName('Customer_name').AsString;
  Edit2.Text := Query1.FieldByName('Jumin_no').AsString;
end;

procedure TfrmBikeTrade.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  Edit3.Text := Query2.FieldByName('Customer_name').AsString;
  Edit4.Text := Query2.FieldByName('Jumin_no').AsString;
end;

procedure TfrmBikeTrade.BitBtn1Click(Sender: TObject);
var
  S: String;
begin

  if not Table1.Active then Table1.Open;
  Table1.Insert;
  Table1.FieldByName('auto_no').AsString := Query3.FieldByName('bike_id').AsString;
  Table1.FieldByName('buy_date').AsDateTime := dtTrade.DateTime;
  Table1.FieldByName('buyer_id').AsString := Query1.FieldByName('customer_id').AsString;
  Table1.FieldByName('buy_price').AsInteger := StrToInt(maskAmt.Text);
  Table1.FieldByName('condition').AsString := mmCondition.Lines.Text;
  Table1.FieldByName('no_get_amt').AsInteger := StrToInt(maskNoGetAmt.Text);
  Table1.FieldByName('seller_id').AsString := Query2.FieldByName('customer_id').AsString;
  Table1.Post;

  Query0.Close;
  Query0.Open;

end;

procedure TfrmBikeTrade.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
  Edit5.Text := Query3.FieldByName('bike_id').AsString;
  Edit6.Text := Query3.FieldByName('model').AsString;
end;

end.
