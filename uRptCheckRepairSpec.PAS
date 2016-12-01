unit uRptCheckRepairSpec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables;

type
  TrptCheckRepairSpec = class(TForm)
    QR1: TQuickRep;
    QRBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape5: TQRShape;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRShape18: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape38: TQRShape;
    QRLabel35: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    qIssueDate: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRMemo1: TQRMemo;
    qBikeRegNo: TQRLabel;
    qBikeName: TQRLabel;
    qBikeType: TQRLabel;
    qBikeDistance: TQRLabel;
    qBikeOwner: TQRLabel;
    qOwnerAddr: TQRLabel;
    qOwnerTel: TQRLabel;
    qBikeRegDate: TQRLabel;
    qVIN: TQRLabel;
    qShopRegNo: TQRLabel;
    qShopRepairRegNo: TQRLabel;
    qShopName: TQRLabel;
    qShopCEO: TQRLabel;
    qShopAddr: TQRLabel;
    qTask01: TQRLabel;
    qTask02: TQRLabel;
    qTask03: TQRLabel;
    qTask04: TQRLabel;
    qTask05: TQRLabel;
    qTask06: TQRLabel;
    qTotalAmt: TQRLabel;
    qVAT: TQRLabel;
    qGrandTotal: TQRLabel;
    qCEOName: TQRLabel;
    qPartType01: TQRLabel;
    qPartType02: TQRLabel;
    qPartType03: TQRLabel;
    qPartType04: TQRLabel;
    qPartType05: TQRLabel;
    qPartType06: TQRLabel;
    qPartCount01: TQRLabel;
    qPartCount02: TQRLabel;
    qPartCount03: TQRLabel;
    qPartCount04: TQRLabel;
    qPartCount05: TQRLabel;
    qPartCount06: TQRLabel;
    qUnitPrice06: TQRLabel;
    qUnitPrice05: TQRLabel;
    qUnitPrice04: TQRLabel;
    qUnitPrice03: TQRLabel;
    qUnitPrice02: TQRLabel;
    qUnitPrice01: TQRLabel;
    qPartSum01: TQRLabel;
    qPartSum02: TQRLabel;
    qPartSum03: TQRLabel;
    qPartSum04: TQRLabel;
    qPartSum05: TQRLabel;
    qPartSum06: TQRLabel;
    qLC06: TQRLabel;
    qLC05: TQRLabel;
    qLC04: TQRLabel;
    qLC03: TQRLabel;
    qLC02: TQRLabel;
    qLC01: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel13: TQRLabel;
    qShopTel: TQRLabel;
    qsITypeIns: TQRShape;
    QRLabel27: TQRLabel;
    qsITypeGen: TQRShape;
    QRLabel28: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel8: TQRLabel;
    QRShape25: TQRShape;
    QRLabel9: TQRLabel;
    QRShape26: TQRShape;
    QRLabel19: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel20: TQRLabel;
    qLCSum: TQRLabel;
    qBeforeTax: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape3: TQRShape;
    QRShape27: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape43: TQRShape;
    QRShape46: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel44: TQRLabel;
    qLineSum06: TQRLabel;
    qLineSum05: TQRLabel;
    qLineSum04: TQRLabel;
    qLineSum03: TQRLabel;
    qLineSum02: TQRLabel;
    qLineSum01: TQRLabel;
    QRLabel45: TQRLabel;
    qSerialNo: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCheckRepairSpec: TrptCheckRepairSpec;

implementation

uses uQryRptCust;



{$R *.DFM}

end.
