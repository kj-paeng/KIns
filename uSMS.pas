unit uSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, ExtCtrls,
  ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, DB, DBTables, IniFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TfrmSMS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel21: TPanel;
    TabSheet3: TTabSheet;
    esMsg: TMemo;
    esID: TEdit;
    esPW: TEdit;
    esSendNum: TEdit;
    esSendName: TEdit;
    esRcvNum: TEdit;
    Panel2: TPanel;
    esSubject: TEdit;
    cboURL: TComboBox;
    Panel3: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    edtName: TEdit;
    Panel6: TPanel;
    rgCategory: TRadioGroup;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    edtAddr: TEdit;
    cboEmp: TComboBox;
    cboEqual: TComboBox;
    edtAge: TMaskEdit;
    btnQuery: TButton;
    Query2: TQuery;
    Query2emp_charge: TStringField;
    Query1: TQuery;
    Query1JUMIN_NO: TStringField;
    Query1CUSTOMER_NAME: TStringField;
    Query1COMPANY_NAME: TStringField;
    Query1TEL_NO: TStringField;
    Query1CELL_NO: TStringField;
    Query1ZIP_CODE: TStringField;
    Query1ADDRESS_DETAIL: TStringField;
    Query1ADDRESS_SIGUN: TStringField;
    Query1FAX_NO: TStringField;
    Query1EMAIL: TStringField;
    Query1HOMEPAGE: TStringField;
    Query1EMP_CHARGE: TStringField;
    Query1CUSTOMER_ID: TStringField;
    Query1BUSINESS_NO: TStringField;
    Query1BUS_TYPE: TStringField;
    Query1BUS_JONG: TStringField;
    Query1CUSTOMER_TYPE: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    pBar: TProgressBar;
    Panel10: TPanel;
    Panel17: TPanel;
    Button2: TButton;
    BitBtn7: TBitBtn;
    SGrid: TStringGrid;
    Panel18: TPanel;
    HTTP: TIdHTTP;
    mResult: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    Table1: TTable;
    dsSMS: TDataSource;
    Table1SEQ: TAutoIncField;
    Table1TITLE: TStringField;
    Table1MSG: TMemoField;
    Table1GRP: TStringField;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    DBMemo1: TDBMemo;
    Button6: TButton;
    Panel19: TPanel;
    eDOB: TEdit;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgCategoryClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure setCriteria(value: Boolean);
    procedure callServer;
    procedure CallSMSService(URL: String; Params: TStringList; var SR: String);
    procedure fillSGrid(SName: String; SCellNo: String; SR: String; row: Integer);
    procedure initSGrid;

  public
    { Public declarations }
  end;

var
  frmSMS: TfrmSMS;

implementation

uses uCommonProcs, uSMSMng;

{$R *.dfm}

procedure TfrmSMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSMS := nil;
end;

procedure TfrmSMS.btnQueryClick(Sender: TObject);
var
  S: String;
begin

  S := 'SELECT * from customer ';

  if rgCategory.ItemIndex = 1 then
  begin
    S := S + ' WHERE customer_name LIKE ''%' + Trim(edtName.Text) + '%'' ';
    S := S + ' AND address_sigun LIKE ''%' + Trim(edtAddr.Text) + '%'' ';
    if cboEmp.ItemIndex > 0 then
      S := S + ' AND emp_charge = ''' + cboEmp.Items[cboEmp.ItemIndex] + ''' ';

    if not (trim(eDOB.Text) = '') then
    begin
      S := S + ' AND substring(jumin_no from 5 for 4) = ''' + Copy(trim(eDOB.Text), 5, 4) + ''' ';
    end;

    if not (trim(edtAge.Text) = '') then
    begin
      case cboEqual.ItemIndex of
        0: begin  end;
        1: begin  end;
        2: begin  end;
      end;
    end;
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;


end;

procedure TfrmSMS.setCriteria(value: Boolean);
begin
  edtName.Enabled := value;
  cboEmp.Enabled := value;
  edtAge.Enabled := value;
  edtAddr.Enabled := value;
  cboEqual.Enabled := value;
end;

procedure TfrmSMS.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  if Query1.Active then Query1.Close;
  if Query2.Active then Query2.Close;

  if not Table1.Active then Table1.Active := true;

  Query2.Open;

  for i := 0 to Query2.RecordCount -1 do
  begin
    if not (trim(Query2.FieldByName('emp_charge').AsString) = '') then
      cboEmp.Items.Add(Query2.FieldByName('emp_charge').AsString);
    Query2.Next;
  end;
  Query2.Close;

  cboEmp.ItemIndex := 0;

  setCriteria(false);
  esRcvNum.Text := '전송시자동입력';

  PageControl1.ActivePageIndex := 0;

  initSGrid;

end;

procedure TfrmSMS.rgCategoryClick(Sender: TObject);
var
  value : Boolean;
begin
  value := (rgCategory.ItemIndex = 1);
  case rgCategory.ItemIndex of
  0: begin
       edtName.Enabled := value;
       cboEmp.Enabled := value;
       edtAge.Enabled := value;
       edtAddr.Enabled := value;
       cboEqual.Enabled := value;
       btnQuery.Enabled := true;
       esRcvNum.Text := '전송시자동입력';

    end;
  1: begin
       edtName.Enabled := value;
       cboEmp.Enabled := value;
       edtAge.Enabled := value;
       edtAddr.Enabled := value;
       cboEqual.Enabled := value;
       btnQuery.Enabled := true;
       esRcvNum.Text := '전송시자동입력';

    end;
  2: begin
       edtName.Enabled := value;
       cboEmp.Enabled := value;
       edtAge.Enabled := value;
       edtAddr.Enabled := value;
       cboEqual.Enabled := value;
       btnQuery.Enabled := false;
              
       Query1.Close;
       esRcvNum.Text := '';
       esRcvNum.SetFocus;

    end;
  end;
end;

procedure TfrmSMS.CallSMSService(URL: String; Params: TStringList; var SR: String);
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

procedure TfrmSMS.fillSGrid(SName: String; SCellNo: String; SR: String; row: Integer);
begin

  SGrid.Cells[0, row] := SName;
  SGrid.Cells[1, row] := SCellNo;
  SGrid.Cells[2, row] := SR;

  SGrid.Update;

end;

procedure TfrmSMS.callServer;
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

      case rgCategory.ItemIndex of
      0, 1:
        begin
          Query1.First;
          j := Query1.RecordCount;
          SGrid.RowCount := j+1;
          for i := 0 to j - 1 do
          begin
            sl.Add('sRcvNum='+EraseStr(EraseStr(trim(Query1.FieldByName('CELL_NO').AsString), '-'), '.'));
            CallSMSService(cboURL.Items[cboURL.ItemIndex], sl, S);
            fillSGrid(Query1.FieldByName('CUSTOMER_NAME').AsString,
                      Query1.FieldByName('CELL_NO').AsString,
                      S,
                      i + 1);
            Query1.Next;
            pBar.Position := pBar.Position + 1;
          end;
        end;
      2: begin
           SGrid.RowCount := 2;
           sl.Add('sRcvNum='+EraseStr(EraseStr(trim(esRcvNum.Text), '-'), '.'));
           CallSMSService(cboURL.Items[cboURL.ItemIndex], sl, S);
           fillSGrid('', trim(esRcvNum.Text), S, 1);
           pBar.Position := 1;
        end;
      end;

      MessageDlg('전송작업이 끝났습니다. 결과를 확인하십시요', mtInformation, [mbOK], 0);

    except
    end;
  finally
    sl.Free;
  end;
end;

procedure TfrmSMS.initSGrid;
begin
  SGrid.RowCount := 2;

  SGrid.Cells[0,0] := '수신자 이름';
  SGrid.Cells[1,0] := '수신자 번호';
  SGrid.Cells[2,0] := '전송 결과';

  SGrid.Cells[0,1] := '';
  SGrid.Cells[1,1] := '';
  SGrid.Cells[2,1] := '';


end;

procedure TfrmSMS.Button2Click(Sender: TObject);
begin
  if rgCategory.ItemIndex < 2 then
  begin
    if not Query1.Active then
    begin
      MessageDlg('먼저 조회 버튼을 누르십시요.', mtInformation, [mbOK], 0);
      exit;
    end;
    pBar.Max := Query1.RecordCount;
  end
  else
    pBar.Max := 1;

  initSGrid;
  PageControl1.ActivePageIndex := 1;
  callServer;

end;

procedure TfrmSMS.Button3Click(Sender: TObject);
begin
  esSubject.Text := Table1.FieldByName('TITLE').AsString;
  esMsg.Lines.Clear;
  esMsg.Lines.Append( Table1.FieldByName('MSG').AsString );
  
end;

procedure TfrmSMS.Button4Click(Sender: TObject);
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

procedure TfrmSMS.Button5Click(Sender: TObject);
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

procedure TfrmSMS.Button6Click(Sender: TObject);
begin
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmSMS.SpeedButton6Click(Sender: TObject);
var
  S: String;
begin

  S := showMCal(SpeedButton6, eDOB.Text);
  eDOB.Text := S;
end;

end.
