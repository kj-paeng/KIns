unit uQryRptRepair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, Grids, DBGrids,
  ExtCtrls, Mask, IniFiles;

type
  TfrmQryRptRepair = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    Query2: TQuery;
    Panel8: TPanel;
    edtCust: TEdit;
    Panel4: TPanel;
    edtSDate: TEdit;
    edtEDate: TEdit;
    Panel10: TPanel;
    cbMechanic: TComboBox;
    BitBtn4: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Query2technician: TStringField;
    Query1CUSTOMER_ID: TStringField;
    Query1SEQ: TIntegerField;
    Query1REPAIR_DATE: TStringField;
    Query1REPAIR_DESC: TStringField;
    Query1USED_PARTS_DESC: TMemoField;
    Query1TECHNICIAN: TStringField;
    Query1IS_VAT: TStringField;
    Query1MILEAGE: TFloatField;
    Query1TRANSF_DC: TFloatField;
    Query1CASH_IN_DESC: TStringField;
    Query1CARD_IN_DESC: TStringField;
    Query1TRANSF_IN_DESC: TStringField;
    edtCustID: TEdit;
    Query1customer_name: TStringField;
    Query3: TQuery;
    DataSource3: TDataSource;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Query1REPAIR_AMT: TFloatField;
    Query1NO_RECEIVED_AMT: TFloatField;
    Query1RECEIVED_AMT: TFloatField;
    Query1CASH_IN: TFloatField;
    Query1CASH_DC: TFloatField;
    Query1CARD_IN: TFloatField;
    Query1CARD_DC: TFloatField;
    Query1TRANSF_IN: TFloatField;
    Query3SEQ: TIntegerField;
    Query3CUSTOMER_ID: TStringField;
    Query3PART_SEQ: TIntegerField;
    Query3PART_NAME: TStringField;
    Query3PART_COUNT: TFloatField;
    Query3UNIT_PRICE: TFloatField;
    Query3LABOUR_CHARGE: TFloatField;
    Query3DISCOUNT: TFloatField;
    Query3LIST_PRICE: TFloatField;
    Query3VAT: TFloatField;
    Query3TOTAL_AMT: TFloatField;
    Query3MEMO: TStringField;
    SpeedButton7: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtCustExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQryRptRepair: TfrmQryRptRepair;

implementation

uses uCommonProcs, uPopupCust;

{$R *.dfm}

procedure TfrmQryRptRepair.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryRptRepair := nil;
  Action:=caFree;
end;

procedure TfrmQryRptRepair.BitBtn4Click(Sender: TObject);
var
  S: String;
begin

  if trim(edtCust.Text) = '' then
    edtCustID.Text := '';

  Query3.Close;

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT b.customer_name, a.* from repairs as a, customer as b where a.customer_id = b.customer_id ';

  if trim(edtCustID.Text) <> '' then
  begin
    S := S + ' AND a.customer_id = ''' + Trim(edtCustID.Text) + ''' ';
  end;

  if (trim(edtSDate.Text) <> '') and (trim(edtEDate.Text) <> '') then
  begin
    try
      ConvertDate(edtSDate.Text);
      ConvertDate(edtEDate.Text);
      S := S + ' AND a.repair_date between ''' + Trim(edtSDate.Text) + ''' '
           + ' AND ''' + Trim(edtEDate.Text) + ''' ';
    except
    end;
  end;

  if cbMechanic.ItemIndex > 0 then
  begin
    S := S + ' AND a.technician = ''' + Trim(cbMechanic.Items[cbMechanic.ItemIndex]) + ''' ';
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmQryRptRepair.BitBtn2Click(Sender: TObject);
begin
{
  if not Query1.Active then
  begin
    MessageDlg('먼저 조회를 해 주십시요.', mtWarning, [mbOK], 0);
    exit;
  end;


  if Query1.RecordCount < 1 then
  begin
    MessageDlg('출력할 자료가 없습니다.', mtWarning, [mbOK], 0);
    exit;
  end;

  case rgType.ItemIndex of
  0: begin
      try
        BBIni := TIniFile.Create(BBUDDY_INI);
        rptCustList := TrptCustList.Create(Self);
        rptCustList.qlblCompany.Caption := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');

        if TBitBtn(Sender).Tag = 0 then
          rptCustList.QR1.Preview
        else if TBitBtn(Sender).Tag = 1 then
          rptCustList.QR1.Print;
      finally
        rptCustList.Free;
        BBIni.Free;
      end;
    end;
  1: begin
      try
        BBIni := TIniFile.Create(BBUDDY_INI);
        rptCust := TrptCust.Create(Self);
        rptCust.qlblCompany.Caption := BBIni.ReadString('MemberInfo', 'UCOMPANY', '');

        if TBitBtn(Sender).Tag = 0 then
          rptCust.QR1.Preview
        else if TBitBtn(Sender).Tag = 1 then
          rptCust.QR1.Print;
      finally
        rptCust.Free;
        BBIni.Free;
      end;
    end;
  2: begin
      try
        BBIni := TIniFile.Create(BBUDDY_INI);
        rptCustDM := TrptCustDM.Create(Self);
        rptCustDM.lblSalute.Caption := cboAttach.Text;

        if TBitBtn(Sender).Tag = 0 then
          rptCustDM.QR1.Preview
        else if TBitBtn(Sender).Tag = 1 then
          rptCustDM.QR1.Print;
      finally
        rptCustDM.Free;
        BBIni.Free;
      end;
    end;
  end;
}
end;

procedure TfrmQryRptRepair.FormCreate(Sender: TObject);
var
  i: Integer;
  S: String;
begin
  if Query1.Active then Query1.Close;
  if Query2.Active then Query2.Close;
  if Query3.Active then Query3.Close;

  Query2.Open;
  cbMechanic.Items.Clear;
  cbMechanic.Items.Add('전체');
  for i := 0 to Query2.RecordCount -1 do
  begin
    if not (trim(Query2.FieldByName('technician').AsString) = '') then
      cbMechanic.Items.Add(Query2.FieldByName('technician').AsString);
    Query2.Next;
  end;
  Query2.Close;

  cbMechanic.ItemIndex := 0;

  edtSDate.Text := FormatDateTime('YYYYMMDD', Now);
  edtEDate.Text := FormatDateTime('YYYYMMDD', Now);

end;

procedure TfrmQryRptRepair.SpeedButton1Click(Sender: TObject);
begin
  try
    frmPopupCust := TfrmPopupCust.Create(Self);
    if frmPopupCust.ShowModal = mrOK then
    begin
      edtCustID.Text := frmPopupCust.Query1.FieldByName('Customer_id').AsString;
      edtCust.Text := frmPopupCust.Query1.FieldByName('Customer_name').AsString;
    end;
  finally
    frmPopupCust.Free;
  end;
end;

procedure TfrmQryRptRepair.Query1AfterScroll(DataSet: TDataSet);
begin
  Query3.Close;
  Query3.ParamByName('customer_id').AsString := Query1.FieldByName('customer_id').AsString;
  Query3.ParamByName('SEQ').AsFloat := Query1.FieldByName('seq').AsInteger;

  Query3.Open;
end;

procedure TfrmQryRptRepair.SpeedButton7Click(Sender: TObject);
var
  S1, S2: String;
begin
  S1 := edtSDate.Text;
  S2 := edtEDate.Text;

  showMCalPeriod(SpeedButton7, S1, S2);
  edtSDate.Text := S1;
  edtEDate.Text := S2;

end;

procedure TfrmQryRptRepair.edtCustExit(Sender: TObject);
begin
  if trim(edtCust.Text) = '' then
    edtCustID.Text := '';
end;

end.

