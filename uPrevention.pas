unit uPrevention;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Grids,
  DBGrids, ExtCtrls, DateUtils, uCommonProcs;

type
  TfrmPrevention = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    qryRun: TQuery;
    Table1CUSTOMER_ID: TStringField;
    Table1CUSTOMER_NAME: TStringField;
    DBGrid2: TDBGrid;
    Table2: TTable;
    DataSource2: TDataSource;
    Table2CUSTOMER_ID: TStringField;
    Table2BIKE_NUMBER: TStringField;
    Table2BIKE_YEAR: TStringField;
    Table2BIKE_MODEL_NAME: TStringField;
    Table2MILEAGE: TIntegerField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    qryPRNAME: TQuery;
    Table3: TTable;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    Table3CUST_ID: TStringField;
    Table3BIKE_NUMBER: TStringField;
    Table3PRCODE: TIntegerField;
    Table3PRDATE: TStringField;
    Table3DESC: TStringField;
    qryPRNAMEseq: TIntegerField;
    qryPRNAMEprtype: TStringField;
    qryPRNAMEprname: TStringField;
    qryPRNAMEprduration: TIntegerField;
    Table3PRNAME: TStringField;
    qryGetPrCode: TQuery;
    qryGetPrCodeSEQ: TIntegerField;
    qryGetPrCodePRTYPE: TStringField;
    qryGetPrCodePRNAME: TStringField;
    qryGetPrCodePRDURATION: TIntegerField;
    qryGetPrCodeDESC: TStringField;
    Table2CURMILE: TIntegerField;
    Table2CURMILE_DATE: TStringField;
    Panel4: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    pBar1: TProgressBar;
    pBar2: TProgressBar;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    qryCustBikes: TQuery;
    Memo2: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevention: TfrmPrevention;

implementation

{$R *.dfm}

procedure TfrmPrevention.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPrevention := nil;
end;

procedure TfrmPrevention.FormCreate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Open;
  if not Table2.Active then
    Table2.Open;
  if not Table3.Active then
    Table3.Open;
  if not qryPRNAME.Active then
    qryPRNAME.Open;



end;

procedure TfrmPrevention.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrevention.BitBtn2Click(Sender: TObject);
var
  S: String;
  i: Integer;
  ymile, dmile, curmile, fmile, unitmile, nmile: Integer;
  curmiledate: String;
  idays, rdays: Integer;
  sNextPD: String;
begin
  // delete current prevention data
  S := 'DELETE FROM PREVENTION WHERE CUST_ID = ''' + Table2.FieldByName('CUSTOMER_ID').AsString + ''' ';
  S := S + 'AND BIKE_NUMBER = ''' + Table2.FieldByName('BIKE_NUMBER').AsString + '''';

  qryRun.Close;
  qryRun.SQL.Clear;
  qryRun.SQL.Add(S);
  qryRun.ExecSQL;

  // get daily_mile
  ymile := 0;
  curmile := 0;
  curmiledate := FormatDateTime('YYYYMMDD', Now);
  ymile := Table2.FieldByName('MILEAGE').AsInteger;
  if ymile = 0 then exit;

  dmile := ymile div 365;
  curmile := Table2.FieldByName('CURMILE').AsInteger;
  if curmile = 0 then exit;

  curmiledate := Table2.FieldByName('CURMILE_DATE').AsString;
  // get (today - curmiledate)
  idays := DaysBetween(Now, ConvertDate(curmiledate));
  fmile := curmile + (idays * dmile);

  // get prduration
  qryGetPrCode.Close;
  qryGetPrCode.Open;
  qryGetPrCode.First;

  for i := 0 to qryGetPrCode.RecordCount - 1 do
  begin
    unitmile := qryGetPrCode.FieldByName('PRDURATION').AsInteger;
    nmile := fmile mod unitmile;
    rdays := ( nmile - unitmile ) div dmile;
    sNextPD := FormatDateTime('YYYYMMDD', AddDate(Now, rdays));

    S := 'INSERT INTO PREVENTION (CUST_ID, BIKE_NUMBER, PRCODE, PRDATE) VALUES ( ';
    S := S + '''' + Table2.FieldByName('CUSTOMER_ID').AsString + ''', ';
    S := S + '''' + Table2.FieldByName('BIKE_NUMBER').AsString + ''', ';
    S := S + ''   + qryGetPrCode.FieldByName('SEQ').AsString + ', ';
    S := S + '''' + sNextPD + ''')';

    qryRun.Close;
    qryRun.SQL.Clear;
    qryRun.SQL.Add(S);
    qryRun.ExecSQL;

    qryGetPrCode.Next;
  end;

  Table3.Refresh;

end;

procedure TfrmPrevention.BitBtn3Click(Sender: TObject);
var
  S: String;
  i, j: Integer;
  ymile, dmile, curmile, fmile, unitmile, nmile: Integer;
  curmiledate: String;
  idays, rdays: Integer;
  sNextPD: String;
begin
  // delete all prevention data
  S := 'DELETE FROM PREVENTION';

  qryRun.Close;
  qryRun.SQL.Clear;
  qryRun.SQL.Add(S);
  qryRun.ExecSQL;

  // get all cust bikes
  qryCustBikes.Close;
  qryCustBikes.Open;

  pBar1.Max := qryCustBikes.RecordCount;
  pBar1.Position := 1;  
  qryCustBikes.First;

  for j := 0 to qryCustBikes.RecordCount - 1 do
  begin

    // get daily_mile
    ymile := 0;
    curmile := 0;
    curmiledate := FormatDateTime('YYYYMMDD', Now);
    ymile := qryCustBikes.FieldByName('MILEAGE').AsInteger;
    if ymile > 0 then
    begin

      dmile := ymile div 365;
      curmile := qryCustBikes.FieldByName('CURMILE').AsInteger;
      if curmile > 0 then
      begin

        curmiledate := qryCustBikes.FieldByName('CURMILE_DATE').AsString;
        // get (today - curmiledate)
        idays := DaysBetween(Now, ConvertDate(curmiledate));
        fmile := curmile + (idays * dmile);

        // get prduration
        qryGetPrCode.Close;
        qryGetPrCode.Open;

        pBar2.Max := qryGetPrCode.RecordCount;
        pBar2.Position := 1;
        qryGetPrCode.First;

        for i := 0 to qryGetPrCode.RecordCount - 1 do
        begin
          unitmile := qryGetPrCode.FieldByName('PRDURATION').AsInteger;
          nmile := fmile mod unitmile;
          rdays := ( nmile - unitmile ) div dmile;
          sNextPD := FormatDateTime('YYYYMMDD', AddDate(Now, rdays));

          S := 'INSERT INTO PREVENTION (CUST_ID, BIKE_NUMBER, PRCODE, PRDATE) VALUES ( ';
          S := S + '''' + qryCustBikes.FieldByName('CUSTOMER_ID').AsString + ''', ';
          S := S + '''' + qryCustBikes.FieldByName('BIKE_NUMBER').AsString + ''', ';
          S := S + ''   + qryGetPrCode.FieldByName('SEQ').AsString + ', ';
          S := S + '''' + sNextPD + ''')';

          qryRun.Close;
          qryRun.SQL.Clear;
          qryRun.SQL.Add(S);
          qryRun.ExecSQL;

          pBar2.Position := pBar2.Position + 1;
          qryGetPrCode.Next;
        end;
      end;  // end of if curmile
    end; // end of if ymile

    pBar1.Position := pBar1.Position + 1;
    qryCustBikes.Next;
  end; // for loop j
end;

end.
