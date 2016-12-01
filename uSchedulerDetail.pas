unit uSchedulerDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmSchedulerDetail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rgAMPM: TRadioGroup;
    rgAMPM2: TRadioGroup;
    eSTITLE: TEdit;
    mSMEMO: TMemo;
    chALARM_1HOUR: TCheckBox;
    chALARM_30MIN: TCheckBox;
    chALARM_1DAY: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    cSHOUR: TComboBox;
    cSMIN: TComboBox;
    cEHOUR: TComboBox;
    cEMIN: TComboBox;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSchedulerDetail: TfrmSchedulerDetail;

implementation

{$R *.dfm}

end.
