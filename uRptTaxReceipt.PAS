unit uRptTaxReceipt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TRptTaxReceipt = class(TForm)
    QR1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel9: TQRLabel;
    QRShape14: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape21: TQRShape;
    QRLabel15: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel21: TQRLabel;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape62: TQRShape;
    QRLabel49: TQRLabel;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape73: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape159: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRLabel135: TQRLabel;
    QRShape163: TQRShape;
    QRShape165: TQRShape;
    QRShape80: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape81: TQRShape;
    QRLabel74: TQRLabel;
    QRShape82: TQRShape;
    QRLabel75: TQRLabel;
    QRShape83: TQRShape;
    QRLabel76: TQRLabel;
    QRShape84: TQRShape;
    QRLabel77: TQRLabel;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRLabel78: TQRLabel;
    QRShape87: TQRShape;
    QRShape22: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape41: TQRShape;
    A1: TQRLabel;
    A2: TQRLabel;
    B1: TQRLabel;
    B2: TQRLabel;
    B3: TQRLabel;
    B4: TQRLabel;
    B5: TQRLabel;
    B6: TQRLabel;
    C1: TQRLabel;
    C2: TQRLabel;
    C3: TQRLabel;
    C4: TQRLabel;
    C5: TQRLabel;
    C6: TQRLabel;
    C7: TQRLabel;
    C8: TQRLabel;
    C9: TQRLabel;
    C10: TQRLabel;
    C11: TQRLabel;
    D1: TQRLabel;
    D3: TQRLabel;
    D4: TQRLabel;
    D6: TQRLabel;
    E1: TQRLabel;
    E2: TQRLabel;
    F1: TQRLabel;
    F2: TQRLabel;
    F3: TQRLabel;
    F4: TQRLabel;
    G1: TQRLabel;
    G2: TQRLabel;
    G3: TQRLabel;
    G4: TQRLabel;
    G5: TQRLabel;
    G6: TQRLabel;
    G7: TQRLabel;
    G8: TQRLabel;
    G9: TQRLabel;
    G10: TQRLabel;
    G11: TQRLabel;
    G12: TQRLabel;
    G13: TQRLabel;
    G14: TQRLabel;
    G15: TQRLabel;
    G16: TQRLabel;
    G17: TQRLabel;
    G18: TQRLabel;
    G19: TQRLabel;
    G20: TQRLabel;
    G21: TQRLabel;
    G22: TQRLabel;
    G23: TQRLabel;
    G24: TQRLabel;
    G25: TQRLabel;
    G26: TQRLabel;
    H1: TQRLabel;
    K1: TQRLabel;
    L1: TQRLabel;
    M1: TQRLabel;
    H2: TQRLabel;
    K2: TQRLabel;
    L2: TQRLabel;
    M2: TQRLabel;
    H3: TQRLabel;
    K3: TQRLabel;
    L3: TQRLabel;
    M3: TQRLabel;
    H4: TQRLabel;
    K4: TQRLabel;
    L4: TQRLabel;
    M4: TQRLabel;
    H5: TQRLabel;
    K5: TQRLabel;
    L5: TQRLabel;
    M5: TQRLabel;
    H7: TQRLabel;
    K7: TQRLabel;
    L7: TQRLabel;
    M7: TQRLabel;
    H8: TQRLabel;
    K8: TQRLabel;
    L8: TQRLabel;
    M8: TQRLabel;
    H9: TQRLabel;
    K9: TQRLabel;
    L9: TQRLabel;
    M9: TQRLabel;
    N1: TQRLabel;
    N2: TQRLabel;
    N3: TQRLabel;
    N4: TQRLabel;
    N5: TQRLabel;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRLabel20: TQRLabel;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRLabel79: TQRLabel;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRLabel84: TQRLabel;
    QRShape108: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRShape109: TQRShape;
    QRLabel89: TQRLabel;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRLabel90: TQRLabel;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRShape148: TQRShape;
    QRLabel118: TQRLabel;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRShape164: TQRShape;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel137: TQRLabel;
    QRShape171: TQRShape;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRShape172: TQRShape;
    QRShape173: TQRShape;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRLabel140: TQRLabel;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRShape180: TQRShape;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRShape181: TQRShape;
    QRLabel152: TQRLabel;
    QRShape182: TQRShape;
    QRLabel153: TQRLabel;
    QRShape183: TQRShape;
    QRLabel154: TQRLabel;
    QRShape184: TQRShape;
    QRLabel155: TQRLabel;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRLabel156: TQRLabel;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    AA1: TQRLabel;
    AA2: TQRLabel;
    BB1: TQRLabel;
    BB2: TQRLabel;
    BB3: TQRLabel;
    BB4: TQRLabel;
    BB5: TQRLabel;
    BB6: TQRLabel;
    CC1: TQRLabel;
    CC2: TQRLabel;
    CC3: TQRLabel;
    CC4: TQRLabel;
    CC5: TQRLabel;
    CC6: TQRLabel;
    CC7: TQRLabel;
    CC8: TQRLabel;
    CC9: TQRLabel;
    CC10: TQRLabel;
    CC11: TQRLabel;
    DD1: TQRLabel;
    DD3: TQRLabel;
    DD4: TQRLabel;
    DD6: TQRLabel;
    EE1: TQRLabel;
    EE2: TQRLabel;
    FF1: TQRLabel;
    FF2: TQRLabel;
    FF3: TQRLabel;
    FF4: TQRLabel;
    GG1: TQRLabel;
    GG2: TQRLabel;
    GG3: TQRLabel;
    GG4: TQRLabel;
    GG5: TQRLabel;
    GG6: TQRLabel;
    GG7: TQRLabel;
    GG8: TQRLabel;
    GG9: TQRLabel;
    GG10: TQRLabel;
    GG11: TQRLabel;
    GG12: TQRLabel;
    GG13: TQRLabel;
    GG14: TQRLabel;
    GG15: TQRLabel;
    GG16: TQRLabel;
    GG17: TQRLabel;
    GG18: TQRLabel;
    GG19: TQRLabel;
    GG20: TQRLabel;
    GG21: TQRLabel;
    GG22: TQRLabel;
    GG23: TQRLabel;
    GG24: TQRLabel;
    GG25: TQRLabel;
    GG26: TQRLabel;
    HH1: TQRLabel;
    KK1: TQRLabel;
    LL1: TQRLabel;
    MM1: TQRLabel;
    HH2: TQRLabel;
    KK2: TQRLabel;
    LL2: TQRLabel;
    MM2: TQRLabel;
    HH3: TQRLabel;
    KK3: TQRLabel;
    LL3: TQRLabel;
    MM3: TQRLabel;
    HH4: TQRLabel;
    KK4: TQRLabel;
    LL4: TQRLabel;
    MM4: TQRLabel;
    HH5: TQRLabel;
    KK5: TQRLabel;
    LL5: TQRLabel;
    MM5: TQRLabel;
    HH7: TQRLabel;
    KK7: TQRLabel;
    LL7: TQRLabel;
    MM7: TQRLabel;
    HH8: TQRLabel;
    KK8: TQRLabel;
    LL8: TQRLabel;
    MM8: TQRLabel;
    HH9: TQRLabel;
    KK9: TQRLabel;
    LL9: TQRLabel;
    MM9: TQRLabel;
    NN1: TQRLabel;
    NN2: TQRLabel;
    NN3: TQRLabel;
    NN4: TQRLabel;
    NN5: TQRLabel;
    HH6: TQRLabel;
    KK6: TQRLabel;
    LL6: TQRLabel;
    MM6: TQRLabel;
    QRShape193: TQRShape;
    B7: TQRLabel;
    QRShape194: TQRShape;
    BB7: TQRLabel;
    QRShape195: TQRShape;
    QRShape196: TQRShape;
    QRLabel134: TQRLabel;
    QRLabel136: TQRLabel;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    M6: TQRLabel;
    L6: TQRLabel;
    K6: TQRLabel;
    H6: TQRLabel;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRShape201: TQRShape;
    QRShape203: TQRShape;
    QRShape202: TQRShape;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRShape211: TQRShape;
    QRShape212: TQRShape;
    QRShape213: TQRShape;
    QRShape214: TQRShape;
    QRShape215: TQRShape;
    QRShape216: TQRShape;
    QRShape218: TQRShape;
    QRShape219: TQRShape;
    QRShape217: TQRShape;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure QR1BeforePrint;

  public
    { Public declarations }
  end;

var
  RptTaxReceipt: TRptTaxReceipt;

implementation

{$R *.DFM}


procedure TRptTaxReceipt.FormCreate(Sender: TObject);
var
   i : Integer;
begin
   {Caption의 초기화 ----------------------------------------------------------}
   For i := 0 To ComponentCount - 1 Do
   Begin
      If NOT (Components[i] is TQRLabel) Then
         Continue;

      If Pos(Copy(TQrLabel(Components[i]).Name,1,1),'ABCDEFGHKLMN') > 0 Then
         TQrLabel(Components[i]).Caption := '';
   End;

   {===========================================================================}
end;


//============================================================================//
// 추울력                                                                     //
//============================================================================//
procedure TRptTaxReceipt.QR1BeforePrint;
begin
   {책번호 --------------------------------------------------------------------}
   A1.Caption  := '';
   A2.Caption  := '';

   AA1.Caption := '';
   AA2.Caption := '';
   {===========================================================================}


   {일련번호 ------------------------------------------------------------------}
   B1.Caption  := '';
   B2.Caption  := '';
   B3.Caption  := '';
   B4.Caption  := '';
   B5.Caption  := '';
   B6.Caption  := '';
   B7.Caption  := '';

   BB1.Caption := '';
   BB2.Caption := '';
   BB3.Caption := '';
   BB4.Caption := '';
   BB5.Caption := '';
   BB6.Caption := '';
   BB7.Caption := '';
   {===========================================================================}


   {공급자 --------------------------------------------------------------------}
   C1.Caption  := '';      //등록번호
   D1.Caption  := '';      //상호
   D3.Caption  := '';;     //성명
   E1.Caption  := '';      //주소
   F1.Caption  := '';      //업태
   F2.Caption  := '';      //업종

   CC1.Caption := '';      //등록번호
   DD1.Caption := '';      //상호
   DD3.Caption := '';      //성명
   EE1.Caption := '';      //주소
   FF1.Caption := '';      //업태
   FF2.Caption := '';      //업종
   {===========================================================================}


   {공급받는자 ----------------------------------------------------------------}
   C2.Caption  := ''; //등록번호
   C3.Caption  := ''; //등록번호
   C4.Caption  := ''; //등록번호
   C5.Caption  := ''; //등록번호
   C6.Caption  := ''; //등록번호
   C7.Caption  := ''; //등록번호
   C8.Caption  := ''; //등록번호
   C9.Caption  := ''; //등록번호
   C10.Caption := ''; //등록번호
   C11.Caption := ''; //등록번호

   D4.Caption  := '';   //상호
   D6.Caption  := '';   //성명
   E2.Caption  := '';   //주소
   F3.Caption  := '';   //업태
   F4.Caption  := '';   //업종

   CC2.Caption  := ''; //등록번호
   CC3.Caption  := ''; //등록번호
   CC4.Caption  := ''; //등록번호
   CC5.Caption  := ''; //등록번호
   CC6.Caption  := ''; //등록번호
   CC7.Caption  := ''; //등록번호
   CC8.Caption  := ''; //등록번호
   CC9.Caption  := ''; //등록번호
   CC10.Caption := ''; //등록번호
   CC11.Caption := ''; //등록번호

   DD4.Caption  := '';     //상호
   DD6.Caption  := '';     //성명
   EE2.Caption  := '';     //주소
   FF3.Caption  := '';     //업태
   FF4.Caption  := '';     //업종
   {===========================================================================}

   {작성 ----------------------------------------------------------------------}
   G1.Caption   := '';
   G2.Caption   := '';
   G3.Caption   := '';

   GG1.Caption  := '';
   GG2.Caption  := '';
   GG3.Caption  := '';
   {===========================================================================}

   {공급가액 ------------------------------------------------------------------}
   G4.Caption   := '';
   G5.Caption   := '';
   G6.Caption   := '';
   G7.Caption   := '';
   G8.Caption   := '';
   G9.Caption   := '';
   G10.Caption  := '';
   G11.Caption  := '';
   G12.Caption  := '';
   G13.Caption  := '';
   G14.Caption  := '';
   G15.Caption  := '';

   GG4.Caption  := '';
   GG5.Caption  := '';
   GG6.Caption  := '';
   GG7.Caption  := '';
   GG8.Caption  := '';
   GG9.Caption  := '';
   GG10.Caption := '';
   GG11.Caption := '';
   GG12.Caption := '';
   GG13.Caption := '';
   GG14.Caption := '';
   GG15.Caption := '';
   {===========================================================================}

   {세액 ----------------------------------------------------------------------}
   G16.Caption  := '';
   G17.Caption  := '';
   G18.Caption  := '';
   G19.Caption  := '';
   G20.Caption  := '';
   G21.Caption  := '';
   G22.Caption  := '';
   G23.Caption  := '';
   G24.Caption  := '';
   G25.Caption  := '';

   GG16.Caption := '';
   GG17.Caption := '';
   GG18.Caption := '';
   GG19.Caption := '';
   GG20.Caption := '';
   GG21.Caption := '';
   GG22.Caption := '';
   GG23.Caption := '';
   GG24.Caption := '';
   GG25.Caption := '';
   {===========================================================================}

   {월일-----------------------------------------------------------------------}
   H1.Caption   := '';
   H2.Caption   := '';
   HH1.Caption  := '';
   HH2.Caption  := '';

   K1.Caption   := '';
   K2.Caption   := '';
   KK1.Caption  := '';
   KK2.Caption  := '';

   L1.Caption   := '';
   L2.Caption   := '';
   LL1.Caption  := '';
   LL2.Caption  := '';

   M1.Caption   := '';
   M2.Caption   := '';
   MM1.Caption  := '';
   MM2.Caption  := '';
   {===========================================================================}

   {품목 ----------------------------------------------------------------------}
   H3.Caption   := '';
   K3.Caption   := '';
   L3.Caption   := '';
   M3.Caption   := '';

   HH3.Caption  := '';
   KK3.Caption  := '';
   LL3.Caption  := '';
   MM3.Caption  := '';
   {===========================================================================}

   {규격 ----------------------------------------------------------------------}
   H4.Caption   := '';
   K4.Caption   := '';
   L4.Caption   := '';
   M4.Caption   := '';

   HH4.Caption  := '';
   KK4.Caption  := '';
   LL4.Caption  := '';
   MM4.Caption  := '';
   {===========================================================================}

   {수량 ----------------------------------------------------------------------}
   H5.Caption   := '';
   K5.Caption   := '';
   L5.Caption   := '';
   M5.Caption   := '';

   HH5.Caption  := '';
   KK5.Caption  := '';
   LL5.Caption  := '';
   MM5.Caption  := '';
   {===========================================================================}

   {단가 ----------------------------------------------------------------------}
   H6.Caption   := '';
   K6.Caption   := '';
   L6.Caption   := '';
   M6.Caption   := '';

   HH6.Caption  := '';
   KK6.Caption  := '';
   LL6.Caption  := '';
   MM6.Caption  := '';
   {===========================================================================}

   {공급가액 ------------------------------------------------------------------}
   H7.Caption   := '';
   K7.Caption   := '';
   L7.Caption   := '';
   M7.Caption   := '';

   HH7.Caption  := '';
   KK7.Caption  := '';
   LL7.Caption  := '';
   MM7.Caption  := '';

   If H7.Caption = '0' Then
      H7.Caption := '';
   If K7.Caption = '0' Then
      K7.Caption := '';
   If L7.Caption = '0' Then
      L7.Caption := '';
   If M7.Caption = '0' Then
      M7.Caption := '';
   

   If HH7.Caption = '0' Then
      HH7.Caption := '';
   If KK7.Caption = '0' Then
      KK7.Caption := '';
   If LL7.Caption = '0' Then
      LL7.Caption := '';
   If MM7.Caption = '0' Then
      MM7.Caption := '';
   {===========================================================================}

   {세액 ----------------------------------------------------------------------}
   H8.Caption   := '';
   K8.Caption   := '';
   L8.Caption   := '';
   M8.Caption   := '';

   HH8.Caption  := '';
   KK8.Caption  := '';
   LL8.Caption  := '';
   MM8.Caption  := '';

   If H8.Caption = '0' Then
      H8.Caption := '';
   If K8.Caption = '0' Then
      K8.Caption := '';
   If L8.Caption = '0' Then
      L8.Caption := '';
   If M8.Caption = '0' Then
      M8.Caption := '';


   If HH8.Caption = '0' Then
      HH8.Caption := '';
   If KK8.Caption = '0' Then
      KK8.Caption := '';
   If LL8.Caption = '0' Then
      LL8.Caption := '';
   If MM8.Caption = '0' Then
      MM8.Caption := '';
   {===========================================================================}

   {비고 ----------------------------------------------------------------------}
   H9.Caption   := '';
   K9.Caption   := '';
   L9.Caption   := '';
   M9.Caption   := '';

   HH9.Caption  := '';
   KK9.Caption  := '';
   LL9.Caption  := '';
   MM9.Caption  := '';
   {===========================================================================}

   {기타 ----------------------------------------------------------------------}
   N1.Caption   := '';
   N2.Caption   := '';
   N3.Caption   := '';
   N4.Caption   := '';
   N5.Caption   := '';

   NN1.Caption  := '';
   NN2.Caption  := '';
   NN3.Caption  := '';
   NN4.Caption  := '';
   NN5.Caption  := '';

   If N1.Caption = '0' Then
      N1.Caption := '';
   If N2.Caption = '0' Then
      N2.Caption := '';
   If N3.Caption = '0' Then
      N3.Caption := '';
   If N4.Caption = '0' Then
      N4.Caption := '';
   If N5.Caption = '0' Then
      N5.Caption := '';
   {===========================================================================}


   {영수 or 청구 --------------------------------------------------------------}
   If  true {영수일때} Then
   Begin
      QRShape195.Pen.Color := ClRed;
      QRShape196.Pen.Color := ClWhite;
      QRShape197.Pen.Color := ClBlue;
      QRShape198.Pen.Color := ClWhite;
      QRShape195.BringToFront;
      QRLabel65.BringToFront;
      QRShape197.BringToFront;
      QRLabel136.BringToFront;      
   End
   Else
   Begin
      QRShape195.Pen.Color := ClWhite;
      QRShape196.Pen.Color := ClRed;
      QRShape197.Pen.Color := ClWhite;
      QRShape198.Pen.Color := ClBlue;
      QRShape196.BringToFront;
      QRLabel66.BringToFront;
      QRShape198.BringToFront;
      QRLabel134.BringToFront;      
   End;
   {===========================================================================}

   {공란수 --------------------------------------------------------------------}
   G4.Caption  := '';
   GG4.Caption := '';
   {===========================================================================}
end;


end.
