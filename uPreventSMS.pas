unit uPreventSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, ExtCtrls,
  ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, DB, DBTables, IniFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  DateUtils;

type
  TfrmPreventSMS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Query2: TQuery;
    qryPrevention: TQuery;
    pBar: TProgressBar;
    Panel10: TPanel;
    Panel17: TPanel;
    Button2: TButton;
    BitBtn7: TBitBtn;
    SGrid: TStringGrid;
    Panel18: TPanel;
    HTTP: TIdHTTP;
    mResult: TMemo;
    Table1: TTable;
    dsSMS: TDataSource;
    Table1SEQ: TAutoIncField;
    Table1TITLE: TStringField;
    Table1MSG: TMemoField;
    Table1GRP: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel21: TPanel;
    esMsg: TMemo;
    esID: TEdit;
    esPW: TEdit;
    esSendNum: TEdit;
    esSendName: TEdit;
    Panel2: TPanel;
    esSubject: TEdit;
    cboURL: TComboBox;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel13: TPanel;
    btnQuery: TButton;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    DBMemo1: TDBMemo;
    Button6: TButton;
    cboPrCode: TComboBox;
    ePeriod: TEdit;
    Label1: TLabel;
    rgPeriod: TRadioGroup;
    Query2prname: TStringField;
    SG: TStringGrid;
    qryPreventionprcode: TIntegerField;
    qryPreventionprdate: TStringField;
    qryPreventioncust_id: TStringField;
    qryCust: TQuery;
    qryCustcustomer_id: TStringField;
    qryCustcustomer_name: TStringField;
    qryCusttel_no: TStringField;
    qryCustcell_no: TStringField;
    qryCustaddress_sigun: TStringField;
    qryCustaddress_detail: TStringField;
    qryPreventionprname: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }

    procedure callServer;
    procedure CallSMSService(URL: String; Params: TStringList; var SR: String);
    procedure fillSGrid(SName: String; SCellNo: String; SR: String; row: Integer);
    procedure initSG;
    procedure initSGrid;
    procedure AddRecordSG(custname, prname, prdate, cellno, tellno, addsigun, adddetail, custid: String);

  public
    { Public declarations }
  end;

var
  frmPreventSMS: TfrmPreventSMS;

implementation

uses uCommonProcs, uSMSMng;

{$R *.dfm}

procedure TfrmPreventSMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmPreventSMS := nil;
end;

procedure TfrmPreventSMS.btnQueryClick(Sender: TObject);
var
  S: String;
  i: Integer;
  iPeriod, iDays: Integer;
begin

  initSG;

  case rgPeriod.ItemIndex of
  0: iPeriod := 1;
  1: iPeriod := 2;
  2: iPeriod := 3;
  3: iPeriod := 7;
  4: iPeriod := 10;
  5: iPeriod := 15;
  6: iPeriod := 20;
  7: iPeriod := 30;
  8: begin
       try
         iPeriod := StrToInt(ePeriod.Text);
       except
         iPeriod := 7;
       end;
    end;
  end;

  S := 'select a.prcode, a.prdate, a.cust_id, b.prname ';
  S := S + 'from prevention as a, preventcode as b ';
  S := S + 'where a.prcode = b.seq ';
  if cboPrCode.ItemIndex > 0 then
    S := S + 'and b.prname = ''' + cboPrCode.Items[cboPrCode.ItemIndex] + '''';

  qryPrevention.Close;
  qryPrevention.SQL.Clear;
  qryPrevention.SQL.Add(S);
  qryPrevention.Open;
  //cust_id, prcode, prdate

  for i := 0 to qryPrevention.RecordCount -1 do
  begin
    idays := DaysBetween(Now, ConvertDate(qryPrevention.FieldByName('PRDATE').AsString));
    if idays <= iPeriod then
    begin

 {  SG.Cells[0,0] := '고객이름';
  SG.Cells[1,0] := '예방정비항목';
  SG.Cells[2,0] := '예방정비일자';
  SG.Cells[3,0] := '휴대전화';
  SG.Cells[4,0] := '전화번호';
  SG.Cells[5,0] := '주소(시군구)';
  SG.Cells[6,0] := '상세주소';
  SG.Cells[7,0] := '고객ID';
}
      qryCust.Close;
      qryCust.ParamByName('CUSTOMER_ID').AsString := qryPrevention.FieldByName('CUST_ID').AsString;
      qryCust.Open;

      AddRecordSG(
        qryCust.FieldByName('CUSTOMER_NAME').AsString,
        qryPrevention.FieldByName('PRNAME').AsString,
        qryPrevention.FieldByName('PRDATE').AsString,
        qryCust.FieldByName('CELL_NO').AsString,
        qryCust.FieldByName('TEL_NO').AsString,
        qryCust.FieldByName('ADDRESS_SIGUN').AsString,
        qryCust.FieldByName('ADDRESS_DETAIL').AsString,
        qryCust.FieldByName('CUSTOMER_ID').AsString
      );

    end;
    qryPrevention.Next;
  end;
end;

procedure TfrmPreventSMS.FormCreate(Sender: TObject);
var
  i: Integer;
begin

  if qryPrevention.Active then qryPrevention.Close;
  if Query2.Active then Query2.Close;

  if not Table1.Active then Table1.Active := true;

  Query2.Open;
  cboPrCode.Items.Add('전체');
  for i := 0 to Query2.RecordCount -1 do
  begin
    if not (trim(Query2.FieldByName('PRNAME').AsString) = '') then
      cboPrCode.Items.Add(Query2.FieldByName('PRNAME').AsString);
    Query2.Next;
  end;
  Query2.Close;

  cboPrCode.ItemIndex := 0;

  PageControl1.ActivePageIndex := 0;

  initSG;
  initSGrid;

end;

procedure TfrmPreventSMS.CallSMSService(URL: String; Params: TStringList; var SR: String);
var
  st: TMemoryStream;
  S: String;
begin

  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try

    st := TMemoryStream.Create;

    HTTP.Post(URL, Params, st );

    // for debug
    //st.Position := 0;
    //st.SaveToFile('ccch.xml');

    try
      st.Position := 0;
      mResult.Lines.Clear;
      mResult.Lines.LoadFromStream(st);
      S := mResult.Lines.Text;

      if S = 'OK' then SR := '성공'
      else if S = '1' then SR := 'ID, 패스워드 오류'
      else if S = '2' then SR := '보유포인트 부족'
      else if S = '3' then SR := '잘못된 수신번호 입력'
      else if S = '4' then SR := '잘못된 발신번호 입력'
      else if S = '5' then SR := '제목이 50바이트이상'
      else SR := '원인미상 오류';

    except on E: Exception do
      //showmessage(E.Message);
    end;

  finally
    HTTP.Disconnect;
    st.Free;
  end;
end;

procedure TfrmPreventSMS.fillSGrid(SName: String; SCellNo: String; SR: String; row: Integer);
begin

  SGrid.Cells[0, row] := SName;
  SGrid.Cells[1, row] := SCellNo;
  SGrid.Cells[2, row] := SR;

  SGrid.Update;

end;

procedure TfrmPreventSMS.callServer;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;

  sl: TStringList;
begin

  try
    try
      sl := TStringList.Create;
      sl.Add('sId='+trim(esId.Text));
      sl.Add('sPw='+trim(esPw.Text));
      sl.Add('sSendNum='+trim(esSendNum.Text));
      sl.Add('sSendName='+trim(esSendName.Text));
      sl.Add('sSubject='+trim(esSubject.Text));
      sl.Add('sMsg='+trim(esMsg.Lines.Text));
      sl.Add('sReturnURL='+trim(''));

      j := SG.RowCount - 1;
      SGrid.RowCount := j+1;
      for i := 0 to j - 1 do
      begin
        sl.Add('sRcvNum='+EraseStr(EraseStr(trim(SG.Cells[3, i+1]), '-'), '.'));
        CallSMSService(cboURL.Items[cboURL.ItemIndex], sl, S);
        fillSGrid(trim(SG.Cells[0, i+1]),
                 trim(SG.Cells[3, i+1]),
                 S,
                 i + 1);
        pBar.Position := pBar.Position + 1;
      end;

      MessageDlg('전송작업이 끝났습니다. 결과를 확인하십시요', mtInformation, [mbOK], 0);

    except
    end;
  finally
    sl.Free;
  end;

end;

procedure TfrmPreventSMS.AddRecordSG(custname, prname, prdate, cellno, tellno, addsigun, adddetail, custid: String);
var
  i: Integer;
begin
  if SG.RowCount = 2 then
  begin
    if trim(SG.Cells[0, 1]) <> '' then
    begin
      SG.RowCount := 3;
      SG.Cells[0, 2] := custname;
      SG.Cells[1, 2] := prname;
      SG.Cells[2, 2] := prdate;
      SG.Cells[3, 2] := cellno;
      SG.Cells[4, 2] := tellno;
      SG.Cells[5, 2] := addsigun;
      SG.Cells[6, 2] := adddetail;
      SG.Cells[7, 2] := custid;
    end
    else
    begin
      SG.Cells[0, 1] := custname;
      SG.Cells[1, 1] := prname;
      SG.Cells[2, 1] := prdate;
      SG.Cells[3, 1] := cellno;
      SG.Cells[4, 1] := tellno;
      SG.Cells[5, 1] := addsigun;
      SG.Cells[6, 1] := adddetail;
      SG.Cells[7, 1] := custid;
    end;
  end
  else if SG.RowCount >= 3 then
  begin
    i := SG.RowCount;
    SG.RowCount := i + 1;

    SG.Cells[0, i] := custname;
    SG.Cells[1, i] := prname;
    SG.Cells[2, i] := prdate;
    SG.Cells[3, i] := cellno;
    SG.Cells[4, i] := tellno;
    SG.Cells[5, i] := addsigun;
    SG.Cells[6, i] := adddetail;
    SG.Cells[7, i] := custid;

  end;
end;

procedure TfrmPreventSMS.initSG;
begin
  SG.RowCount := 2;

  SG.Cells[0,0] := '고객이름';
  SG.Cells[1,0] := '예방정비항목';
  SG.Cells[2,0] := '예방정비일자';
  SG.Cells[3,0] := '휴대전화';
  SG.Cells[4,0] := '전화번호';
  SG.Cells[5,0] := '주소(시군구)';
  SG.Cells[6,0] := '상세주소';
  SG.Cells[7,0] := '고객ID';

  SG.ColWidths[0] := 62;
  SG.ColWidths[1] := 90;
  SG.ColWidths[2] := 90;
  SG.ColWidths[3] := 75;
  SG.ColWidths[4] := 66;
  SG.ColWidths[5] := 100;
  SG.ColWidths[6] := 105;
  SG.ColWidths[7] := -1;

  SG.Cells[0,1] := '';
  SG.Cells[1,1] := '';
  SG.Cells[2,1] := '';
  SG.Cells[3,1] := '';
  SG.Cells[4,1] := '';
  SG.Cells[5,1] := '';
  SG.Cells[6,1] := '';
  SG.Cells[7,1] := '';

end;


procedure TfrmPreventSMS.initSGrid;
begin
  SGrid.RowCount := 2;

  SGrid.Cells[0,0] := '수신자 이름';
  SGrid.Cells[1,0] := '수신자 번호';
  SGrid.Cells[2,0] := '전송 결과';

  SGrid.Cells[0,1] := '';
  SGrid.Cells[1,1] := '';
  SGrid.Cells[2,1] := '';


end;

procedure TfrmPreventSMS.Button2Click(Sender: TObject);
begin

  if (SG.RowCount = 2) and (trim(SG.Cells[0, 1]) = '') then
  begin
    MessageDlg('먼저 조회 버튼을 누르십시요.', mtInformation, [mbOK], 0);
    exit;
  end;
  pBar.Max := SG.RowCount - 1;

  initSGrid;
  PageControl1.ActivePageIndex := 1;
  callServer;

end;

procedure TfrmPreventSMS.Button3Click(Sender: TObject);
begin
  esSubject.Text := Table1.FieldByName('TITLE').AsString;
  esMsg.Lines.Clear;
  esMsg.Lines.Append( Table1.FieldByName('MSG').AsString );
  
end;

procedure TfrmPreventSMS.Button4Click(Sender: TObject);
begin
  try
    frmSMSMng := TfrmSMSMng.Create(Self);
    frmSMSMng.nextAction := 'insert';
    frmSMSMng.ShowModal;
    Table1.Refresh;
  finally
    frmSMSMng.Free;
  end;
end;

procedure TfrmPreventSMS.Button5Click(Sender: TObject);
begin
  try
    frmSMSMng := TfrmSMSMng.Create(Self);
    frmSMSMng.nextAction := 'edit';
    frmSMSMng.curSeq := Table1.FieldByName('SEQ').AsInteger;
    frmSMSMng.ShowModal;
    Table1.Refresh;
  finally
    frmSMSMng.Free;
  end;
end;

procedure TfrmPreventSMS.Button6Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

end.
