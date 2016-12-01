unit uCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, MonthDatePicker, ExtCtrls, Buttons, StdCtrls;

type
  TfrmCalendar = class(TForm)
    Panel1: TPanel;
    mdPicker: TMonthDatePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;

    procedure FormResize(Sender: TObject);
    procedure mdPickerDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  frmCalendar: TfrmCalendar;


implementation

const
  htCaptionBtn = htSizeLast + 1;

{$R *.dfm}

procedure TfrmCalendar.DrawCaptButton;
var
  xFrame, yFrame, xSize, ySize: Integer;
  R: TRect;
begin
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

end;

procedure TfrmCalendar.DrawCaptButtonLower;
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

procedure TfrmCalendar.WMNCPaint(var Msg: TWMNCPaint);
begin
  inherited;
  //DrawCaptButton;
end;

procedure TfrmCalendar.WMNCActivate(var Msg: TWMNCActivate);
begin
  inherited;
  //DrawCaptButton;
end;


procedure TfrmCalendar.WMSetText(var Msg: TWMSetText);
begin
  inherited;
  //DrawCaptButton;
end;


procedure TfrmCalendar.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  inherited;
  with Msg do
    if PtInRect(CaptionBtn, Point(xPos - Left, yPos - Top)) then
      Result := htCaptionBtn;
end;

procedure TfrmCalendar.WMNCLBUTTONDOWN(var Msg: TWMNCLBUTTONDOWN);
begin
  inherited;

  if (Msg.HitTest = htCaptionBtn) then
  begin
    //DrawCaptButtonLower;
  end;
end;

procedure TfrmCalendar.WMNCLBUTTONUP(var Msg: TWMNCLBUTTONUP);
begin
  inherited;
  if (Msg.HitTest = htCaptionBtn) then
  begin
    ModalResult := mrOK;
  end;

end;


procedure TfrmCalendar.FormResize(Sender: TObject);
begin
  Perform(WM_NCACTIVATE, Word(Active), 0);
end;

procedure TfrmCalendar.mdPickerDblClick(Sender: TObject);
begin
  //Self.ModalResult := mrOk;
end;

procedure TfrmCalendar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Self.ModalResult := mrOK;
end;

procedure TfrmCalendar.SpeedButton1Click(Sender: TObject);
begin
  Self.ModalResult := mrOK;
end;

procedure TfrmCalendar.SpeedButton2Click(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

end.
