unit uPointView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, uCommonProcs,
  xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmPointView = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    lblStatus: TLabel;
    cboYear: TComboBox;
    cboMonth: TComboBox;
    cboStatus: TComboBox;
    btnQuery: TBitBtn;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    dtAppSDate: TDateTimePicker;
    dtAppEDate: TDateTimePicker;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SGrid: TStringGrid;
    XD: TXMLDocument;
    Label1: TLabel;
    edtPremiumAmt: TEdit;
    edtPointAmt: TEdit;
    Label6: TLabel;
    cboCommRate: TComboBox;
    Label7: TLabel;
    procedure btnQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cboCommRateChange(Sender: TObject);
  private
    { Private declarations }
    procedure requestQuoteList;
    procedure parseXML;
  public
    { Public declarations }
  end;

var
  frmPointView: TfrmPointView;

implementation

{$R *.dfm}

procedure TfrmPointView.requestQuoteList;
var
  sl: TStringList;
begin

  try
    sl := TStringList.Create;
    sl.Add('dealer_id='+GetDealerID);
    if cboStatus.ItemIndex > 0 then
      sl.Add('status='+cboStatus.Items[cboStatus.ItemIndex]);

    if PageControl1.ActivePageIndex = 0 then // 연월기준
    begin
      if cboYear.ItemIndex > 0 then
        sl.Add('year='+cboYear.Items[cboYear.ItemIndex]);
      if cboMonth.ItemIndex > 0 then
        sl.Add('month='+cboMonth.Items[cboMonth.ItemIndex]);

      sl.Add('appsdate=');
      sl.Add('appedate=');

    end
    else if PageControl1.ActivePageIndex = 1 then // 날짜 기준
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

procedure TfrmPointView.parseXML;
var
  i, j, k, x: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Double;
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

    SGrid.Cells[0,i+1] := KNode.ChildNodes['uid'].Text; //'번호';
    SGrid.Cells[1,i+1] := KNode.ChildNodes['dealer_id'].Text; //'영업가족';
    SGrid.Cells[2,i+1] := KNode.ChildNodes['inscompany'].Text; //'보험사';
    SGrid.Cells[3,i+1] := KNode.ChildNodes['uname'].Text; //'고객명';
    SGrid.Cells[4,i+1] := KNode.ChildNodes['utel'].Text; //'연락처';
    SGrid.Cells[5,i+1] := KNode.ChildNodes['ucarno'].Text; //'차량번호';
    SGrid.Cells[6,i+1] := KNode.ChildNodes['jumin'].Text; //'주민번호';
    SGrid.Cells[7,i+1] := KNode.ChildNodes['uprice'].Text; //'보험료';
    SGrid.Cells[8,i+1] := KNode.ChildNodes['in_date'].Text; //'신청일';
    SGrid.Cells[9,i+1] := KNode.ChildNodes['status'].Text; //'상태';

    try
      if trim(KNode.ChildNodes['status'].Text) = '가입완료' then
        amt := amt + StrToFloat( EraseStr(EraseStr(KNode.ChildNodes['uprice'].Text, ','), '\'));
    except
    end;
  end;

  edtPremiumAmt.Text := '\' + StrConv(FloatToStr(amt));
  edtPointAmt.Text :=  '\' + StrConv(FloatToStr(Round(amt * (cboCommRate.itemIndex+1) * 0.01)));

end;



procedure TfrmPointView.btnQueryClick(Sender: TObject);
begin
  requestQuoteList;
end;

procedure TfrmPointView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPointView := nil;
  Action := caFree;
end;

procedure TfrmPointView.FormCreate(Sender: TObject);
var
  y, i: Integer;
begin
  cboYear.Items.Clear;
  y := StrToInt(FormatDateTime('YYYY', Now));
  cboYear.Items.Add('전체보기');
  for i := 0 to 29 do
  begin
    cboYear.Items.Add(IntToStr(y - i));
  end;

  dtAppSDate.DateTime := Now;
  dtAppEDate.DateTime := Now;

  cboYear.ItemIndex := 0;

  SGrid.Cells[0,0] := '번호';
  SGrid.Cells[1,0] := '영업가족';
  SGrid.Cells[2,0] := '보험사';
  SGrid.Cells[3,0] := '고객명';
  SGrid.Cells[4,0] := '연락처';
  SGrid.Cells[5,0] := '차량번호';
  SGrid.Cells[6,0] := '주민번호';
  SGrid.Cells[7,0] := '보험료';
  SGrid.Cells[8,0] := '신청일';
  SGrid.Cells[9,0] := '상태';



end;

procedure TfrmPointView.PageControl1Change(Sender: TObject);
begin
  lblStatus.Parent := PageControl1.ActivePage;
  cboStatus.Parent := PageControl1.ActivePage;
  btnQuery.Parent := PageControl1.ActivePage;
end;

procedure TfrmPointView.cboCommRateChange(Sender: TObject);
begin
  if trim(edtPremiumAmt.Text) = '' then exit;
  
  edtPointAmt.Text :=  '\'
                      + StrConv(
                                FloatToStr(
                                         Round(
                                               StrToFloat(
                                                        EraseStr(
                                                                 EraseStr(edtPremiumAmt.Text, ',')
                                                        ,'\')
                                                ) * (cboCommRate.itemIndex+1) * 0.01)
                                         )
                                );

end;

end.
