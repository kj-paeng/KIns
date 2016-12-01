unit uCalendarPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, MonthDatePicker, ExtCtrls, Buttons, StdCtrls, uCommonProcs;

type
  TfrmCalendarPeriod = class(TForm)
    Panel1: TPanel;
    mdPicker: TMonthDatePicker;
    eS: TEdit;
    Label1: TLabel;
    eE: TEdit;
    Label2: TLabel;
    rgPeriod: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;

    procedure FormResize(Sender: TObject);
    procedure mdPickerDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mdPickerClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
    CaptionBtn: TRect;

    procedure DrawCaptButton;
    procedure DrawCaptButtonLower;
    procedure WMNCPaint(var Msg: TWMNCPaint); message WM_NCPaint;
    procedure WMNCActivate(var Msg: TWMNCActivate); message WM_NCACTIVATE;
    procedure WMSetText(var Msg: TWMSetText); message WM_SETTEXT;
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMNCLBUTTONDOWN(var Msg: TWMNCLBUTTONDOWN); message WM_NCLBUTTONDOWN;
    procedure WMNCLBUTTONUP(var Msg: TWMNCLBUTTONUP); message WM_NCLBUTTONUP;

  public
    { Public declarations }
  end;

var
  frmCalendarPeriod: TfrmCalendarPeriod;


implementation

const
  htCaptionBtn = htSizeLast + 1;

{$R *.dfm}

procedure TfrmCalendarPeriod.DrawCaptButton;
var
  xFrame, yFrame, xSize, ySize: Integer;
  R: TRect;
begin
{
  xFrame := GetSystemMetrics(SM_CXFRAME);
  yFrame := GetSystemMetrics(SM_CYFRAME);

  xSize := GetSystemMetrics(SM_CXSIZE);
  ySize := GetSystemMetrics(SM_CYSIZE);

                //ALeft, ATop, AWidth, AHeight
  //CaptionBtn := Bounds(Width - xFrame - 4*xSize + 2, yFrame + 1, xSize - 4, ySize - 4 );
  CaptionBtn := Bounds(Width - xFrame  - 2*xSize+8, yFrame+1, xSize - 5, ySize - 7 );

  Canvas.Handle := GetWindowDC(Self.Handle);
  Canvas.Font.Name := 'Symbol';
  Canvas.Font.Color := clBlack;
  Canvas.Font.Style := [fsBold];
  Canvas.Font.Size := 7;

  Canvas.Pen.Color := clYellow;
  Canvas.Brush.Color := clBtnFace;

  try
    //DrawButtonFace(Canvas, CaptionBtn, 1, bsAutoDetect, False, False, False);
    DrawButtonFace(Canvas, CaptionBtn, 1, bsAutoDetect, false, false, true);
    R := Bounds(Width -xFrame - 2*xSize+8, yFrame + 2, xSize -6, ySize -9);

    with CaptionBtn do
      Canvas.TextRect(R, R.Left+2, R.Top-1, '0');
  finally
    ReleaseDC(Self.Handle, Canvas.Handle);
    Canvas.Handle := 0;
  end;
}
end;

procedure TfrmCalendarPeriod.DrawCaptButtonLower;
var
  xFrame, yFrame, xSize, ySize: Integer;
  R: TRect;
begin
{
  xFrame := GetSystemMetrics(SM_CXFRAME);
  yFrame := GetSystemMetrics(SM_CYFRAME);

  xSize := GetSystemMetrics(SM_CXSIZE);
  ySize := GetSystemMetrics(SM_CYSIZE);

                //ALeft, ATop, AWidth, AHeight
  //CaptionBtn := Bounds(Width - xFrame - 4*xSize + 2, yFrame + 1, xSize - 4, ySize - 4 );
  CaptionBtn := Bounds(Width - xFrame  - 2*xSize+8, yFrame+1, xSize - 5, ySize - 7 );

  Canvas.Handle := GetWindowDC(Self.Handle);
  Canvas.Font.Name := 'Symbol';
  Canvas.Font.Color := clBlack;
  Canvas.Font.Style := [fsBold];
  Canvas.Pen.Color := clYellow;
  Canvas.Brush.Color := clBtnFace;
  Canvas.Font.Size := 7;

  try
    //DrawButtonFace(Canvas, CaptionBtn, 1, bsAutoDetect, False, False, False);
    DrawButtonFace(Canvas, CaptionBtn, 1, bsAutoDetect, false, true, true);
    R := Bounds(Width -xFrame - 2*xSize+8, yFrame + 2, xSize -6, ySize -9);

    with CaptionBtn do
      Canvas.TextRect(R, R.Left+2, R.Top-1, '0');
  finally
    ReleaseDC(Self.Handle, Canvas.Handle);
    Canvas.Handle := 0;
  end;
}
end;

procedure TfrmCalendarPeriod.WMNCPaint(var Msg: TWMNCPaint);
begin
  inherited;
  //DrawCaptButton;
end;

procedure TfrmCalendarPeriod.WMNCActivate(var Msg: TWMNCActivate);
begin
  inherited;
  //DrawCaptButton;
end;


procedure TfrmCalendarPeriod.WMSetText(var Msg: TWMSetText);
begin
  inherited;
  //DrawCaptButton;
end;


procedure TfrmCalendarPeriod.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  inherited;
  with Msg do
    if PtInRect(CaptionBtn, Point(xPos - Left, yPos - Top)) then
      Result := htCaptionBtn;
end;

procedure TfrmCalendarPeriod.WMNCLBUTTONDOWN(var Msg: TWMNCLBUTTONDOWN);
begin
  inherited;

  if (Msg.HitTest = htCaptionBtn) then
  begin
    //DrawCaptButtonLower;
  end;
end;

procedure TfrmCalendarPeriod.WMNCLBUTTONUP(var Msg: TWMNCLBUTTONUP);
begin
  inherited;
  if (Msg.HitTest = htCaptionBtn) then
  begin
    ModalResult := mrOK;
  end;

end;


procedure TfrmCalendarPeriod.FormResize(Sender: TObject);
begin
  Perform(WM_NCACTIVATE, Word(Active), 0);
end;

procedure TfrmCalendarPeriod.mdPickerDblClick(Sender: TObject);
begin
  //Self.ModalResult := mrOk;
end;

procedure TfrmCalendarPeriod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Self.ModalResult := mrOK;
end;

procedure TfrmCalendarPeriod.mdPickerClick(Sender: TObject);
var
  mCount: Integer;
begin
  eS.Text := FormatDateTime('YYYYMMDD', mdPicker.Date);
  case rgPeriod.ItemIndex of
    0: mCount := 1;
    1: mCount := 7;
    2: mCount := 10;
    3: mCount := 30;
    4: mCount := 90;
    5: mCount := 180;
    6: mCount := 365;
  end;
  eE.Text := FormatDateTime('YYYYMMDD', AddDate(mdPicker.Date, mCount));
end;

procedure TfrmCalendarPeriod.SpeedButton1Click(Sender: TObject);
begin
  Self.ModalResult := mrOK;
end;

procedure TfrmCalendarPeriod.SpeedButton2Click(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

end.
