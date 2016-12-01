unit uQryRptCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, Grids, DBGrids,
  ExtCtrls, Mask, IniFiles;

type
  TfrmQryRptCust = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    Query1JUMIN_NO: TStringField;
    Query1CUSTOMER_NAME: TStringField;
    Query1COMPANY_NAME: TStringField;
    Query1TEL_NO: TStringField;
    Query1CELL_NO: TStringField;
    Query1ZIP_CODE: TStringField;
    Query1ADDRESS_DETAIL: TStringField;
    Query1ADDRESS_SIGUN: TStringField;
    Query1FAX_NO: TStringField;
    Query1EMAIL: TStringField;
    Query1HOMEPAGE: TStringField;
    Query1EMP_CHARGE: TStringField;
    Query1CUSTOMER_ID: TStringField;
    Query1BUSINESS_NO: TStringField;
    Query1BUS_TYPE: TStringField;
    Query1BUS_JONG: TStringField;
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
    rgCategory: TRadioGroup;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    edtAddr: TEdit;
    BitBtn4: TBitBtn;
    cboEmp: TComboBox;
    cboEqual: TComboBox;
    edtAge: TMaskEdit;
    Query2: TQuery;
    Query2emp_charge: TStringField;
    cboAttach: TComboBox;
    Query1CUSTOMER_TYPE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rgCategoryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure setCriteria(value: Boolean);
  public
    { Public declarations }
  end;

var
  frmQryRptCust: TfrmQryRptCust;

implementation

uses uRptBike, uRptCust, uCommonProcs, uRptCustList, uRptCustDM;

{$R *.dfm}

procedure TfrmQryRptCust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmQryRptCust := nil;
  Action:=caFree;
end;

procedure TfrmQryRptCust.BitBtn4Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';

  S := 'SELECT * from customer ';

  if rgCategory.ItemIndex = 1 then
  begin
    S := S + ' WHERE customer_name LIKE ''%' + Trim(edtName.Text) + '%'' ';
    S := S + ' AND address_sigun LIKE ''%' + Trim(edtAddr.Text) + '%'' ';
    if cboEmp.ItemIndex > 0 then
      S := S + ' AND emp_charge = ''' + cboEmp.Items[cboEmp.ItemIndex] + ''' ';

    if not (trim(edtAge.Text) = '') then
    begin
      case cboEqual.ItemIndex of
        0: begin  end;
        1: begin  end;
        2: begin  end;
      end;
    end;
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(S);
  Query1.Prepare;
  Query1.Open;

  StatusBar1.Panels[2].Text := '총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';


end;

procedure TfrmQryRptCust.BitBtn2Click(Sender: TObject);
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

end;

procedure TfrmQryRptCust.rgCategoryClick(Sender: TObject);
begin

  setCriteria((rgCategory.ItemIndex = 1));

end;

procedure TfrmQryRptCust.setCriteria(value: Boolean);
begin
  edtName.Enabled := value;
  cboEmp.Enabled := value;
  edtAge.Enabled := value;
  edtAddr.Enabled := value;
  cboEqual.Enabled := value;
end;

procedure TfrmQryRptCust.FormCreate(Sender: TObject);
var
  i: Integer;
  S: String;
begin
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

end;

end.
