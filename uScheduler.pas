unit uScheduler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, MonthDatePicker, StdCtrls, ExtCtrls, Grids, DB,
  DBTables, Menus, Buttons;

type
  TfrmScheduler = class(TForm)
    pControl: TPageControl;
    TS: TTabSheet;
    sgDay: TStringGrid;
    Query1: TQuery;
    pm: TPopupMenu;
    mnuAdd: TMenuItem;
    mnuModify: TMenuItem;
    mnuDelete: TMenuItem;
    qryAdd: TQuery;
    qryUpdate: TQuery;
    qryDelete: TQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    btnClose: TBitBtn;
    Panel1: TPanel;
    mdPick: TMonthDatePicker;
    procedure FormCreate(Sender: TObject);
    procedure sgDayDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mdPickClick(Sender: TObject);
    procedure mnuAddClick(Sender: TObject);
    procedure mnuModifyClick(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure sgDayDblClick(Sender: TObject);
    procedure sgDayMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }

    mx, my: Integer;

    procedure initSGDay;
    procedure loadSchedule(d: TDate);
  public
    { Public declarations }
  end;

var
  frmScheduler: TfrmScheduler;

implementation

uses uSchedulerDetail;

{$R *.dfm}

procedure TfrmScheduler.initSGDay;
var
  i: Integer;
begin

  mdPick.Date := Now;

  SGDay.Cells[0,0] := '矫埃';
  SGDay.Cells[1,0] := '老沥 力格';

  SGDay.Cells[0,1] := '12:00 AM';
  SGDay.Cells[0,3] := '01:00 AM';
  SGDay.Cells[0,5] := '02:00 AM';
  SGDay.Cells[0,7] := '03:00 AM';
  SGDay.Cells[0,9] := '04:00 AM';
  SGDay.Cells[0,11] := '05:00 AM';
  SGDay.Cells[0,13] := '06:00 AM';
  SGDay.Cells[0,15] := '07:00 AM';
  SGDay.Cells[0,17] := '08:00 AM';
  SGDay.Cells[0,19] := '09:00 AM';
  SGDay.Cells[0,21] := '10:00 AM';
  SGDay.Cells[0,23] := '11:00 AM';
  SGDay.Cells[0,25] := '12:00 PM';
  SGDay.Cells[0,27] := '01:00 PM';
  SGDay.Cells[0,29] := '02:00 PM';
  SGDay.Cells[0,31] := '03:00 PM';
  SGDay.Cells[0,33] := '04:00 PM';
  SGDay.Cells[0,35] := '05:00 PM';
  SGDay.Cells[0,37] := '06:00 PM';
  SGDay.Cells[0,39] := '07:00 PM';
  SGDay.Cells[0,41] := '08:00 PM';
  SGDay.Cells[0,43] := '09:00 PM';
  SGDay.Cells[0,45] := '10:00 PM';
  SGDay.Cells[0,47] := '11:00 PM';

  SGDay.Cells[0,2] := '12:30 AM';
  SGDay.Cells[0,4] := '01:30 AM';
  SGDay.Cells[0,6] := '02:30 AM';
  SGDay.Cells[0,8] := '03:30 AM';
  SGDay.Cells[0,10] := '04:30 AM';
  SGDay.Cells[0,12] := '05:30 AM';
  SGDay.Cells[0,14] := '06:30 AM';
  SGDay.Cells[0,16] := '07:30 AM';
  SGDay.Cells[0,18] := '08:30 AM';
  SGDay.Cells[0,20] := '09:30 AM';
  SGDay.Cells[0,22] := '10:30 AM';
  SGDay.Cells[0,24] := '11:30 AM';
  SGDay.Cells[0,26] := '12:30 PM';
  SGDay.Cells[0,28] := '01:30 PM';
  SGDay.Cells[0,30] := '02:30 PM';
  SGDay.Cells[0,32] := '03:30 PM';
  SGDay.Cells[0,34] := '04:30 PM';
  SGDay.Cells[0,36] := '05:30 PM';
  SGDay.Cells[0,38] := '06:30 PM';
  SGDay.Cells[0,40] := '07:30 PM';
  SGDay.Cells[0,42] := '08:30 PM';
  SGDay.Cells[0,44] := '09:30 PM';
  SGDay.Cells[0,46] := '10:30 PM';
  SGDay.Cells[0,48] := '11:30 PM';

  for i := 2 to 9 do
    sgDay.ColWidths[i] := 0;

end;

procedure TfrmScheduler.loadSchedule(d: TDate);
var
  S: String;
  i, j: Integer;
begin

    for j := 1 to 49 do
    begin
      sgDay.Cells[1, j] := '';
      sgDay.Cells[2, j] := '';
      sgDay.Cells[3, j] := '';
      sgDay.Cells[4, j] := '';
      sgDay.Cells[5, j] := '';
      sgDay.Cells[6, j] := '';
      sgDay.Cells[7, j] := '';
      sgDay.Cells[8, j] := '';
      sgDay.Cells[9, j] := '';
    end;

  S := 'SELECT * FROM SCHEDULER WHERE SDATE = ''' + FormatDateTime('YYYYMMDD', d) + '''';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Open;

  for i := 0 to Query1.RecordCount - 1 do
  begin
    for j := 1 to 49 do
    begin
      if sgDay.Cells[0, j] = Query1.FieldByName('STIME').AsString then
      begin
        sgDay.Cells[1, j] := Query1.FieldByName('STITLE').AsString;
        sgDay.Cells[2, j] := Query1.FieldByName('SDATE').AsString;
        sgDay.Cells[3, j] := Query1.FieldByName('STIME').AsString;
        sgDay.Cells[4, j] := Query1.FieldByName('EDATE').AsString;
        sgDay.Cells[5, j] := Query1.FieldByName('ETIME').AsString;
        sgDay.Cells[6, j] := Query1.FieldByName('ALARM_1DAY').AsString;
        sgDay.Cells[7, j] := Query1.FieldByName('ALARM_1HOUR').AsString;
        sgDay.Cells[8, j] := Query1.FieldByName('ALARM_30MIN').AsString;
        sgDay.Cells[9, j] := Query1.FieldByName('SMEMO').AsString;
      end;
    end;

    Query1.Next;
  end;
end;

procedure TfrmScheduler.FormCreate(Sender: TObject);
begin
  initSGDay;
  TS.Caption := '老沥包府 : '+ FormatDateTime('YYYY-MM-DD', mdPick.Date);
  mdPickClick(nil);
end;

procedure TfrmScheduler.sgDayDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
{
    if (ACol > 0) and ((ARow Mod 2) = 1) then
    with TStringGrid(Sender) do
    begin
      Canvas.Brush.Color := $00ACFBFF;
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left+2,Rect.Top+2,Cells[ACol, ARow]);
    end;
}
end;

procedure TfrmScheduler.mdPickClick(Sender: TObject);
begin
  TS.Caption := '老沥包府 : '+ FormatDateTime('YYYY-MM-DD', mdPick.Date);
  loadSchedule(mdPick.Date);
end;

procedure TfrmScheduler.mnuAddClick(Sender: TObject);
var
  S, SE: String;
begin

  S := sgDay.Cells[0, sgDay.Row];
  SE := sgDay.Cells[5, sgDay.Row];


  // add schedule
  try
    frmSchedulerDetail := TfrmSchedulerDetail.Create(Self);

    frmSchedulerDetail.cSHOUR.ItemIndex := frmSchedulerDetail.cSHOUR.Items.IndexOf(Copy(S, 1, 2));
    frmSchedulerDetail.cSMIN.ItemIndex := frmSchedulerDetail.cSMIN.Items.IndexOf(Copy(S, 4, 2));
    if Copy(S, 7, 2) = 'PM' then
      frmSchedulerDetail.rgAMPM.ItemIndex := 1
    else
      frmSchedulerDetail.rgAMPM.ItemIndex := 0;

    frmSchedulerDetail.cEHOUR.ItemIndex := frmSchedulerDetail.cEHOUR.Items.IndexOf(Copy(SE, 1, 2));
    frmSchedulerDetail.cEMIN.ItemIndex := frmSchedulerDetail.cEMIN.Items.IndexOf(Copy(SE, 4, 2));

    if Copy(SE, 7, 2) = 'PM' then
      frmSchedulerDetail.rgAMPM2.ItemIndex := 1
    else
      frmSchedulerDetail.rgAMPM2.ItemIndex := 0;



    if frmSchedulerDetail.ShowModal = mrOK then
    begin
      qryAdd.ParamByName('SDATE').AsString := FormatDateTime('YYYYMMDD', mdPick.Date);
      qryAdd.ParamByName('EDATE').AsString := FormatDateTime('YYYYMMDD', mdPick.Date);
      qryAdd.ParamByName('STIME').AsString :=
        frmSchedulerDetail.cSHOUR.Items[frmSchedulerDetail.cSHOUR.ItemIndex] + ':' +
        frmSchedulerDetail.cSMIN.Items[frmSchedulerDetail.cSMIN.ItemIndex] + ' ' +
        frmSchedulerDetail.rgAMPM.Items[frmSchedulerDetail.rgAMPM.ItemIndex];
      qryAdd.ParamByName('ETIME').AsString :=
        frmSchedulerDetail.cEHOUR.Items[frmSchedulerDetail.cEHOUR.ItemIndex] + ':' +
        frmSchedulerDetail.cEMIN.Items[frmSchedulerDetail.cEMIN.ItemIndex] + ' ' +
        frmSchedulerDetail.rgAMPM2.Items[frmSchedulerDetail.rgAMPM2.ItemIndex];

      if frmSchedulerDetail.chALARM_1DAY.Checked then
        qryAdd.ParamByName('ALARM_1DAY').AsString := 'Y'
      else
        qryAdd.ParamByName('ALARM_1DAY').AsString := 'N';

      if frmSchedulerDetail.chALARM_1HOUR.Checked then
        qryAdd.ParamByName('ALARM_1HOUR').AsString := 'Y'
      else
        qryAdd.ParamByName('ALARM_1HOUR').AsString := 'N';

      if frmSchedulerDetail.chALARM_30MIN.Checked then
        qryAdd.ParamByName('ALARM_30MIN').AsString := 'Y'
      else
        qryAdd.ParamByName('ALARM_30MIN').AsString := 'N';

      qryAdd.ParamByName('STITLE').AsString := frmSchedulerDetail.eSTITLE.Text;
      qryAdd.ParamByName('SMEMO').AsMemo := frmSchedulerDetail.mSMEMO.Lines.Text;

      qryAdd.ExecSQL;
      loadSchedule(mdPick.Date);
    end;
  finally
    frmSchedulerDetail.Free;
  end;
  
end;

procedure TfrmScheduler.mnuModifyClick(Sender: TObject);
var
  S, SE: String;
  SOLDDATE, SOLDTIME: String;
begin

  if sgDay.Row < 1 then exit;

  S := sgDay.Cells[0, sgDay.Row];
  SE := sgDay.Cells[5, sgDay.Row];
  SOLDDATE := sgDay.Cells[2, sgDay.Row];
  SOLDTIME := sgDay.Cells[3, sgDay.Row];

  {
        sgDay.Cells[1, j] := Query1.FieldByName('STITLE').AsString;
        sgDay.Cells[2, j] := Query1.FieldByName('SDATE').AsString;
        sgDay.Cells[3, j] := Query1.FieldByName('STIME').AsString;
        sgDay.Cells[4, j] := Query1.FieldByName('EDATE').AsString;
        sgDay.Cells[5, j] := Query1.FieldByName('ETIME').AsString;
        sgDay.Cells[6, j] := Query1.FieldByName('ALARM_1DAY').AsString;
        sgDay.Cells[7, j] := Query1.FieldByName('ALARM_1HOUR').AsString;
        sgDay.Cells[8, j] := Query1.FieldByName('ALARM_30MIN').AsString;
        sgDay.Cells[9, j] := Query1.FieldByName('SMEMO').AsString;
}
  // modify schedule
  try
    frmSchedulerDetail := TfrmSchedulerDetail.Create(Self);
    frmSchedulerDetail.cSHOUR.ItemIndex := frmSchedulerDetail.cSHOUR.Items.IndexOf(Copy(S, 1, 2));
    frmSchedulerDetail.cSMIN.ItemIndex := frmSchedulerDetail.cSMIN.Items.IndexOf(Copy(S, 4, 2));
    if Copy(S, 7, 2) = 'PM' then
      frmSchedulerDetail.rgAMPM.ItemIndex := 1
    else
      frmSchedulerDetail.rgAMPM.ItemIndex := 0;

    frmSchedulerDetail.cEHOUR.ItemIndex := frmSchedulerDetail.cEHOUR.Items.IndexOf(Copy(SE, 1, 2));
    frmSchedulerDetail.cEMIN.ItemIndex := frmSchedulerDetail.cEMIN.Items.IndexOf(Copy(SE, 4, 2));

    if Copy(SE, 7, 2) = 'PM' then
      frmSchedulerDetail.rgAMPM2.ItemIndex := 1
    else
      frmSchedulerDetail.rgAMPM2.ItemIndex := 0;

    frmSchedulerDetail.chALARM_1DAY.Checked := sgDay.Cells[6, sgDay.Row] = 'Y';
    frmSchedulerDetail.chALARM_1HOUR.Checked := sgDay.Cells[7, sgDay.Row] = 'Y';
    frmSchedulerDetail.chALARM_30MIN.Checked := sgDay.Cells[8, sgDay.Row] = 'Y';
    frmSchedulerDetail.eSTITLE.Text := sgDay.Cells[1, sgDay.Row];
    frmSchedulerDetail.mSMEMO.Lines.Add(sgDay.Cells[9, sgDay.Row]);

    if frmSchedulerDetail.ShowModal = mrOK then
    begin
      qryUpdate.ParamByName('SDATE').AsString := FormatDateTime('YYYYMMDD', mdPick.Date);
      qryUpdate.ParamByName('EDATE').AsString := FormatDateTime('YYYYMMDD', mdPick.Date);
      qryUpdate.ParamByName('STIME').AsString :=
        frmSchedulerDetail.cSHOUR.Items[frmSchedulerDetail.cSHOUR.ItemIndex] + ':' +
        frmSchedulerDetail.cSMIN.Items[frmSchedulerDetail.cSMIN.ItemIndex] + ' ' +
        frmSchedulerDetail.rgAMPM.Items[frmSchedulerDetail.rgAMPM.ItemIndex];
      qryUpdate.ParamByName('ETIME').AsString :=
        frmSchedulerDetail.cEHOUR.Items[frmSchedulerDetail.cEHOUR.ItemIndex] + ':' +
        frmSchedulerDetail.cEMIN.Items[frmSchedulerDetail.cEMIN.ItemIndex] + ' ' +
        frmSchedulerDetail.rgAMPM2.Items[frmSchedulerDetail.rgAMPM2.ItemIndex];

      if frmSchedulerDetail.chALARM_1DAY.Checked then
        qryUpdate.ParamByName('ALARM_1DAY').AsString := 'Y'
      else
        qryUpdate.ParamByName('ALARM_1DAY').AsString := 'N';

      if frmSchedulerDetail.chALARM_1HOUR.Checked then
        qryUpdate.ParamByName('ALARM_1HOUR').AsString := 'Y'
      else
        qryUpdate.ParamByName('ALARM_1HOUR').AsString := 'N';

      if frmSchedulerDetail.chALARM_30MIN.Checked then
        qryUpdate.ParamByName('ALARM_30MIN').AsString := 'Y'
      else
        qryUpdate.ParamByName('ALARM_30MIN').AsString := 'N';

      qryUpdate.ParamByName('STITLE').AsString := frmSchedulerDetail.eSTITLE.Text;
      qryUpdate.ParamByName('SMEMO').AsMemo := frmSchedulerDetail.mSMEMO.Lines.Text;

      qryUpdate.ParamByName('SOLDDATE').AsString := SOLDDATE;
      qryUpdate.ParamByName('SOLDTIME').AsString := SOLDTIME;


      qryUpdate.ExecSQL;
      loadSchedule(mdPick.Date);
    end;
  finally
    frmSchedulerDetail.Free;
  end;

end;

procedure TfrmScheduler.mnuDeleteClick(Sender: TObject);
var
  SOLDDATE, SOLDTIME: String;
begin
  // delete schedule
  SOLDDATE := sgDay.Cells[2, sgDay.Row];
  SOLDTIME := sgDay.Cells[3, sgDay.Row];
  qryDelete.ParamByName('SDATE').AsString := SOLDDATE;
  qryDelete.ParamByName('STIME').AsString := SOLDTIME;
  qryDelete.ExecSQL;
  loadSchedule(mdPick.Date);

end;

procedure TfrmScheduler.sgDayDblClick(Sender: TObject);
var
  p: TPoint;
begin
  p.X := mx;
  p.Y := my;
  
  P := ClientToScreen(P);
  P.X := P.X + pControl.Left + 5;
  P.Y := p.Y + pControl.Top + 30;

  pm.Popup(p.X, p.y);
end;

procedure TfrmScheduler.sgDayMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  mx := X;
  my := Y;

  Edit1.Text := IntToStr(mx);
  Edit2.Text := IntToStr(my);
end;

procedure TfrmScheduler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmScheduler := nil;
end;

procedure TfrmScheduler.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
