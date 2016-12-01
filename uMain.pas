unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, Menus, ToolWin, ComCtrls, Buttons,
  ImgList, BDE, IniFiles, Gauges, Jpeg, DBXpress, SqlExpr, uCommonProcs,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdThreadComponent, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, DateUtils;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    mnuSystem: TMenuItem;
    C1: TMenuItem;
    mnuHelp: TMenuItem;
    A2: TMenuItem;
    PopUpMenuBkG: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    SBar: TStatusBar;
    MnuView: TMenuItem;
    C5: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N8: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    X1: TMenuItem;
    A1: TMenuItem;
    C2: TMenuItem;
    A3: TMenuItem;
    O1: TMenuItem;
    ASS1: TMenuItem;
    P1: TMenuItem;
    I1: TMenuItem;
    O2: TMenuItem;
    N3: TMenuItem;
    Q1: TMenuItem;
    N4: TMenuItem;
    Q2: TMenuItem;
    A4: TMenuItem;
    P2: TMenuItem;
    C3: TMenuItem;
    OpenDialog1: TOpenDialog;
    S1: TMenuItem;
    S2: TMenuItem;
    I2: TMenuItem;
    C4: TMenuItem;
    B2: TMenuItem;
    A5: TMenuItem;
    ru1: TMenuItem;
    P3: TMenuItem;
    est1: TMenuItem;
    M1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    XD: TXMLDocument;
    mnuUpdate: TMenuItem;
    N17: TMenuItem;
    C6: TMenuItem;
    M2: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    A6: TMenuItem;
    G1: TMenuItem;
    tmUpdateCheck: TTimer;
    tmDisp: TTimer;
    IH: TIdHTTP;
    Thread1: TIdThreadComponent;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton10: TSpeedButton;
    ToolButton1: TToolButton;
    N18: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    N19: TMenuItem;
    S3: TMenuItem;
    M3: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    tmDBBackup: TTimer;
    F1: TMenuItem;
    X2: TMenuItem;
    X3: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    pnlCompany: TPanel;
    pnlTel: TPanel;
    pnlFax: TPanel;
    Panel2: TPanel;
    Button4: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button6: TButton;
    Label5: TLabel;
    Panel4: TPanel;
    lblSchedule1: TLabel;
    Label7: TLabel;
    tmSchedule: TTimer;
    qrySchedule: TQuery;
    lblSchedule2: TLabel;
    lblSchedule3: TLabel;
    Panel5: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Q3: TMenuItem;
    N2: TMenuItem;
    ToolButton2: TToolButton;
    N22: TMenuItem;
    N23: TMenuItem;
    P4: TMenuItem;
    I3: TMenuItem;
    N25: TMenuItem;
    N27: TMenuItem;
    ToolButton4: TToolButton;
    SpeedButton8: TSpeedButton;
    N24: TMenuItem;
    SpeedButton9: TSpeedButton;
    procedure C2Click(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure SBarDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure O1Click(Sender: TObject);
    procedure Q2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure ASS1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure O2Click(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure C3Click(Sender: TObject);
    procedure est1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure ru1Click(Sender: TObject);
    procedure A5Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure tmUpdateCheckTimer(Sender: TObject);
    procedure A6Click(Sender: TObject);
    procedure tmDispTimer(Sender: TObject);
    procedure mnuUpdateClick(Sender: TObject);
    procedure Thread1Run(Sender: TIdCustomThreadComponent);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure M3Click(Sender: TObject);
    procedure tmDBBackupTimer(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure X3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
    procedure tmScheduleTimer(Sender: TObject);
    procedure Q3Click(Sender: TObject);
    procedure lblSchedule1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure I3Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }

    RunInit: Boolean;
    UpdatedVersion: String;
    UpdatedFileName: String;

    Msg: array[0..2] of String;// to notify update 3 times
    msgIndex: Integer;

    procedure DrawFirstPanel(SB: TStatusBar; Pnl: TStatusPanel; Progress: Integer; Color: TColor);
    function ReadIniFile(ReadType: Integer): String;
    procedure WriteIniFile(BkgType, BkgValue: String);
    function registeredMemberCheck: Boolean;

    procedure PanelMsgProc(var msg : TMessage);
    procedure MDIClientProc(var msg: TMessage);

  public
    { Public declarations }
    connState: Boolean;
    BkType: Integer; //배경화면 정의 유형 1:비트맵, 2:그라디언트, 3:단일칼라
    BkValue: String;  //배경화면 정의에 사용되는 값

    OrgPanelProc : TWndMethod;
    NewClient, OldClient : FARPROC; 

    procedure RunUpdate;

  end;

  procedure PaintGradient(DC: hDC);

var
  frmMain: TfrmMain;

implementation

uses uCloseQuery, uDM, uPartCode, uVehicleRegist, uCustomer,
  uBikeTrade, uRepair, uSellBike, uQryBikeStock, uPartIn, uPartOut,
  uQryPartStock, uQryRptBike, uQryRptPart, uQryRptCust, Unit1, uQuoteBike,
  uMemberReg, uBikeQuoteList, uPointView, uAbout,
  uReq_Complain, uRepairCust, uInitForm, uSupplier, uDBBackup,
  uQryRptRepair, uAutoInsApp, uAutoQuoteList, uConverter, uScheduler,
  uQryRptIns, uSMS, uHelpDesk, uPreventCode, uPrevention, uPreventSMS,
  Debug;


const
  iBkgType = 0;
  iBkgValue = 1;


{$R *.DFM}

procedure TfrmMain.PanelMsgProc(var msg : TMessage);
begin
  if msg.Msg = WM_CHILDACTIVATE then
  begin
    Panel1.SendToBack;
  end;

  OrgPanelProc(Msg);
end;

procedure TfrmMain.MDIClientProc(var msg : TMessage);
var
  rc : TRect;
begin
  Msg.Result := CallWindowProc(OldClient,ClientHandle, Msg.Msg ,  Msg.WParam,Msg.LParam);

  if Msg.Msg= WM_SIZE then
  begin
    if(GetWindowRect(ClientHandle, rc)) then
    begin
      Panel1.Left := (self.Width - panel1.Width) div 2;
      Panel1.Top := (self.Height - panel1.Height) div 2;
    end;
  end;
end;


function TfrmMain.registeredMemberCheck: Boolean;
var
  i, j: Integer;
  S: String;
  KNode: IXMLNode;

  sl: TStringList;
begin

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    sl := TStringList.Create;
    sl.Add('uid='+BBIni.ReadString('MemberInfo', 'UID', ''));
    sl.Add('upass='+BBIni.ReadString('MemberInfo', 'UPASS', ''));
    sl.Add('uname='+BBIni.ReadString('MemberInfo', 'UNAME', ''));
    
    CallServiceHidden(GET_MEMBER_STATUS_CHECK, sl, XD);

    try
      if not XD.Active then XD.Active := true;

      for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
      begin
        KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
        S := KNode.ChildNodes['status'].Text; // wow case sensitive
             
        if trim(S) = 'OK' then
        begin
          result := true;
        end
        else
        begin
           MessageDlg('먼저 회원(사) 등록후 승인을 받으십시요. 관리자에게 연락바랍니다.'#13#13
                       + '회원승인을 이미 받은 경우에는 ID, 비밀번호를 확인하십시요', mtInformation, [mbOK], 0);
           result := false;
        end;
      end;

    except
    end;

  finally
    sl.Free;
    BBIni.Free;
  end;

end;

procedure PaintGradient(DC: hDC);
const
  Shades = 64;
var
  CRect: TRect;
  NewBrush, OldBrush: hBrush;
  I, FillBoxHeight: Integer;
  RectArray: array[1..Shades] of TRect;
begin
  GetClientRect(frmMain.ClientHandle, CRect);
  FillBoxHeight := CRect.Bottom div Shades;

  for I := 1 to Shades do
  with RectArray[I] do
  begin
    Left := CRect.Left;
    Right := CRect.Right;
    Top := (I - 1) * FillBoxHeight;
    Bottom := Top + FillBoxHeight;
  end;

  RectArray[Shades].Bottom := CRect.Bottom;

  for I := (Shades - 1) downto 0 do
  begin
    NewBrush := CreateSolidBrush(RGB(0, 0, ((I + 1) * 4 - 1)));
    OldBrush := SelectObject(DC, NewBrush);
    FillRect(DC, RectArray[Shades - I], NewBrush);
    SelectObject(DC, OldBrush);
    DeleteObject(NewBrush);
  end;
end;
function TfrmMain.ReadIniFile(ReadType: Integer): String;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    if ReadType = iBkgType then //BkgType return
    begin
      result := BBIni.ReadString('BkgSetting', 'BkgType', '-1');
    end
    else if ReadType = iBkgValue then //BkgValue return
    begin
      result := BBIni.ReadString('BkgSetting', 'BkgValue', '-1');
    end
    else
      result := 'Error';

  finally
    BBIni.Free;
  end;
end;

procedure TfrmMain.WriteIniFile(BkgType, BkgValue: String);
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    BBIni.WriteString('BkgSetting', 'BkgType', BkgType);
    BBIni.WriteString('BkgSetting', 'BkgValue', BkgValue);
  finally
    BBIni.Free;
  end;
end;


procedure TfrmMain.C2Click(Sender: TObject);
begin

  if frmCustomer = nil then
  begin
    frmCustomer:=TfrmCustomer.Create(Self);
    frmCustomer.Show;
  end
  else
  begin
    frmCustomer.Show;
  end;

end;

procedure TfrmMain.X1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  S: String;
begin

  Top := 5;
  Left := 5;
  Self.Width := 1270;
  Self.Height := 990;

  RunInit := True;

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    S := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');
    if not (trim(S)='') then
    begin
      SBar.Panels[0].Text := '' + '"'+ S + '"';
      pnlCompany.Caption := '' + '"'+ S + '"';

    end;

    S := BBIni.ReadString('MemberInfo', 'UTEL', '');
    if not (trim(S)='') then
    begin
      SBar.Panels[2].Text := S;
      pnlTel.Caption := 'TEL :  ' + S;
    end;

    S := BBIni.ReadString('MemberInfo', 'UFAX', '');
    if not (trim(S)='') then
    begin
      SBar.Panels[4].Text := S;
      pnlFax.Caption := 'FAX :  ' + S;
    end;

  finally
    BBIni.Free;
  end;

  msgIndex := 0;
  tmDisp.Enabled := false;
  mnuUpdate.Enabled := false;

  tmDBBackup.Enabled := true;
  tmDBBackupTimer(Self);
  tmSchedule.Enabled := true;
  try
    tmScheduleTimer(Self);
  except
  end;
  // for showing panel on mdi parent
  Panel1.Parent := nil;
  Panel1.ParentWindow := self.ClientHandle;
  //Panel1.Enabled := False;
  Panel1.DoubleBuffered := True;
  Panel1.BevelInner := bvNone;
  OrgPanelProc := Panel1.WindowProc;
  Panel1.WindowProc := PanelMsgProc;

  NewClient := FARPROC(MakeObjectInstance(MDIClientProc));
  OldClient := FARPROC(SetWindowLong(ClientHandle, GWL_WNDPROC, LPARAM(NewClient)));

  Panel1.Left := (self.Width - panel1.Width) div 2;
  Panel1.Top := (self.Height - panel1.Height) div 2;

end;

procedure TfrmMain.N13Click(Sender: TObject);
begin
  Cascade;
end;

procedure TfrmMain.N9Click(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TfrmMain.N8Click(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TfrmMain.N16Click(Sender: TObject);
var
  imgName: String;
begin

  if OpenDialog1.Execute then
  begin
    Tag := 2;
    Color := clGray;
    imgName := OpenDialog1.FileName;
    Image1.Picture.LoadFromFile(imgName);
    InvalidateRect(frmMain.ClientHandle, nil, True);
    //BkgType := 1로 세팅
    BkType := 1;
    BkValue := imgName;

  end;

end;

procedure TfrmMain.C1Click(Sender: TObject);
begin

  if frmPartCode = nil then
  begin
    frmPartCode:=TfrmPartCode.Create(Self);
    frmPartCode.Show;
  end
  else
  begin
    frmPartCode.Show;
  end;

end;

procedure TfrmMain.A1Click(Sender: TObject);
begin

  if frmVehicleRegist = nil then
  begin
    frmVehicleRegist:=TfrmVehicleRegist.Create(Self);
    frmVehicleRegist.Show;
  end
  else
  begin
    frmVehicleRegist.Show;
  end;
end;

procedure TfrmMain.DrawFirstPanel(SB: TStatusBar;
  Pnl: TStatusPanel; Progress: Integer; Color: TColor);
var
  Bmp: TBitmap;
begin
{
  try
    Bmp := TBitmap.Create;
    Bmp.Height := SB.Height - 9;
    Bmp.Width := LongInt(Trunc((Progress * Pnl.Width) /100.0));
    Bmp.Canvas.Brush.Color := Color;
    Bmp.Canvas.FillRect(Bmp.Canvas.ClipRect);
    SB.Canvas.CopyMode := cmSrcCopy;
    SB.Canvas.Draw(4, 5, Bmp);
  finally
    Bmp.Destroy;
  end;
}
end;

procedure TfrmMain.SBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
//var
//  bmp: TBitmap;
begin
{  try
    bmp := TBitmap.Create;
    case Panel.Index of
    0:  //상태바 초기화면
      begin
        DrawFirstPanel(StatusBar, Panel, 0, clNavy);
      end;
    1:  //접속상담원수
      begin
        ImageList2.GetBitmap(0, bmp);
        StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Bmp);
        //StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Bitmap);
        StatusBar1.Canvas.TextOut(Rect.Left + 20, Rect.Top + 2, '접속상담원수');
      end;
    3:  //접속고객수
      begin
        ImageList2.GetBitmap(1, bmp);
        StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Bmp);
        //StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Bitmap);
        StatusBar1.Canvas.TextOut(Rect.Left + 20, Rect.Top + 2, '접속고객수');
      end;
    5:  //대기고객수
      begin
        ImageList2.GetBitmap(2, bmp);
        StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Bmp);
        StatusBar1.Canvas.TextOut(Rect.Left + 20, Rect.Top + 2, '대기고객수');
      end;
    7:  //금일접속고객수
      begin
        ImageList2.GetBitmap(3, bmp);
        StatusBar1.Canvas.Draw(Rect.Left, Rect.Top, Bmp);
        StatusBar1.Canvas.TextOut(Rect.Left + 20, Rect.Top + 2, '금일접속고객수');
      end;
    else
      Exit;
    end;
  finally
    bmp.Free;
  end;}
end;

procedure TfrmMain.O1Click(Sender: TObject);
begin

  if frmBikeTrade = nil then
  begin
    frmBikeTrade := TfrmBikeTrade.Create(Self);
    frmBikeTrade.Show;
  end
  else
  begin
    frmBikeTrade.Show;
  end;

end;

procedure TfrmMain.Q2Click(Sender: TObject);
begin
  if frmQryBikeStock = nil then
  begin
    frmQryBikeStock:=TfrmQryBikeStock.Create(Self);
    frmQryBikeStock.Show;
  end
  else
  begin
    frmQryBikeStock.Show;
  end;

end;

procedure TfrmMain.FormPaint(Sender: TObject);
var
  BkgType: Integer;
  BkgValue: String;
begin
{
  if not RunInit then Exit else RunInit := False;

  BkgType := StrToInt(ReadIniFile(iBkgType));
  BkType := BkgType;
  BkgValue := ReadIniFile(iBkgValue);
  BkValue := BkgValue;

  Case BkgType of
  1: //비트맵 파일 출력
  begin
    Tag := 2;
    Color := clBtnFace;  // clGray
    Image1.Picture.LoadFromFile(BkgValue);
    InvalidateRect(frmMain.ClientHandle, nil, True);
    //InvalidateRect(Image1.Handle, nil, True);
 end;
  2: //그라디언트
  begin
    Tag := 1;
    Color := clBlue;
    InvalidateRect(frmMain.ClientHandle, nil, True);
  end;
  3: //단일칼라
  begin
    Tag := 0;
    Color := StrToInt(BkgValue);
    InvalidateRect(frmMain.ClientHandle, nil, True);
  end;

  end;
}
end;

procedure TfrmMain.S1Click(Sender: TObject);
begin
  WriteIniFile(IntToStr(BkType), BkValue);
  MessageDlg('배경설정이 저장되었습니다.', mtInformation, [mbOK], 0);
end;

procedure TfrmMain.ASS1Click(Sender: TObject);
begin
  if frmRepairCust = nil then
  begin
    frmRepairCust := TfrmRepairCust.Create(Self);
    frmRepairCust.Show;
  end
  else
  begin
    frmRepairCust.Show;
  end;
end;

procedure TfrmMain.S2Click(Sender: TObject);
begin
  if frmSellBike = nil then
  begin
    frmSellBike := TfrmSellBike.Create(Self);
    frmSellBike.Show;
  end
  else
  begin
    frmSellBike.Show;
  end;

end;

procedure TfrmMain.I1Click(Sender: TObject);
begin
  if frmPartIn = nil then
  begin
    frmPartIn:=TfrmPartIn.Create(Self);
    frmPartIn.Show;
  end
  else
  begin
    frmPartIn.Show;
  end;

end;

procedure TfrmMain.O2Click(Sender: TObject);
begin
  if frmPartOut = nil then
  begin
    frmPartOut:=TfrmPartOut.Create(Self);
    frmPartOut.Show;
  end
  else
  begin
    frmPartOut.Show;
  end;
end;

procedure TfrmMain.Q1Click(Sender: TObject);
begin
  if frmQryPartStock = nil then
  begin
    frmQryPartStock:=TfrmQryPartStock.Create(Self);
    frmQryPartStock.setPageControlIndex(0);
    frmQryPartStock.Show;
  end
  else
  begin
    frmQryPartStock.Show;
  end;

end;

procedure TfrmMain.A4Click(Sender: TObject);
begin

  if frmQryRptBike = nil then
  begin
    frmQryRptBike:=TfrmQryRptBike.Create(Self);
    frmQryRptBike.Show;
  end
  else
  begin
    frmQryRptBike.Show;
  end;

end;

procedure TfrmMain.P2Click(Sender: TObject);
begin
  if frmQryPartStock = nil then
  begin
    frmQryPartStock:=TfrmQryPartStock.Create(Self);
    frmQryPartStock.setPageControlIndex(1);
    frmQryPartStock.Show;
  end
  else
  begin
    frmQryPartStock.Show;
  end;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if IsMainClose then 
  begin
  end
  else
  begin
    CanClose := False;
  end;
end;

procedure TfrmMain.C3Click(Sender: TObject);
begin

  if frmQryRptCust = nil then
  begin
    frmQryRptCust:=TfrmQryRptCust.Create(Self);
    frmQryRptCust.Show;
  end
  else
  begin
    frmQryRptCust.Show;
  end;


end;

procedure TfrmMain.est1Click(Sender: TObject);
begin
  if Form1 = nil then
  begin
    Form1:=TForm1.Create(Self);
    Form1.Show;
  end
  else
  begin
    Form1.Show;
  end;
end;

procedure TfrmMain.B2Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmQuoteBike = nil then
  begin
    frmQuoteBike := TfrmQuoteBike.Create(Self);
    frmQuoteBike.Show;
  end
  else
  begin
    frmQuoteBike.Show;
  end;
end;

procedure TfrmMain.M1Click(Sender: TObject);
begin
  if frmMemberReg = nil then
  begin
    frmMemberReg := TfrmMemberReg.Create(Self);
    frmMemberReg.Show;
  end
  else
  begin
    frmMemberReg.Show;
  end;
end;

procedure TfrmMain.ru1Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmBikeQuoteList = nil then
  begin
    frmBikeQuoteList := TfrmBikeQuoteList.Create(Self);
    frmBikeQuoteList.Show;
  end
  else
  begin
    frmBikeQuoteList.Show;
  end;
end;

procedure TfrmMain.A5Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;


  if frmAutoInsApp = nil then
  begin
    frmAutoInsApp := TfrmAutoInsApp.Create(Self);
    frmAutoInsApp.Show;
  end
  else
  begin
    frmAutoInsApp.Show;
  end;

end;

procedure TfrmMain.P3Click(Sender: TObject);
begin
  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmPointView = nil then
  begin
    frmPointView := TfrmPointView.Create(Self);
    frmPointView.Show;
  end
  else
  begin
    frmPointView.Show;
  end;

end;

procedure TfrmMain.A2Click(Sender: TObject);
begin
  try
    frmAboutBox := TfrmAboutBox.Create(Self);
    frmAboutBox.ShowModal;
  finally
    frmAboutBox.Free;
  end;
end;

procedure TfrmMain.tmUpdateCheckTimer(Sender: TObject);
var
  i, j, k, x: Integer;
  KNode: IXMLNode;
  sl: TStringList;
begin
  
  tmUpdateCheck.Interval := 1000 * 60 * 60 * 24; // 로그인후 5분후에 한번, 그후 1일후
  try
    sl := TStringList.Create;
    sl.Add('bbversion='+BB_VERSION);
    CallServiceHidden(GET_VERSION, sl, XD);

    if not XD.Active then exit;

    k := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count;

    for i := 0 to k - 1 do
    begin
      KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

      UpdatedVersion := KNode.ChildNodes['VERSION'].Text;
      if UpdatedVersion > BB_VERSION then
      begin
        tmUpdateCheck.Enabled := false;
        Msg[0] := '최신버전이 있습니다.';
        Msg[1] := '도구-업데이트 다운로드 메뉴에서...';
        Msg[2] := '최신 버전을 받으십시요.('+UpdatedVersion+')';
        tmDisp.Enabled := true;

        mnuUpdate.Enabled := true;

      end;
    end;
  finally
    sl.Free;
  end;
end;

procedure TfrmMain.A6Click(Sender: TObject);
begin
  if frmReq_Complain = nil then
  begin
    frmReq_Complain := TfrmReq_Complain.Create(Self);
    frmReq_Complain.Show;
  end
  else
  begin
    frmReq_Complain.Show;
  end;
end;

procedure TfrmMain.tmDispTimer(Sender: TObject);
begin
  SBar.Panels[6].Text := Msg[msgIndex mod 3];
  inc(msgIndex);
end;

procedure TfrmMain.mnuUpdateClick(Sender: TObject);
begin
  SBar.Panels[6].Text := '업데이트 파일 다운로드중...';
  Thread1.Start;
end;

procedure TfrmMain.RunUpdate;
begin
  SBar.Panels[6].Text := '업데이트 파일 다운로드 완료.';
  if MessageDlg('다음번 프로그램 실행시 업데이트를 실행하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      BBINI := TIniFile.Create(BBUDDY_INI);
      BBINI.WriteString('UPDATE', 'RUN', GetCurrDir + '\' + GET_UPDATE_FILENAME + StringReplace(UpdatedVersion, '.', '_', [rfReplaceAll])+'.exe');
    finally
      BBINI.Free;
    end;
  end
  else
  begin
    try
      BBINI := TIniFile.Create(BBUDDY_INI);
      BBINI.WriteString('UPDATE', 'RUN', '');
    finally
      BBINI.Free;
    end;
  end;
end;

procedure TfrmMain.Thread1Run(Sender: TIdCustomThreadComponent);
var
  MS: TMemoryStream;
  FSize: Integer;
  UpdateUrl: String;
begin

  tmDisp.Enabled := false;

  // start download thread
  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  MS := TMemoryStream.Create;
  try
    try
      UpdatedFileName := GET_UPDATE_FILENAME + StringReplace(UpdatedVersion, '.', '_', [rfReplaceAll])+'.exe';
      UpdateUrl := GET_UPDATE_DIR + UpdatedFileName;

      //IH.OnWork := HTTPWork;
      IH.Head(UpdateUrl);
      FSize := IH.Response.ContentLength;
      IH.Get(UpdateUrl, MS);
      MS.SaveToFile(UpdatedFileName);
      Thread1.Synchronize(RunUpdate);
    except
    end;
  finally
    MS.Free;
    Thread1.Stop;
  end;

end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  C2Click(Self);
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  C6Click(Self);
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
  ASS1Click(Self);
end;

procedure TfrmMain.SpeedButton4Click(Sender: TObject);
begin
  C1Click(Self);
end;

procedure TfrmMain.SpeedButton5Click(Sender: TObject);
begin
  B2Click(Self);
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
begin
  A5Click(Self);
end;

procedure TfrmMain.SpeedButton7Click(Sender: TObject);
begin
  Q3Click(Self);
end;

procedure TfrmMain.SpeedButton10Click(Sender: TObject);
begin
  X1Click(Self);
end;

procedure TfrmMain.N5Click(Sender: TObject);
var
  S: String;
begin
  try
    frmInitForm := TfrmInitForm.Create(Self);
    if frmInitForm.ShowModal = mrOK then
    begin

    end;
  finally
    frmInitForm.Free;
  end;
end;

procedure TfrmMain.S3Click(Sender: TObject);
begin
  if frmSupplier = nil then
  begin
    frmSupplier := TfrmSupplier.Create(Self);
    frmSupplier.Show;
  end
  else
  begin
    frmSupplier.Show;
  end;

end;

procedure TfrmMain.C5Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to MdiChildCount - 1 do
    MDIChildren[i].Close;
end;

procedure TfrmMain.N10Click(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TfrmMain.M3Click(Sender: TObject);
begin
  try
    frmDBBackup := TfrmDBBackup.Create(Self);
    frmDBBackup.ShowModal;
  finally
    frmDBBackup.Free;
  end;
end;

procedure TfrmMain.tmDBBackupTimer(Sender: TObject);
const
  DATA = '\data';
var
  curDir, destDir: String;
  lastBKDate: String;
  userPeriod: String;
begin

  try
    BBIni := TIniFile.Create(BBUDDY_INI);

    if BBIni.ReadString('BACKUP', 'AUTOBACKUP', '') = '1' then
    begin
      lastBKDate := BBIni.ReadString('BACKUP', 'LASTBACKUPDAY', '');
      try
        if StrToInt(lastBKDate) < 20000000 then exit; // 날짜형식인지 체크
      except
        exit;
      end;

      if BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'EVERYDAY' then
      begin
        if DaysBetween(Now, ConvertDate(lastBKDate)) < 1 then exit;
           
      end
      else if  BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'WEEKLY' then
      begin
        if DaysBetween(Now, ConvertDate(lastBKDate)) < 7 then exit;
      end
      else if  BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'MONTHLY' then
      begin
        if DaysBetween(Now, ConvertDate(lastBKDate)) < 30 then exit;
      end
      else if  BBIni.ReadString('BACKUP', 'AUTOPERIOD', '') = 'USERDEFINED' then
      begin
        userPeriod := BBIni.ReadString('BACKUP', 'USERDEFINEDDAYS', '');
        try
          if DaysBetween(Now, ConvertDate(lastBKDate)) < StrToInt(userPeriod) then exit;
        except
          exit;
        end;
      end
      else
      begin // weekly default approach
        if DaysBetween(Now, ConvertDate(lastBKDate)) < 7 then exit;
      end;

    curDir := GetCurrentDir+DATA;
    destDir := curDir+FormatDateTime('YYYYMMDD', Now);
    if DirectoryExists(destDir) then
    begin
      //MessageDlg('이미 백업이 생성되었습니다.', mtInformation, [mbOK], 0);
      exit;
    end;

    if CopyDir(curDir, destDir) = True then
      //MessageDlg('자료 백업이 완료되었습니다.', mtInformation, [mbOK], 0)
    else
    begin
      MessageDlg('자료 백업중 문제가 발생했습니다. 관리자에게 문의하십시요.', mtWarning, [mbOK], 0);
      exit;
    end;

    BBIni.WriteString('BACKUP', 'LASTBACKUPDAY', FormatDateTime('YYYYMMDD', Now));
    end;
  finally
    BBIni.Free;
  end;

end;

procedure TfrmMain.F1Click(Sender: TObject);
begin

  if frmQryRptRepair = nil then
  begin
    frmQryRptRepair := TfrmQryRptRepair.Create(Self);
    frmQryRptRepair.Show;
  end
  else
  begin
    frmQryRptRepair.Show;
  end;
end;

procedure TfrmMain.N21Click(Sender: TObject);
begin
  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmAutoQuoteList = nil then
  begin
    frmAutoQuoteList := TfrmAutoQuoteList.Create(Self);
    frmAutoQuoteList.Show;
  end
  else
  begin
    frmAutoQuoteList.Show;
  end;
end;

procedure TfrmMain.X3Click(Sender: TObject);
begin
  if frmConverter = nil then
  begin
    frmConverter := TfrmConverter.Create(Self);
    frmConverter.Show;
  end
  else
  begin
    frmConverter.Show;
  end;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin

//  Panel1.Left := (frmMain.Width - Panel1.Width) div 2;
//  Panel1.Top := (frmMain.Height - Panel1.Height) div 2;
    
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  if frmMemberReg = nil then
  begin
    frmMemberReg := TfrmMemberReg.Create(Self);
    frmMemberReg.Show;
  end
  else
  begin
    frmMemberReg.Show;
  end;
end;

procedure TfrmMain.C6Click(Sender: TObject);
begin
  if frmScheduler = nil then
  begin
    frmScheduler := TfrmScheduler.Create(Self);
    frmScheduler.Show;
  end
  else
  begin
    frmScheduler.Show;
  end;
end;

procedure TfrmMain.tmScheduleTimer(Sender: TObject);
var
  i: Integer;
  sdate: TDateTime;
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin

  lblSchedule1.Caption := '';
  lblSchedule2.Caption := '';
  lblSchedule3.Caption := '';

  qrySchedule.Close;
  qrySchedule.ParamByName('SDATE').AsString := FormatDateTime('YYYYMMDD', Now);
  qrySchedule.ParamByName('NDATE').AsString := FormatDateTime('YYYYMMDD', AddDate(Now, 1));
  qrySchedule.Open;

  for i := 0 to qrySchedule.RecordCount - 1 do
  begin
    if qrySchedule.FieldByName('ALARM_1DAY').AsString = 'Y' then
    begin

      AYear := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 1, 4));
      AMonth := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 5, 2));
      ADay := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 7, 2));
      AHour := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 1, 2));
      AMinute := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 4, 2));

      if Copy(qrySchedule.FieldByName('STIME').AsString, 7, 2) = 'PM' then AHour := AHour + 12;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 AM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 AM') then AHour := 0;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 PM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 PM') then AHour := 12;

      ASecond := 0;
      AMilliSecond := 0;
      sdate := EncodeDateTime(AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);

      if (HoursBetween(Now, sdate) >= 11) and (HoursBetween(Now, sdate) < 13) then
        lblSchedule1.Caption :=
          '일정알림 : ' +
          qrySchedule.FieldByName('STITLE').AsString +
          ' (시작시간: ' +
          qrySchedule.FieldByName('SDATE').AsString +
          ' ' +
          qrySchedule.FieldByName('STIME').AsString + ')';

    end;

    if qrySchedule.FieldByName('ALARM_1HOUR').AsString = 'Y' then
    begin

      AYear := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 1, 4));
      AMonth := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 5, 2));
      ADay := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 7, 2));
      AHour := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 1, 2));
      AMinute := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 4, 2));

      if Copy(qrySchedule.FieldByName('STIME').AsString, 7, 2) = 'PM' then AHour := AHour + 12;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 AM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 AM') then AHour := 0;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 PM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 PM') then AHour := 12;

      ASecond := 0;
      AMilliSecond := 0;
      sdate := EncodeDateTime(AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);


      if (MinutesBetween(Now, sdate) >= 55) and (MinutesBetween(Now, sdate) < 65) then
        lblSchedule2.Caption :=
          '일정알림 : ' +
          qrySchedule.FieldByName('STITLE').AsString +
          ' (시작시간: ' +
          qrySchedule.FieldByName('SDATE').AsString +
          ' ' +
          qrySchedule.FieldByName('STIME').AsString + ')';

    end;

    if qrySchedule.FieldByName('ALARM_30MIN').AsString = 'Y' then
    begin

      AYear := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 1, 4));
      AMonth := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 5, 2));
      ADay := StrToInt(Copy(qrySchedule.FieldByName('SDATE').AsString, 7, 2));
      AHour := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 1, 2));
      AMinute := StrToInt(Copy(qrySchedule.FieldByName('STIME').AsString, 4, 2));

      if Copy(qrySchedule.FieldByName('STIME').AsString, 7, 2) = 'PM' then AHour := AHour + 12;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 AM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 AM') then AHour := 0;

      if (qrySchedule.FieldByName('STIME').AsString = '12:00 PM') or
        (qrySchedule.FieldByName('STIME').AsString = '12:30 PM') then AHour := 12;

      ASecond := 0;
      AMilliSecond := 0;
      sdate := EncodeDateTime(AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);


      if (MinutesBetween(Now, sdate) >= 25) and (MinutesBetween(Now, sdate) < 35) then
        lblSchedule3.Caption :=
          '일정알림 : ' +
          qrySchedule.FieldByName('STITLE').AsString +
          ' (시작시간: ' +
          qrySchedule.FieldByName('SDATE').AsString +
          ' ' +
          qrySchedule.FieldByName('STIME').AsString + ')';
    end;

    qrySchedule.Next;
    
  end;
end;

procedure TfrmMain.Q3Click(Sender: TObject);
begin
  if frmQryRptIns = nil then
  begin
    frmQryRptIns := TfrmQryRptIns.Create(Self);
    frmQryRptIns.Show;
  end
  else
  begin
    frmQryRptIns.Show;
  end;
end;

procedure TfrmMain.lblSchedule1Click(Sender: TObject);
begin
  //
end;

procedure TfrmMain.N7Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmSMS = nil then
  begin
    frmSMS := TfrmSMS.Create(Self);
    frmSMS.Show;
  end
  else
  begin
    frmSMS.Show;
  end;

end;

procedure TfrmMain.N22Click(Sender: TObject);
begin
  if frmHelpDesk = nil then
  begin
    frmHelpDesk:=TfrmHelpDesk.Create(Self);
    frmHelpDesk.Show;
  end
  else
  begin
    frmHelpDesk.Show;
  end;
end;

procedure TfrmMain.I3Click(Sender: TObject);
begin
  if frmPreventCode = nil then
  begin
    frmPreventCode := TfrmPreventCode.Create(Self);
    frmPreventCode.Show;
  end
  else
  begin
    frmPreventCode.Show;
  end;
end;

procedure TfrmMain.N25Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmPrevention = nil then
  begin
    frmPrevention := TfrmPrevention.Create(Self);
    frmPrevention.Show;
  end
  else
  begin
    frmPrevention.Show;
  end;
end;

procedure TfrmMain.SpeedButton8Click(Sender: TObject);
begin
  N25Click(Self);
end;

procedure TfrmMain.N27Click(Sender: TObject);
begin

  if not registeredMemberCheck then
  begin
    MessageDlg('먼저 회원사 등록후 관리자의 승인을 받으십시요.', mtInformation, [mbOK], 0);
    exit;
  end;

  if frmPreventSMS = nil then
  begin
    frmPreventSMS := TfrmPreventSMS.Create(Self);
    frmPreventSMS.Show;
  end
  else
  begin
    frmPreventSMS.Show;
  end;
end;

procedure TfrmMain.SpeedButton9Click(Sender: TObject);
begin
  N27Click(Self);
end;

end.
