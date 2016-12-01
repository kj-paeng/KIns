unit uRptPart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables;

type
  TrptPart = class(TForm)
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
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText9: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptPart: TrptPart;

implementation

uses uQryPartStock;



{$R *.DFM}

end.
