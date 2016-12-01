unit uAutoQuoteList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, Buttons, ExtCtrls, xmldom, XMLIntf,
  msxmldom, XMLDoc, uCommonProcs, Jpeg, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Printers;

type
  TfrmAutoQuoteList = class(TForm)
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
    CheckBox1: TCheckBox;
    pnlViewer: TPanel;
    HP: TIdHTTP;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    imgViewer: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    eINSUREDNAME: TEdit;
    Label6: TLabel;
    eCAR_NAME: TEdit;
    Label7: TLabel;
    eCAR_YEAR: TEdit;
    Label8: TLabel;
    ePLATENUM: TEdit;
    eINSURED_TEL: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    eINSURER: TEdit;
    Label11: TLabel;
    ePREMIUM: TEdit;
    procedure btnQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure requestQuoteList;
    procedure parseXML;
    procedure callImageUrl(fileName: String);

  public
    { Public declarations }
  end;

var
  frmAutoQuoteList: TfrmAutoQuoteList;

implementation

uses uProgressDisp;

{$R *.dfm}

procedure TfrmAutoQuoteList.callImageUrl(fileName: String);
var
  url: String;
  ms: TMemoryStream;
  jpg: TJpegImage;
begin

  url := 'http://bizauto.co.kr/koin/upload/' + fileName;

  try
    try
      frmProgressDisp := TfrmProgressDisp.Create(nil);
      frmProgressDisp.Show;
      frmProgressDisp.Update;

      HP.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

      ms := TMemoryStream.Create;
      jpg := TJpegImage.Create;
      HP.Get(url, ms);
      ms.Seek(0, soFromBeginning);
      jpg.LoadFromStream(ms);
      imgViewer.Picture.Assign(jpg);
    except
    end;
  finally
    frmProgressDisp.Hide;
    frmProgressDisp.Free;
    FreeAndNil(jpg);
    FreeAndNil(ms);
    HP.Disconnect;
  end;
end;

procedure TfrmAutoQuoteList.requestQuoteList;
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

    CallService(GET_AUTO_QUOTE_LIST, sl, XD);
    parseXML;

  finally
    sl.Free;
  end;

end;

procedure TfrmAutoQuoteList.parseXML;
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

    SGrid.Cells[0,i+1] := KNode.ChildNodes['seq'].Text; //'��ȣ';
    SGrid.Cells[1,i+1] := KNode.ChildNodes['dealer_id'].Text; //'��������';
    SGrid.Cells[2,i+1] := KNode.ChildNodes['insuredname'].Text; //'����';
    SGrid.Cells[3,i+1] := KNode.ChildNodes['car_name'].Text; //'������';
    SGrid.Cells[4,i+1] := KNode.ChildNodes['car_year'].Text; //'����';
    SGrid.Cells[5,i+1] := KNode.ChildNodes['platenum'].Text; //'������ȣ';
    SGrid.Cells[6,i+1] := KNode.ChildNodes['insured_tel'].Text; //'����ó';
    SGrid.Cells[7,i+1] := KNode.ChildNodes['in_date'].Text; //'��û��';
    SGrid.Cells[8,i+1] := KNode.ChildNodes['contractor_name'].Text; //'����ڸ�';
    SGrid.Cells[9,i+1] := KNode.ChildNodes['status'].Text; //'����';
    SGrid.Cells[10,i+1] := KNode.ChildNodes['filename'].Text; //'������ ���ϸ�';
    SGrid.Cells[11,i+1] := KNode.ChildNodes['fileuploaded'].Text; //'���Ͼ��ε忩��';
    SGrid.Cells[12,i+1] := KNode.ChildNodes['premium'].Text; //
    SGrid.Cells[13,i+1] := KNode.ChildNodes['insurer'].Text; //

  end;

end;



procedure TfrmAutoQuoteList.btnQueryClick(Sender: TObject);
begin
  requestQuoteList;
end;

procedure TfrmAutoQuoteList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAutoQuoteList := nil;
  Action := caFree;
end;

procedure TfrmAutoQuoteList.FormCreate(Sender: TObject);
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
  SGrid.Cells[2,0] := '����';
  SGrid.Cells[3,0] := '������';
  SGrid.Cells[4,0] := '����';
  SGrid.Cells[5,0] := '������ȣ';
  SGrid.Cells[6,0] := '����ó';
  SGrid.Cells[7,0] := '��û��';
  SGrid.Cells[8,0] := '����ڸ�';
  SGrid.Cells[9,0] := '����';
  // hidden file
  SGrid.ColWidths[10] := 0;
  SGrid.ColWidths[11] := 0;


  pnlViewer.Width := 0;
  CheckBox1.Checked := false;

end;

procedure TfrmAutoQuoteList.PageControl1Change(Sender: TObject);
begin
  lblStatus.Parent := PageControl1.ActivePage;
  cboStatus.Parent := PageControl1.ActivePage;
  btnQuery.Parent := PageControl1.ActivePage;
end;

procedure TfrmAutoQuoteList.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    pnlViewer.Width := 250;
  end
  else
  begin
    pnlViewer.Width := 0;
  end;
end;

procedure TfrmAutoQuoteList.SGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  eINSUREDNAME.Text := SGrid.Cells[2,ARow];
  eINSURED_TEL.Text := SGrid.Cells[6,ARow];
  eINSURER.Text := SGrid.Cells[13,ARow];
  ePREMIUM.Text := SGrid.Cells[12,ARow];
  eCAR_NAME.Text := SGrid.Cells[3,ARow];
  eCAR_YEAR.Text := SGrid.Cells[4,ARow];
  ePLATENUM.Text := SGrid.Cells[5,ARow];


  if not CheckBox1.Checked then
  begin
    imgViewer.Picture := nil;
    exit;
  end;

  if ARow = 0 then
  begin
    imgViewer.Picture := nil;
    exit;
  end;

  if SGrid.Cells[11,ARow] = 'Y' then
  begin
    if trim(SGrid.Cells[10, ARow]) <> '' then
    begin
      callImageUrl(SGrid.Cells[10, ARow]);
    end;
  end
  else
  begin
    imgViewer.Picture := nil;
  end;




end;

procedure TfrmAutoQuoteList.BitBtn3Click(Sender: TObject);
begin
  Printer.BeginDoc;
  Printer.Canvas.Draw(0,0, imgViewer.Picture.Graphic);
  Printer.EndDoc;
end;

end.
