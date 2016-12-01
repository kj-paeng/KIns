unit uRptCustDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, StdCtrls;

type
  TrptCustDM = class(TForm)
    QR1: TQuickRep;
    QRSysData6: TQRSysData;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    lblZ05: TQRLabel;
    lblZ04: TQRLabel;
    lblZ06: TQRLabel;
    lblZ02: TQRLabel;
    lblZ03: TQRLabel;
    lblZ01: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    lblSalute: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustDM: TrptCustDM;

implementation

uses uQryRptCust, uCommonProcs;

{$R *.DFM}

procedure TrptCustDM.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  S: String;
begin
  S := QR1.DataSet.FieldByName('zip_code').AsString;
  S := EraseStr(S, '-');
  lblZ01.Caption := Copy(S, 0, 1);
  lblZ02.Caption := Copy(S, 1, 1);
  lblZ03.Caption := Copy(S, 2, 1);
  lblZ04.Caption := Copy(S, 3, 1);
  lblZ05.Caption := Copy(S, 4, 1);
  lblZ06.Caption := Copy(S, 5, 1);

end;

end.
