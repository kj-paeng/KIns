unit uPopupCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmPopupCust = class(TForm)
    Query1: TQuery;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1jumin_no: TStringField;
    Query1customer_name: TStringField;
    Query1tel_no: TStringField;
    Query1address_detail: TStringField;
    Query1customer_id: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    sKey, sName, sTableName: String;
  end;

var
  frmPopupCust: TfrmPopupCust;

implementation

{$R *.DFM}

procedure TfrmPopupCust.BitBtn3Click(Sender: TObject);
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

procedure TfrmPopupCust.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    BitBtn3Click(nil);

end;

end.
