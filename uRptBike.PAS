unit uRptBike;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables;

type
  TrptBike = class(TForm)
    QR1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel26: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRBand4: TQRBand;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText9: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBike: TrptBike;

implementation

uses uQryRptBike;



{$R *.DFM}

end.
