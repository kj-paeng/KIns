unit uRptCustList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables;

type
  TrptCustList = class(TForm)
    QR1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData6: TQRSysData;
    QRDBText31: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape3: TQRShape;
    QRBand2: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRBand3: TQRBand;
    QRLabel26: TQRLabel;
    QRSysData5: TQRSysData;
    qlblCompany: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustList: TrptCustList;

implementation

uses uQryRptCust;



{$R *.DFM}

end.
