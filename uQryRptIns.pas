unit uQryRptIns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, Grids, DBGrids,
  ExtCtrls, Mask, IniFiles;

type
  TfrmQryRptIns = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    edtName: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    rgType: TRadioGroup;
    Panel9: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1CUSTOMER_ID: TStringField;
    Query1SEQ: TIntegerField;
    Query1BIKE_NUMBER: TStringField;
    Query1BIKE_TYPE: TStringField;
    Query1BIKE_VIN: TStringField;
    Query1ENGINE_SIZE: TStringField;
    Query1BIKE_YEAR: TStringField;
    Query1BIKE_OIL_TYPE: TStringField;
    Query1BIKE_COLOR: TStringField;
    Query1BIKE_INSURER: TStringField;
    Query1BIKE_PHOTO: TGraphicField;
    Query1INS_START: TStringField;
    Query1INS_END: TStringField;
    Query1BIKE_REG_DATE: TStringField;
    Query1BIKE_MODEL_NAME: TStringField;
    Query1MILEAGE: TIntegerField;
    Query1customer_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rgCategoryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure setCriteria(value: Boolean);
  public
    { Public declarations }
  end;

var
  frmQryRptIns: TfrmQryRptIns;

implementation

uses uRptBike, uRptCust, uCommonProcs, uRptCustList, uRptCustDM,
  uQryRptCust, uCustomer;

{$R *.dfm}

procedure TfrmQryRptIns.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryRptIns := nil;
  Action:=caFree;
end;

procedure TfrmQryRptIns.BitBtn4Click(Sender: TObject);
var
  S: String;
  ss, se: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT a.*, b.customer_name from cust_bikes as a, customer as b ';
  S := S + ' WHERE a.customer_id = b.customer_id and ';
  S := S + ' b.customer_name LIKE ''%' + Trim(edtName.Text) + '%'' and ';

  ss := FormatDateTime('YYYYMMDD', Now);

  case rgType.ItemIndex of
  0: begin  // 30 days
      se := FormatDateTime('YYYYMMDD', AddDate(Now, 30));
    end;
  1: begin  // 15 days
      se := FormatDateTime('YYYYMMDD', AddDate(Now, 15));
    end;
  2: begin  // 7 days
      se := FormatDateTime('YYYYMMDD', AddDate(Now, 7));
    end;
  end;

  S := S + ' a.ins_end >= ''' + ss + ''' and a.ins_end <= ''' + se + ''' ';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmQryRptIns.BitBtn2Click(Sender: TObject);
begin

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
        //rptCustDM.lblSalute.Caption := cboAttach.Text;

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

end;

procedure TfrmQryRptIns.rgCategoryClick(Sender: TObject);
begin

//  setCriteria((rgCategory.ItemIndex = 1));

end;

procedure TfrmQryRptIns.setCriteria(value: Boolean);
begin
  edtName.Enabled := value;
  //cboEmp.Enabled := value;
  //edtAge.Enabled := value;
  //edtAddr.Enabled := value;
  //cboEqual.Enabled := value;
end;

procedure TfrmQryRptIns.FormCreate(Sender: TObject);
var
  i: Integer;
  S: String;
begin
{
  if Query1.Active then Query1.Close;
  if Query2.Active then Query2.Close;

  //Query2.SQL.Clear;
  //Query2.SQL.Add('SELECT distinct emp_charge from customer');
  //Query2.Prepare;
  Query2.Open;

  for i := 0 to Query2.RecordCount -1 do
  begin
    if not (trim(Query2.FieldByName('emp_charge').AsString) = '') then
      cboEmp.Items.Add(Query2.FieldByName('emp_charge').AsString);
    Query2.Next;
  end;
  Query2.Close;

  cboEmp.ItemIndex := 0;

  setCriteria(false);
}
end;

procedure TfrmQryRptIns.DBGrid1DblClick(Sender: TObject);
begin
  // goto customer screen
  if frmCustomer = nil then
  begin
    frmCustomer:=TfrmCustomer.Create(Self);
    frmCustomer.Show;
  end
  else
  begin
    frmCustomer.Show;
  end;

  frmCustomer.gotoCust(Query1.FieldByName('customer_id').AsString);

end;

end.
