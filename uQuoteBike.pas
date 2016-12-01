unit uQuoteBike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, xmldom, XMLIntf,
  msxmldom, XMLDoc, uCommonProcs, Mask, DBCtrls, IniFiles;


type
  TfrmQuoteBike = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    SGrid: TStringGrid;
    BitBtn10: TBitBtn;
    IH: TIdHTTP;
    XD: TXMLDocument;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Button2: TButton;
    edtUCARNO: TEdit;
    edtUHP: TEdit;
    edtUZIPCODE: TEdit;
    edtUJUSO1: TEdit;
    edtUJUSO2: TEdit;
    mmMEMO: TMemo;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label28: TLabel;
    Label31: TLabel;
    rdoPAYTYPE: TRadioGroup;
    Label33: TLabel;
    Label34: TLabel;
    edtBIKECOMPANY: TEdit;
    Label36: TLabel;
    pnlApplicantName: TPanel;
    edtCARDKIND: TEdit;
    Label16: TLabel;
    Label35: TLabel;
    edtCARDNO: TEdit;
    Label37: TLabel;
    edtCARDDATE: TEdit;
    Label29: TLabel;
    Edit9: TEdit;
    Edit8: TEdit;
    Label27: TLabel;
    Label23: TLabel;
    edtUTEL: TEdit;
    Label30: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    cboBIKE_TYPE: TComboBox;
    cboUYEAR: TComboBox;
    edtBIKEMODEL: TEdit;
    edtRELATIONSHIP: TEdit;
    Label39: TLabel;
    edtCNAME: TEdit;
    Label40: TLabel;
    edtUJUMINCARD: TEdit;
    edtBNAME: TEdit;
    chkLAW_YN: TCheckBox;
    pnlNotify: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    pnlParent02: TPanel;
    pnlParent01: TPanel;
    pnlShowInsuredInfo: TPanel;
    Label18: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    edtPremium: TEdit;
    edtINSURED_NAME: TEdit;
    edtDOB: TEdit;
    edtYONGDO: TEdit;
    edtAGELIMIT: TEdit;
    edtCAREER: TEdit;
    edtBAEGI: TEdit;
    edtPLUSCHARGE: TEdit;
    edtPOLICY_PERIOD: TEdit;
    Panel2: TPanel;
    XDSS: TXMLDocument;
    XDME: TXMLDocument;
    Panel3: TPanel;
    Label12: TLabel;
    rgDaemul: TRadioGroup;
    ckDaein02: TCheckBox;
    Label15: TLabel;
    rgJasin: TRadioGroup;
    Panel4: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    dtINSU_SDATE: TDateTimePicker;
    edtUNAME: TEdit;
    Label9: TLabel;
    rdoYONGDO: TRadioGroup;
    Label4: TLabel;
    rdoBAEGIRYANG01: TRadioGroup;
    Label5: TLabel;
    cboAgeCondition: TComboBox;
    Label7: TLabel;
    rdoRENEW: TRadioGroup;
    Label6: TLabel;
    rdoCAREER: TRadioGroup;
    Label2: TLabel;
    edtJUMIN01: TEdit;
    Label3: TLabel;
    edtJUMIN02: TEdit;
    edtAge: TEdit;
    Label11: TLabel;
    chkConsent: TCheckBox;
    Button1: TButton;
    Panel5: TPanel;
    ckDaein01: TCheckBox;
    Button3: TButton;
    cboINSTALLMENT: TComboBox;
    Label10: TLabel;
    meBAEGIRYANG: TMaskEdit;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure edtJUMIN01Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtJUMIN02Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rdoPAYTYPEClick(Sender: TObject);
    procedure edtJUMIN01KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure rdoYONGDOClick(Sender: TObject);
  private
    { Private declarations }
    ChangefromButton: Boolean;

    qA: Array[0..4, 0..2] of String;  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,

    procedure requestQuote;
    procedure requestQuoteSS;
    procedure requestQuoteME;
    function sendApplication: Boolean;
    function validateData: Boolean;
    procedure parseXML;
    procedure parseXMLSS;
    procedure parseXMLME;
    function parseApplicationXML: Boolean;

    procedure setVisibleCardInfo(v: Boolean);
    procedure fillSG;
    procedure fillSGrid(i1, i2, i3: Integer);
    procedure fillSGLIG;

  public
    { Public declarations }

    Lsql, Ssql, Msql: String;
  end;

var
  frmQuoteBike: TfrmQuoteBike;

implementation

uses uZipPopup, uLegalPrivacy, Unit1;

{$R *.dfm}

procedure TfrmQuoteBike.fillSGLIG;
var
  i, j: Integer;
begin

  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,
  for i := 0 to 4 do
  begin
    for j := 1 to 3 do
    begin
       SGrid.Cells[i, j] := '';
    end;
  end;

  SGrid.Cells[0, 1] := qA[0,0];
  SGrid.Cells[1, 1] := qA[1,0];
  SGrid.Cells[2, 1] := '최저가';
  try
  SGrid.Cells[3, 1] := '\'+StrConv(qA[3,0]);
  except
  end;
  SGrid.Cells[4, 1] := qA[4,0];




end;


procedure TfrmQuoteBike.fillSGrid(i1, i2, i3: Integer);
var
  dif1, dif2: Integer;
begin
try
  dif1 := StrToInt(qA[3,i2]) - StrToInt(qA[3,i1]);
except
end;
try
  dif2 := StrToInt(qA[3,i3]) - StrToInt(qA[3,i1]);
except
end;

  SGrid.Cells[0, 1] := qA[0,i1];
  SGrid.Cells[1, 1] := qA[1,i1];
  SGrid.Cells[2, 1] := '최저가';//qA[2,i1];
  SGrid.Cells[3, 1] := '\'+StrConv(qA[3,i1]);
  SGrid.Cells[4, 1] := qA[4,i1];

  SGrid.Cells[0, 2] := qA[0,i2];
  SGrid.Cells[1, 2] := qA[1,i2];
try
  SGrid.Cells[2, 2] := '\'+StrConv(IntToStr(dif1));  //qA[2,i2];
except
end;
  SGrid.Cells[3, 2] := '\'+StrConv(qA[3,i2]);
  SGrid.Cells[4, 2] := qA[4,i2];

  SGrid.Cells[0, 3] := qA[0,i3];
  SGrid.Cells[1, 3] := qA[1,i3];
try
  SGrid.Cells[2, 3] := '\'+StrConv(IntToStr(dif2));
except
end;
  SGrid.Cells[3, 3] := '\'+StrConv(qA[3,i3]);
  SGrid.Cells[4, 3] := qA[4,i3];


end;

procedure TfrmQuoteBike.fillSG;
var
  i, j: Integer;
  c0, c1, c2: Integer;
begin
  try
    c0 := StrToInt(qA[3,0]);
  except
  end;
  try
    c1 := StrToInt(qA[3,1]);
  except
  end;
  try
    c2 := StrToInt(qA[3,2]);
  except
  end;

  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,
  for i := 0 to 4 do
  begin
    for j := 1 to 3 do
    begin
       SGrid.Cells[i, j] := '';
    end;
  end;

  // sort
  if c0 < c1 then
  begin
    if c0 < c2 then
    begin
      if c1 < c2 then   // 0 < 1 < 2
      begin
        fillSGrid(0, 1, 2);
      end
      else // 0 < 2 < 1
      begin
        fillSGrid(0, 2, 1);
      end;
    end
    else // 2 < 0 < 1
    begin
      fillSGrid(2, 0, 1);
    end;
  end
  else // 1 < 0
  begin
    if c0 < c2 then  // 1 < 0 < 2
    begin
      fillSGrid(1, 0, 2);
    end
    else
    begin
      if c1 < c2 then   // 1 < 2 < 0
      begin
        fillSGrid(1, 2, 0);
      end
      else // 2 < 1 < 0
      begin
        fillSGrid(2, 1, 0);
      end;
    end;
  end;
end;

procedure TfrmQuoteBike.setVisibleCardInfo(v: Boolean);
begin
  edtCARDDATE.Visible := v;
  Label16.Visible := v;
  //edtCARDKIND.Visible := v;
  Label35.Visible := v;
  edtCARDNO.Visible := v;
  Label37.Visible := v;
  edtCNAME.Visible := v;
  //Label38.Visible := v;
  cboINSTALLMENT.Visible := v;
  Label39.Visible := v;
  //edtRELATIONSHIP.Visible := v;
  Label40.Visible := v;
  edtUJUMINCARD.Visible := v;

  //Label41.Visible := not v;
  //edtBNAME.Visible := not v;
  pnlNotify.Visible := not v;

end;

function TfrmQuoteBike.parseApplicationXML: Boolean;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
begin

  result := false;
  if not XD.Active then exit;

  for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
     S := KNode.ChildNodes['RESULT'].Text;

     if trim(S) = 'OK' then
     begin
       result := true;
       //ShowMessage('회원(사) 등록이 완료되었습니다. 빠른시간 내에 관리자로부터 전화를 받으실 겁니다.');
       //edtUID.SetFocus;
     end
     else if trim(S) = 'NO' then
     begin
       result := false;
       //ShowMessage('회원(사) 등록 과정에 문제가 있습니다. 관리자에게 연락해 보십시요.');
       //edtUID.SetFocus;

     end;
  end;
end;

procedure TfrmQuoteBike.parseXML;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Integer;
  compid: String;

begin

  if not XD.Active then exit;

  Lsql := XD.ChildNodes['DATAPACKET'].ChildNodes['SQLDATA'].Text;

  for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

     compid := KNode.ChildNodes['compid'].Text;
     if ckDaein01.Checked then S := ckDaein01.Caption;
     if ckDaein02.Checked then S := ckDaein02.Caption;

     S := S + '+' + rgDaemul.Items[rgDaemul.ItemIndex];
     if rgJasin.ItemIndex > 0 then S := S + '+' + rgJasin.Items[rgJasin.ItemIndex];

     //qA: Array[0..4, 0..2] of String;  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,
     qA[0,0] := 'L사';
     qA[1,0] := S;
     qA[2,0] := ''; // 금액차이
     try
       //qA[3,0] := IntToStr(round(StrToFloat(KNode.ChildNodes['premium'].Text)));
       qA[3,0] := IntToStr(roundEx(StrToFloat(KNode.ChildNodes['premium'].Text), 10));
     except
     end;

  end;

end;

procedure TfrmQuoteBike.parseXMLSS;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Integer;
  compid: String;
begin

  if not XDSS.Active then exit;

  Ssql := XDSS.ChildNodes['DATAPACKET'].ChildNodes['SQLDATA'].Text;

  for i := 0 to XDSS.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XDSS.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

     compid := KNode.ChildNodes['compid'].Text;
     if ckDaein01.Checked then S := ckDaein01.Caption;
     if ckDaein02.Checked then S := ckDaein02.Caption;

     S := S + '+' + rgDaemul.Items[rgDaemul.ItemIndex];
     if rgJasin.ItemIndex > 0 then S := S + '+' + rgJasin.Items[rgJasin.ItemIndex];

     //qA: Array[0..4, 0..2] of String;  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,
     qA[0,1] := 'S사';
     qA[1,1] := S;
     qA[2,1] := ''; // 금액차이

     if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
       try
         qA[3,1] := IntToStr(roundEx(StrToFloat(KNode.ChildNodes['premium'].Text),10))
       except
       end
     else
       qA[3,1] := '0';
  end;

end;

procedure TfrmQuoteBike.parseXMLME;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Integer;
  compid: String;
begin

  if not XDME.Active then exit;

  Msql := XDME.ChildNodes['DATAPACKET'].ChildNodes['SQLDATA'].Text;

  for i := 0 to XDME.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XDME.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

     compid := KNode.ChildNodes['compid'].Text;

     if ckDaein01.Checked then S := ckDaein01.Caption;
     if ckDaein02.Checked then S := ckDaein02.Caption;
     S := S + '+' + rgDaemul.Items[rgDaemul.ItemIndex];
     if rgJasin.ItemIndex > 0 then S := S + '+' + rgJasin.Items[rgJasin.ItemIndex];

     //qA: Array[0..4, 0..2] of String;  //qA[x, 0] = LIG, qA[x, 1] = SSI, qA[x, 2] = MER,
     qA[0,2] := 'M사';
     qA[1,2] := S;
     qA[2,2] := ''; //금액차이

     if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
       try
         qA[3,2] := IntToStr(roundEx(StrToFloat(KNode.ChildNodes['premium'].Text), 10))
       except
       end
     else
       qA[3,2] := '0';

  end;

end;



function TfrmQuoteBike.validateData: Boolean;
begin
  result := true;
  if trim(edtUNAME.Text) = '' then begin ShowMessage('이름을 입력하십시요.'); result := false; exit; end;
  if trim(edtJUMIN01.Text) = '' then begin ShowMessage('주민번호를 입력하십시요.'); result := false; exit; end;
  if trim(edtJUMIN02.Text) = '' then begin ShowMessage('주민번호를 입력하십시요.'); result := false; exit; end;
  if not chkConsent.checked then begin ShowMessage('개인정보보호에 관한 동의를 해 주십시요.'); result := false; exit; end;
  if trim(meBAEGIRYANG.text) = '' then begin ShowMessage('배기량을 입력하십시요.'); result := false; exit; end;

end;

function TfrmQuoteBike.sendApplication: Boolean;
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  sl: TStringList;
begin
  result := false;

  //HTTP_GetQuote.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try
    sl := TStringList.Create;

    sl.Add('dealer_id='+GetDealerID);
    sl.Add('utitle=');
    sl.Add('ubtel=');
    sl.Add('uname='+edtUNAME.Text);
    sl.Add('jumin='+edtJUMIN01.Text+edtJUMIN02.Text);
    sl.Add('ucarno='+edtUCARNO.Text);
    sl.Add('uyear='+cboUYEAR.Items[cboUYEAR.ItemIndex]);
    sl.Add('utel='+edtUTEL.Text);
    sl.Add('uhp='+edtUHP.Text);
    sl.Add('uzipcode='+edtUZIPCODE.Text);
    sl.Add('ujuso1='+edtUJUSO1.Text);
    sl.Add('ujuso2='+edtUJUSO2.Text);
    case rdoYONGDO.ItemIndex of
      0: sl.Add('user=LEI');
      1: sl.Add('user=DEL');
      2: sl.Add('user=QRT');
    end;
    {
    case rdoBAEGIRYANG.ItemIndex of
      0: sl.Add('outlimit=SA');
      1: sl.Add('outlimit=SB');
      2: sl.Add('outlimit=MD');
      3: sl.Add('outlimit=LA');
    end;
    }
    sl.Add('outlimit='+trim(meBAEGIRYANG.Text));

    sl.Add('bikemodel='+edtBIKEMODEL.Text);
    sl.Add('bikecompany='+edtBIKECOMPANY.Text);
    case cboBIKE_TYPE.ItemIndex of
      0: sl.Add('bike_type=이륜');
      1: sl.Add('bike_type=삼륜');
      2: sl.Add('bike_type=사륜');
      3: sl.Add('bike_type=축차');
    end;
    case rdoCAREER.ItemIndex of
      0: sl.Add('career=1년미만');
      1: sl.Add('career=1년이상');
      2: sl.Add('career=2년이상');
      3: sl.Add('career=3년이상');
    end;
    case rdoRENEW.ItemIndex of
      0: sl.Add('renew=최초가입');
      1: sl.Add('renew=갱신(무사고1년)');
      2: sl.Add('renew=갱신(무사고2년)');
      3: sl.Add('renew=갱신(무사고3년)');
      4: sl.Add('renew=갱신(무사고4년이상)');
    end;
    case cboAgeCondition.ItemIndex of
      0: sl.Add('limitage=전연령');
      1: sl.Add('limitage=21이상');
      2: sl.Add('limitage=24이상');
      3: sl.Add('limitage=26이상');
      4: sl.Add('limitage=30이상');
      5: sl.Add('limitage=48이상');
      6: sl.Add('limitage=55이상');
    end;
    sl.Add('uprice='+SGrid.Cells[3,1]);
    sl.Add('ulimit='+SGrid.Cells[1,1]);
    sl.Add('inscompany='+SGrid.Cells[0,1]);
    sl.Add('ufax=');
    sl.Add('lname=');
    sl.Add('ljumin=');
    case rdoPAYTYPE.ItemIndex of
      0: sl.Add('paytype=무통장');
      1: sl.Add('paytype=카드');
    end;
    sl.Add('cardkind='+edtcardkind.Text);
    //sl.Add('installment='+edtinstallment.Text);
    sl.Add('installment='+cboinstallment.items[cboinstallment.itemindex]);
    sl.Add('cardno='+edtcardno.Text);
    sl.Add('carddate='+edtcarddate.Text);
    sl.Add('cname='+edtcname.Text);
    sl.Add('bname='+edtbname.Text);
    sl.Add('ujumincard='+edtujumincard.Text);
    sl.Add('relationship='+edtrelationship.Text);
    sl.Add('in_date='+FormatDateTime('YYYYMMDD', Now));
    if chkLAW_YN.Checked then
      sl.Add('law_yn=YES')
    else
      sl.Add('law_yn=NO');
    sl.Add('insu_sdate='+FormatDateTime('YYYYMMDD', dtINSU_SDATE.Date));
    sl.Add('insu_edate='+FormatDateTime('YYYYMMDD', AddMonth(dtINSU_SDATE.Date, 12)));
    sl.Add('memo='+mmMEMO.Lines.Text);

    //st := TMemoryStream.Create;

    CallService(SET_BIKEINS_APP_1005, sl, XD);
    //HTTP_GetQuote.Post(SET_BIKEINS_APP, sl, st );

    //st.Position := 0;
    //st.SaveToFile('ccc.xml');


    try
      //st.Position := 0;
      //XD.LoadFromStream(st);
      XD.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    result := parseApplicationXML;

  finally
    //st.Free;
    sl.Free;
  end;

end;


procedure TfrmQuoteBike.requestQuote;
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  sl: TStringList;

  age: Integer;

begin

  if not validateData then exit;

  try
    sl := TStringList.Create;

    sl.Add('uname='+edtUNAME.Text);

    sl.Add('jumin='+edtJUMIN01.Text+edtJUMIN02.Text);

    {
    case rdoBAEGIRYANG.ItemIndex of
      0: sl.Add('baegiryang=SA');
      1: sl.Add('baegiryang=SB');
      2: sl.Add('baegiryang=MD');
      3: sl.Add('baegiryang=LA');
    end;
    }
    sl.Add('baegiryang='+trim(meBAEGIRYANG.Text));

    age := 0;
    try
      age := GetAge('19'+trim(edtJUMIN01.Text), Now);
    except
    end;

    sl.Add('insuredage='+IntToStr(GetInsuredAge(age)));

    // Rating 테이블이 변경되면 agecondition은 항상 체크해 봐야 함.
{전연령     (0)
20세이상      1
21세이상      2
24세이상      3
26세이상      4
30세이상      5
35세이상      6
43세이상      7
48세이상      8
}
    // LIG 연령특약기준 :  0, 21, 24, 26, 30, 48,
    case cboAgeCondition.ItemIndex of
      0: sl.Add('agecondition=0');
      1: sl.Add('agecondition=0');
      2: sl.Add('agecondition=21');
      3: sl.Add('agecondition=24');
      4: sl.Add('agecondition=26');
      5: sl.Add('agecondition=30');
      6: sl.Add('agecondition=30');
      7: sl.Add('agecondition=30');
      8: sl.Add('agecondition=48');
    end;

    case rdoYONGDO.ItemIndex of
      0: sl.Add('yongdo=LEI');
      1: sl.Add('yongdo=DEL');
      2: sl.Add('yongdo=QRT');
    end;

    sl.Add('career='+IntToStr(rdoCAREER.ItemIndex));
    sl.Add('renew='+IntToStr(rdoRENEW.ItemIndex));

    if ckDaein01.Checked then sl.Add('daein=daein01');
    if ckDaein02.Checked then sl.Add('daein=daein02');

    case rgDaemul.ItemIndex of
    0: sl.Add('daemul=daemul_1k');
    1: sl.Add('daemul=daemul_2k');
    2: sl.Add('daemul=daemul_3k');
    3: sl.Add('daemul=daemul_5k');
    4: sl.Add('daemul=daemul_7k');
    5: sl.Add('daemul=daemul_10k');
    end;

    case rgJasin.ItemIndex of
    1: sl.Add('jasin=jasin_15k');
    2: sl.Add('jasin=jasin_30k');
    3: sl.Add('jasin=jasin_50k');
    4: sl.Add('jasin=jasin_100k');
    end;

    CallService(GET_BIKE_QUOTE_1005, sl, XD, 'ccc.xml');

    try
      XD.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    parseXML;

  finally
    sl.Free;
  end;

end;

procedure TfrmQuoteBike.requestQuoteSS;
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  sl: TStringList;

  age: Integer;

begin

  if not validateData then exit;

  try
    sl := TStringList.Create;

    sl.Add('uname='+edtUNAME.Text);

    sl.Add('jumin='+edtJUMIN01.Text+edtJUMIN02.Text);

    {
    case rdoBAEGIRYANG.ItemIndex of
      0: sl.Add('baegiryang=SA');
      1: sl.Add('baegiryang=SB');
      2: sl.Add('baegiryang=MD');
      3: sl.Add('baegiryang=LA');
    end;
    }

    sl.Add('baegiryang='+trim(meBAEGIRYANG.Text));
        
    age := 0;
    try
      age := GetAge('19'+trim(edtJUMIN01.Text), Now);
    except
    end;

    sl.Add('insuredage='+IntToStr(age));

    // Rating 테이블이 변경되면 agecondition은 항상 체크해 봐야 함.
{전연령     (0)
20세이상      1
21세이상      2
24세이상      3
26세이상      4
30세이상      5
35세이상      6
43세이상      7
48세이상      8
}
    //SS 연령특약기준 :  0, 20, 24, 30, 43, 48,
    case cboAgeCondition.ItemIndex of
      0: sl.Add('agecondition=0');
      1: sl.Add('agecondition=20');
      2: sl.Add('agecondition=20');
      3: sl.Add('agecondition=24');
      4: sl.Add('agecondition=24');
      5: sl.Add('agecondition=30');
      6: sl.Add('agecondition=30');
      7: sl.Add('agecondition=43');
      8: sl.Add('agecondition=48');
    end;

    case rdoYONGDO.ItemIndex of
      0: sl.Add('yongdo=LEI');
      1: sl.Add('yongdo=DEL');
      2: sl.Add('yongdo=QRT');
    end;

    sl.Add('career='+IntToStr(rdoCAREER.ItemIndex));
    sl.Add('renew='+IntToStr(rdoRENEW.ItemIndex));

    if ckDaein01.Checked then sl.Add('daein=daein01');
    if ckDaein02.Checked then sl.Add('daein=daein02');

    case rgDaemul.ItemIndex of
    0: sl.Add('daemul=daemul_1k');
    1: sl.Add('daemul=daemul_2k');
    2: sl.Add('daemul=daemul_3k');
    3: sl.Add('daemul=daemul_5k');
    4: sl.Add('daemul=daemul_5k');
    5: sl.Add('daemul=daemul_10k');
    end;

    case rgJasin.ItemIndex of
    1: sl.Add('jasin=jasin_15k');
    2: sl.Add('jasin=jasin_30k');
    3: sl.Add('jasin=jasin_50k');
    4: sl.Add('jasin=jasin_100k');

    end;

    if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
    begin
      CallService(GET_BIKE_QUOTE_SS_1005, sl, XDSS, 'sss.xml');
    end;

    try
      XDSS.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    parseXMLSS;
  finally
    sl.Free;
  end;

end;

procedure TfrmQuoteBike.requestQuoteME;
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  sl: TStringList;

  age: Integer;

begin

  if not validateData then exit;

  try
    sl := TStringList.Create;

    sl.Add('uname='+edtUNAME.Text);

    sl.Add('jumin='+edtJUMIN01.Text+edtJUMIN02.Text);

    {
    case rdoBAEGIRYANG.ItemIndex of
      0: sl.Add('baegiryang=SA');
      1: sl.Add('baegiryang=SB');
      2: sl.Add('baegiryang=MD');
      3: sl.Add('baegiryang=LA');
    end;
    }
    sl.Add('baegiryang='+trim(meBAEGIRYANG.Text));

    age := 0;
    try
      age := GetAge('19'+trim(edtJUMIN01.Text), Now);
    except
    end;

    //sl.Add('insuredage='+IntToStr(GetInsuredAgeME(age)));
    sl.Add('insuredage='+IntToStr(GetInsuredAge(age)));  // LIG와 동일하게 하고 15%만 증가시킴

    // Rating 테이블이 변경되면 agecondition은 항상 체크해 봐야 함.
{전연령     (0)
20세이상      1
21세이상      2
24세이상      3
26세이상      4
30세이상      5
35세이상      6
43세이상      7
48세이상      8
      if ADOQuery1.Fields[3].AsString = '23세이하' then c3 := '23'; 0;
      if ADOQuery1.Fields[3].AsString = '24~26세' then c3 := '24'; // 이상으로 처리
      if ADOQuery1.Fields[3].AsString = '27~30세' then c3 := '27';
      if ADOQuery1.Fields[3].AsString = '31~35세' then c3 := '31';
      if ADOQuery1.Fields[3].AsString = '36~43세' then c3 := '36';
      if ADOQuery1.Fields[3].AsString = '44~48세' then c3 := '44';
      if ADOQuery1.Fields[3].AsString = '49~55세' then c3 := '49';
      if ADOQuery1.Fields[3].AsString = '56세이상' then c3 := '56';
}

    //ME 연령특약기준 :  0, 24, 24, 30, 43, 48,
{
    case cboAgeCondition.ItemIndex of
      0: sl.Add('agecondition=0');
      1: sl.Add('agecondition=20');
      2: sl.Add('agecondition=20');
      3: sl.Add('agecondition=24');
      4: sl.Add('agecondition=24');
      5: sl.Add('agecondition=30');
      6: sl.Add('agecondition=30');
      7: sl.Add('agecondition=43');
      8: sl.Add('agecondition=48');
    end;
}
    // LIG 연령특약기준 을 사용해서 15%할증한 값:  0, 21, 24, 26, 30, 48,
    case cboAgeCondition.ItemIndex of
      0: sl.Add('agecondition=0');
      1: sl.Add('agecondition=0');
      2: sl.Add('agecondition=21');
      3: sl.Add('agecondition=24');
      4: sl.Add('agecondition=26');
      5: sl.Add('agecondition=30');
      6: sl.Add('agecondition=30');
      7: sl.Add('agecondition=30');
      8: sl.Add('agecondition=48');
    end;



    case rdoYONGDO.ItemIndex of
      0: sl.Add('yongdo=LEI');
      1: sl.Add('yongdo=DEL');
      2: sl.Add('yongdo=QRT');
    end;

    sl.Add('career='+IntToStr(rdoCAREER.ItemIndex));
    sl.Add('renew='+IntToStr(rdoRENEW.ItemIndex));

    if ckDaein01.Checked then sl.Add('daein=daein01');
    if ckDaein02.Checked then sl.Add('daein=daein02');

    case rgDaemul.ItemIndex of
    0: sl.Add('daemul=daemul_1k');
    1: sl.Add('daemul=daemul_2k');
    2: sl.Add('daemul=daemul_3k');
    3: sl.Add('daemul=daemul_5k');
    4: sl.Add('daemul=daemul_5k');
    5: sl.Add('daemul=daemul_10k');
    end;

    case rgJasin.ItemIndex of
    1: sl.Add('jasin=jasin_15k');
    2: sl.Add('jasin=jasin_30k');
    3: sl.Add('jasin=jasin_50k');
    4: sl.Add('jasin=jasin_100k');

    end;

    if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
      CallService(GET_BIKE_QUOTE_ME_1005, sl, XDME, 'mmm.xml');

    try
      XDME.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    parseXMLME;

  finally
    sl.Free;
  end;

end;



procedure TfrmQuoteBike.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQuoteBike := nil;
  Action := caFree;
end;

procedure TfrmQuoteBike.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := ChangefromButton;

end;

procedure TfrmQuoteBike.FormCreate(Sender: TObject);
var
  y, i: Integer;
begin
  ChangefromButton := false;
  PageControl1.ActivePageIndex := 0;

  SGrid.Cells[0,0] := '보험회사';
  SGrid.Cells[1,0] := '담보(보상)내역';
  SGrid.Cells[2,0] := '금액차이';
  SGrid.Cells[3,0] := '보험료(1년)';
  SGrid.Cells[4,0] := '비고';

  y := StrToInt(FormatDateTime('YYYY', Now));
  cboUYEAR.Items.Add('전체');

  for i := 0 to 29 do
  begin
    cboUYEAR.Items.Add(IntToStr(y - i));
  end;

  cboUYEAR.ItemIndex := 0;
  dtINSU_SDATE.DateTime := Now;
  cboAgeCondition.ItemIndex := 0;

  setVisibleCardInfo(false);

end;

procedure TfrmQuoteBike.BitBtn5Click(Sender: TObject);
begin

  if trim(SGrid.Cells[3,SGrid.Row]) = '' then
  begin
    MessageDlg('보험 견적요청을 먼저 선택하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;

  ChangefromButton := true;
  PageControl1.ActivePageIndex := 1;
  ChangefromButton := false;

  // set insured info
  edtPremium.Text := SGrid.Cells[3,SGrid.Row];
  edtAGELIMIT.Text := cboAgeCondition.Items.Strings[cboAgeCondition.ItemIndex];
  edtBAEGI.Text := trim(meBAEGIRYANG.Text);//rdoBAEGIRYANG.Items.Strings[rdoBAEGIRYANG.ItemIndex];
  edtCAREER.Text := rdoCAREER.Items.Strings[rdoCAREER.ItemIndex];
  edtDOB.Text := edtJUMIN01.Text + '[만' + edtAGE.Text + '세]';
  edtINSURED_NAME.Text := edtUNAME.Text;
  edtPLUSCHARGE.Text := rdoRENEW.Items.Strings[rdoRENEW.ItemIndex];
  edtPOLICY_PERIOD.Text := FormatDateTime('YYYY/MM/DD', dtINSU_SDATE.Date) +' 부터 1년간'; 
  edtYONGDO.Text := rdoYONGDO.Items.Strings[rdoYONGDO.ItemIndex];


end;

procedure TfrmQuoteBike.BitBtn6Click(Sender: TObject);
begin
  ChangefromButton := true;
  PageControl1.ActivePageIndex := 0;
  ChangefromButton := false;
end;

procedure TfrmQuoteBike.BitBtn7Click(Sender: TObject);
begin

  if trim(edtUZIPCODE.Text) = '' then
  begin
    MessageDlg('우편번호를 입력하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUJUSO1.Text) = '' then
  begin
    MessageDlg('주소(시군구)를 입력하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUJUSO2.Text) = '' then
  begin
    MessageDlg('상세주소를 입력하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;
  if trim(edtUCARNO.Text) = '' then
  begin
    MessageDlg('차량번호 또는 차대번호를 입력하십시요.', mtWarning, [mbOK], 0);
    exit;
  end;



  if not sendApplication then
  begin
    ShowMessage('신청서 작성에 문제가 있습니다. 관리자에게 연락 바랍니다.');
  end
  else
  begin
    ChangefromButton := true;
    PageControl1.ActivePageIndex := 2;
    ChangefromButton := false;
    pnlApplicantName.Caption := edtUNAME.Text;


    pnlShowInsuredInfo.Parent := pnlParent02;

  end;
end;

procedure TfrmQuoteBike.BitBtn8Click(Sender: TObject);
begin
  ChangefromButton := true;
  PageControl1.ActivePageIndex := 1;
  ChangefromButton := false;

  pnlShowInsuredInfo.Parent := pnlParent01;
end;

procedure TfrmQuoteBike.BitBtn10Click(Sender: TObject);
var
  i, j: Integer;
begin
  if not validateData then exit;
  
  //aQ: Array[0..4, 0..2] of String;
  for i := 0 to 4 do
  begin
    for j := 0 to 2 do
    begin
       qA[i, j] := '';
    end;
  end;

  
  requestQuote;

  if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
    requestQuoteSS;

  if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
    requestQuoteME;

  if rgJasin.ItemIndex = 0 then //자기신체선택하면 삼성,메리츠는 요청안함
    fillSG
  else
    fillSGLIG;

end;

procedure TfrmQuoteBike.edtJUMIN01Exit(Sender: TObject);
begin

  try
    edtAge.Text := IntToStr(GetAge('19'+trim(edtJUMIN01.Text), Now));
  except
  end;

end;

procedure TfrmQuoteBike.Button2Click(Sender: TObject);
begin
  try
    frmZipPopup := TfrmZipPopup.Create(Self);
    if frmZipPopup.ShowModal = mrOK then
    begin
      edtUZIPCODE.Text := frmZipPopup.edtZipCode.Text;
      edtUJUSO1.Text := frmZipPopup.Edit2.Text;
      edtUJUSO2.Text := frmZipPopup.Edit3.Text;
    end;
  finally
    frmZipPopup.Free;
  end;
end;

procedure TfrmQuoteBike.edtJUMIN02Exit(Sender: TObject);
begin
  //try
    //if not Chk_Jumin(edtJUMIN01.Text+edtJUMIN02.Text) then
    //begin
      //MessageDlg('주민번호가 유효하지 않습니다.', mtWarning, [mbOK], 0);
    //end;

  //except
  //end;
end;

procedure TfrmQuoteBike.Button1Click(Sender: TObject);
begin
  try
    frmLegalPrivacy := TfrmLegalPrivacy.Create(Self);
    frmLegalPrivacy.ShowModal
  finally
    frmLegalPrivacy.Free;
  end;
end;

procedure TfrmQuoteBike.rdoPAYTYPEClick(Sender: TObject);
begin
  setVisibleCardInfo(rdoPAYTYPE.ItemIndex = 1);
end;

procedure TfrmQuoteBike.edtJUMIN01KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(edtJUMIN01.Text) = 6 then edtJUMIN02.SetFocus;
end;

procedure TfrmQuoteBike.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssCtrl in Shift then
    if Key = 84 then  // 't'
    begin
      try
        Form1 := TForm1.Create(Self);
        Form1.L := Lsql;
        Form1.S := Ssql;
        Form1.M := Msql;
        Form1.FillSQL;
        Form1.ShowModal;
      finally
        Form1.Free;
      end;
    end;
end;

procedure TfrmQuoteBike.BitBtn4Click(Sender: TObject);
begin
  ChangefromButton := true;
  PageControl1.ActivePageIndex := 0;
  ChangefromButton := false;
end;

procedure TfrmQuoteBike.rdoYONGDOClick(Sender: TObject);
var
  pt: TPoint;
  S: String;
begin
//  pt := rdoYONGDO.ClientToScreen(Point(1,1));
//  SetCursorPos(pt.X, pt.Y);

  case rdoYONGDO.ItemIndex of
  0: begin
      S := '개인이 "가정용 및 기타용도"로, 법인이 "업무용 및 기타용도"로 사용하는 이륜차(유상/대여/배달용 제외)' + #13;
      S := S + '(예) 출퇴근용 이륜차, (비유상)법인 업무용 이륜차 등';
    end;
  1: begin
      S := '(비유상) 배달용 이륜차 및 이와 유사한 형태의 이륜 자동차' + #13;
      S := S + '(예) 피자,치킨,음식배달용 이륜차,우편배달용 이륜차등';
    end;
  2: begin
      S := '요금이나 대가를 목적으로 사용하는 이륜자동차/대여 이륜자동차 및 이와 유사한 형태의 이륜자동차' + #13;
      S := S + '(예) 퀵서비스,대여이륜자동차 등';
    end;
  end;
  rdoYONGDO.Hint := S;


  Application.ActivateHint(pt);


end;

end.
