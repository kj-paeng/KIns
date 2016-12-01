unit uRepairCustParts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  ExtCtrls;

type
  TfrmRepairCustParts = class(TForm)
    Table1: TTable;
    Table1CUSTOMER_ID: TStringField;
    Table1PART_NAME: TStringField;
    Table1PART_COUNT: TFloatField;
    Table1UNIT_PRICE: TFloatField;
    Table1LABOUR_CHARGE: TFloatField;
    Table1DISCOUNT: TFloatField;
    Table1LIST_PRICE: TFloatField;
    Table1VAT: TFloatField;
    Table1TOTAL_AMT: TFloatField;
    Table1MEMO: TStringField;
    DataSource1: TDataSource;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel21: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    SpeedButton1: TSpeedButton;
    Table1SEQ: TIntegerField;
    Table1PART_SEQ: TIntegerField;
    qrySeq1: TQuery;
    procedure FormActivate(Sender: TObject);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }

    procedure setDefaultValues;
  public
    { Public declarations }
    repairSeq: Integer;
    custID: String;
    partSeq: Integer;
    whatToDo: String; // insert, edit
    taxHandling: String; // 포함, 별도, 없음
  end;

var
  frmRepairCustParts: TfrmRepairCustParts;

implementation

uses uPartLookup;

{$R *.dfm}

procedure TfrmRepairCustParts.setDefaultValues;
var
  unitprice, qty, totalprice, lcharge, pureprice, purelcharge, totalamt: Integer;
begin
  if taxHandling = '포함' then
  begin
    {
      단가 * 개수 = 총가격
      총가격 - 공임 = 순수 물건값
      순수물건값 * 0.9 = 세전 물건값
      공임 * 0.9 = 세전 공임
      총금액 = 세전물건값 + 세전 공임 + 물건값부가세 + 공임부가세 - 할인 금액
    }
    unitprice := Table1.FieldByName('UNIT_PRICE').AsInteger;
    qty := Table1.FieldByName('PART_COUNT').AsInteger;
    lcharge := Table1.FieldByName('LABOUR_CHARGE').AsInteger;

    totalprice := unitprice * qty + lcharge;

    Table1.FieldByName('LIST_PRICE').AsInteger := round(totalprice * 0.9);
         //round(Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger * 0.9);
    Table1.FieldByName('VAT').AsInteger := round(totalprice * 0.1);
         //round(Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger * 0.1);
    Table1.FieldByName('TOTAL_AMT').AsInteger := totalprice - Table1.FieldByName('DISCOUNT').AsInteger;

         {Table1.FieldByName('LIST_PRICE').AsInteger
         + Table1.FieldByName('VAT').AsInteger
         + Table1.FieldByName('LABOUR_CHARGE').AsInteger
         - Table1.FieldByName('DISCOUNT').AsInteger;
         }
  end
  else if taxHandling = '별도' then
  begin
    Table1.FieldByName('LIST_PRICE').AsInteger :=
         round(Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger);
    Table1.FieldByName('VAT').AsInteger := round(
             (Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger
              +  Table1.FieldByName('LABOUR_CHARGE').AsInteger)* 0.1);
    Table1.FieldByName('TOTAL_AMT').AsInteger :=
         Table1.FieldByName('LIST_PRICE').AsInteger
         + Table1.FieldByName('VAT').AsInteger
         + Table1.FieldByName('LABOUR_CHARGE').AsInteger
         - Table1.FieldByName('DISCOUNT').AsInteger;
  end
  else if taxHandling = '없음' then 
  begin
    Table1.FieldByName('LIST_PRICE').AsInteger :=
         round(Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger);
    Table1.FieldByName('VAT').AsInteger := 0;
    Table1.FieldByName('TOTAL_AMT').AsInteger :=
         Table1.FieldByName('LIST_PRICE').AsInteger
         + Table1.FieldByName('VAT').AsInteger
         + Table1.FieldByName('LABOUR_CHARGE').AsInteger
         - Table1.FieldByName('DISCOUNT').AsInteger;
  end
  else
  begin
    Table1.FieldByName('LIST_PRICE').AsInteger :=
         round(Table1.FieldByName('PART_COUNT').AsInteger * Table1.FieldByName('UNIT_PRICE').AsInteger);
    Table1.FieldByName('VAT').AsInteger := 0;
    Table1.FieldByName('TOTAL_AMT').AsInteger :=
         Table1.FieldByName('LIST_PRICE').AsInteger
         + Table1.FieldByName('VAT').AsInteger
         + Table1.FieldByName('LABOUR_CHARGE').AsInteger
         - Table1.FieldByName('DISCOUNT').AsInteger;
  end;
end;

procedure TfrmRepairCustParts.FormActivate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Active := true;
  if whatToDo = 'insert' then
  begin

    qrySeq1.ParamByName('CUSTOMER_ID').AsString := custID;
    qrySeq1.ParamByName('SEQ').AsInteger := repairSeq;
    qrySeq1.Close;
    qrySeq1.Open;

    Table1.Append;
    Table1.FieldByName('PART_SEQ').AsInteger := qrySeq1.FieldByName('NSEQ').AsInteger;

  end;  
  if whatToDo = 'edit' then
  begin
    Table1.Locate('SEQ;CUSTOMER_ID;PART_SEQ', VarArrayOf([repairSeq, custID, partSeq]), []);
    Table1.Edit;
  end;
  
end;

procedure TfrmRepairCustParts.Table1BeforePost(DataSet: TDataSet);
begin
  Table1.FieldByName('SEQ').AsInteger := repairSeq;
  Table1.FieldByName('CUSTOMER_ID').AsString := custID;
end;

procedure TfrmRepairCustParts.BitBtn4Click(Sender: TObject);
begin

  Table1.Post;
  
  qrySeq1.ParamByName('CUSTOMER_ID').AsString := custID;
  qrySeq1.ParamByName('SEQ').AsInteger := repairSeq;
  qrySeq1.Close;
  qrySeq1.Open;

  Table1.Append;
  Table1.FieldByName('PART_SEQ').AsInteger := qrySeq1.FieldByName('NSEQ').AsInteger;


  
end;

procedure TfrmRepairCustParts.BitBtn5Click(Sender: TObject);
begin
{
  qrySeq1.ParamByName('CUSTOMER_ID').AsString := custID;
  qrySeq1.ParamByName('SEQ').AsInteger := repairSeq;
  qrySeq1.Close;
  qrySeq1.Open;

  Table1.FieldByName('PART_SEQ').AsInteger := qrySeq1.FieldByName('NSEQ').AsInteger;
}
  Table1.Post;
  Close;


end;

procedure TfrmRepairCustParts.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepairCustParts.SpeedButton1Click(Sender: TObject);
begin
  
  try
    frmPartLookup := TfrmPartLookup.Create(Self);
    frmPartLookup.ShowModal;
    Table1.FieldByName('PART_NAME').AsString := frmPartLookup.Table1.FieldByName('PART_NAME').AsString;
    Table1.FieldByName('UNIT_PRICE').AsInteger := frmPartLookup.Table1.FieldByName('SELL_PRICE').AsInteger;
    Table1.FieldByName('LABOUR_CHARGE').AsInteger := frmPartLookup.Table1.FieldByName('LABOUR_CHARGE').AsInteger;
    //taxHandling := frmPartLookup.Table1.FieldByName('TAXIBLE').AsString;
  finally
    frmPartLookup.Free;
  end;
  DBEdit2.SetFocus;
end;

procedure TfrmRepairCustParts.DBEdit2Exit(Sender: TObject);
begin
  setDefaultValues;
end;

procedure TfrmRepairCustParts.DBEdit5Exit(Sender: TObject);
begin
  setDefaultValues;
end;

procedure TfrmRepairCustParts.DBEdit4Exit(Sender: TObject);
begin
  setDefaultValues;
end;

procedure TfrmRepairCustParts.DBEdit3Exit(Sender: TObject);
begin
  setDefaultValues;
end;

end.
