unit uQryPartStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  Mask, DBCtrls;

type
  TfrmQryPartStock = class(TForm)
    Query1: TQuery;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pgcType: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label8: TLabel;
    cbStock: TComboBox;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    pnlPrintPanel: TPanel;
    btnPreview: TBitBtn;
    btnPrint: TBitBtn;
    Query1seq: TIntegerField;
    Query1part_name: TStringField;
    Query1model_name: TStringField;
    Query1category: TStringField;
    Query1part_number: TStringField;
    Query1sell_price: TIntegerField;
    Query1purchase_price: TIntegerField;
    Query1stock: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure pgcTypeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sKey, sName, sTableName: String;
    procedure setPrintPanelVisible(v: Boolean);
    procedure setPageControlIndex(i: Integer);
  end;

var
  frmQryPartStock: TfrmQryPartStock;

implementation

uses uQryBikeStock, uRptPart;

{$R *.DFM}

procedure TfrmQryPartStock.setPrintPanelVisible(v: Boolean);
begin
  pnlPrintPanel.Visible := v;
end;

procedure TfrmQryPartStock.setPageControlIndex(i: Integer);  // i := 0, 1,2,3 ...
begin
  pgcType.ActivePageIndex := i;
  case i of
  0: setPrintPanelVisible(false);
  1: setPrintPanelVisible(true);
  end;
end;

procedure TfrmQryPartStock.BitBtn3Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT seq, part_name, model_name, category, part_number, sell_price, purchase_price, stock from part ';
  S := S + ' WHERE part_name LIKE ''%' + Trim(Edit1.Text) + '%'' ';

  case cbStock.ItemIndex of
  0: begin  // less than
      S := S + ' AND STOCK <= ' + Edit2.Text ;
    end;
  1: begin  // equal
      S := S + ' AND STOCK = ' + Edit2.Text ;

    end;
  2: begin  // more than
      S := S + ' AND STOCK >= ' + Edit2.Text ;

    end;
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmQryPartStock.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    BitBtn3Click(nil);

end;

procedure TfrmQryPartStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryPartStock := nil;
  Action := caFree;
end;

procedure TfrmQryPartStock.BitBtn1Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT seq, part_name, model_name, category, part_number, sell_price, purchase_price, stock from part ';
  S := S + ' WHERE part_name LIKE ''%' + Trim(Edit1.Text) + '%'' ';

{
  case cbStock.ItemIndex of
  0: begin  // less than
      S := S + ' AND STOCK <= ' + Edit2.Text ;
    end;
  1: begin  // equal
      S := S + ' AND STOCK = ' + Edit2.Text ;

    end;
  2: begin  // more than
      S := S + ' AND STOCK >= ' + Edit2.Text ;

    end;
  end;
}
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';
end;

procedure TfrmQryPartStock.FormCreate(Sender: TObject);
begin
  pnlPrintPanel.BevelOuter := bvNone;

end;

procedure TfrmQryPartStock.btnPreviewClick(Sender: TObject);
begin
  try
    rptPart := TrptPart.Create(Self);
    rptPart.QR1.Preview;
  finally
    rptPart.Free;
  end;
end;

procedure TfrmQryPartStock.btnPrintClick(Sender: TObject);
begin
  try
    rptPart := TrptPart.Create(Self);
    rptPart.QR1.Print;
  finally
    rptPart.Free;
  end;
end;

procedure TfrmQryPartStock.pgcTypeChange(Sender: TObject);
begin
  case pgcType.ActivePageIndex of
  0: setPrintPanelVisible(false);
  1: setPrintPanelVisible(true);
  end;
end;

end.
