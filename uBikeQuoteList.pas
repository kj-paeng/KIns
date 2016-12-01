unit uBikeQuoteList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, Buttons, ExtCtrls, xmldom, XMLIntf,
  msxmldom, XMLDoc, uCommonProcs;

type
  TfrmBikeQuoteList = class(TForm)
    SGrid: TStringGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    XD: TXMLDocument;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cboYear: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cboMonth: TComboBox;
    Label4: TLabel;
    dtAppSDate: TDateTimePicker;
    Label5: TLabel;
    dtAppEDate: TDateTimePicker;
    cboStatus: TComboBox;
    lblStatus: TLabel;
    btnQuery: TBitBtn;
    BitBtn2: TBitBtn;
    procedure btnQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    procedure requestQuoteList;
    procedure parseXML;

  public
    { Public declarations }
  end;

var
  frmBikeQuoteList: TfrmBikeQuoteList;

implementation

{$R *.dfm}

procedure TfrmBikeQuoteList.requestQuoteList;
var
  sl: TStringList;
begin

  try
    sl := TStringList.Create;
    sl.Add('dealer_id='+GetDealerID);
    if cboStatus.ItemIndex > 0 then
      sl.Add('status='+cboStatus.Items[cboStatus.ItemIndex]);

    if PageControl1.ActivePageIndex = 0 then // ��������
    begin
      if cboYear.ItemIndex > 0 then
        sl.Add('year='+cboYear.Items[cboYear.ItemIndex]);
      if cboMonth.ItemIndex > 0 then
        sl.Add('month='+cboMonth.Items[cboMonth.ItemIndex]);

      sl.Add('appsdate=');
      sl.Add('appedate=');

    end
    else if PageControl1.ActivePageIndex = 1 then // ��¥ ����
    begin
      sl.Add('year=');
      sl.Add('month=');
      sl.Add('appsdate='+FormatDateTime('YYYYMMDD', dtAppSDate.Date));
      sl.Add('appedate='+FormatDateTime('YYYYMMDD', dtAppEDate.Date));
    end;

    CallService(GET_BIKE_QUOTE_LIST_1005, sl, XD);
    parseXML;

  finally
    sl.Free;
  end;

end;

procedure TfrmBikeQuoteList.parseXML;
var
  i, j, k, x: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Integer;
begin

  if not XD.Active then exit;

  k := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count;
  if k = 0 then
  begin
    SGrid.RowCount := 2;

    for x := 0 to 9 do
      SGrid.Cells[x, 1] := '';

  end
  else
    SGrid.RowCount := k+1;


  for i := 0 to k - 1 do
  begin
    KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

    SGrid.Cells[0,i+1] := KNode.ChildNodes['uid'].Text; //'��ȣ';
    SGrid.Cells[1,i+1] := KNode.ChildNodes['dealer_id'].Text; //'��������';
    SGrid.Cells[2,i+1] := KNode.ChildNodes['inscompany'].Text; //'�����';
    SGrid.Cells[3,i+1] := KNode.ChildNodes['uname'].Text; //'����';
    SGrid.Cells[4,i+1] := KNode.ChildNodes['utel'].Text; //'����ó';
    SGrid.Cells[5,i+1] := KNode.ChildNodes['ucarno'].Text; //'������ȣ';
    SGrid.Cells[6,i+1] := KNode.ChildNodes['jumin'].Text; //'�ֹι�ȣ';
    SGrid.Cells[7,i+1] := KNode.ChildNodes['uprice'].Text; //'�����';
    SGrid.Cells[8,i+1] := KNode.ChildNodes['in_date'].Text; //'��û��';
    SGrid.Cells[9,i+1] := KNode.ChildNodes['status'].Text; //'����';

  end;

end;



procedure TfrmBikeQuoteList.btnQueryClick(Sender: TObject);
begin
  requestQuoteList;
end;

procedure TfrmBikeQuoteList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmBikeQuoteList := nil;
  Action := caFree;
end;

procedure TfrmBikeQuoteList.FormCreate(Sender: TObject);
var
  y, i: Integer;
begin
  cboYear.Items.Clear;
  y := StrToInt(FormatDateTime('YYYY', Now));
  cboYear.Items.Add('��ü����');
  for i := 0 to 29 do
  begin
    cboYear.Items.Add(IntToStr(y - i));
  end;

  dtAppSDate.DateTime := Now;
  dtAppEDate.DateTime := Now;

  cboYear.ItemIndex := 0;

  SGrid.Cells[0,0] := '��ȣ';
  SGrid.Cells[1,0] := '��������';
  SGrid.Cells[2,0] := '�����';
  SGrid.Cells[3,0] := '����';
  SGrid.Cells[4,0] := '����ó';
  SGrid.Cells[5,0] := '������ȣ';
  SGrid.Cells[6,0] := '�ֹι�ȣ';
  SGrid.Cells[7,0] := '�����';
  SGrid.Cells[8,0] := '��û��';
  SGrid.Cells[9,0] := '����';



end;

procedure TfrmBikeQuoteList.PageControl1Change(Sender: TObject);
begin
  lblStatus.Parent := PageControl1.ActivePage;
  cboStatus.Parent := PageControl1.ActivePage;
  btnQuery.Parent := PageControl1.ActivePage;
end;

end.
