unit uPreventCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Grids,
  DBGrids, ExtCtrls, uCommonProcs;

type
  TfrmPreventCode = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1SEQ: TIntegerField;
    Table1PRTYPE: TStringField;
    Table1PRNAME: TStringField;
    Table1PRDURATION: TIntegerField;
    Table1DESC: TStringField;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    qryMaxSeq: TQuery;
    qryMaxSeqNSEQ: TIntegerField;
    Button1: TButton;
    qryInit: TQuery;
    IntegerField1: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreventCode: TfrmPreventCode;

implementation

{$R *.dfm}

procedure TfrmPreventCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPreventCode := nil;
end;

procedure TfrmPreventCode.FormCreate(Sender: TObject);
begin
  if not Table1.Active then
    Table1.Open;
end;

procedure TfrmPreventCode.Button3Click(Sender: TObject);
begin
  Table1.Append;
  DBComboBox1.SetFocus;
end;

procedure TfrmPreventCode.Button4Click(Sender: TObject);
begin
  if Table1.State in [dsEdit, dsInsert] then
  begin
    try
      Table1.Post;
      MessageDlg('저장되었습니다.', mtInformation, [mbOK], 0);
    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;

  end;
end;

procedure TfrmPreventCode.Button5Click(Sender: TObject);
begin
  if MessageDlg('자료를 지우시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
  try
    Table1.Delete;
  except
    MessageDlg('자료를 지울수 없는 상태입니다', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmPreventCode.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreventCode.Table1BeforePost(DataSet: TDataSet);
var
  m: Integer;
begin
  qryMaxSeq.Close;
  qryMaxSeq.Open;

  if Table1.State in [dsInsert] then
  begin
    if qryMaxSeq.FieldByName('NSEQ').AsString = '' then
      m := 0
    else
      m := qryMaxSeq.FieldByName('NSEQ').AsInteger;

    Table1.FieldByName('SEQ').AsInteger := m;
  end;
  
end;

procedure TfrmPreventCode.Button1Click(Sender: TObject);
var
  f: TextFile;
  S: String;
  m: Integer;

begin
  //교환:엔진오일:5000

  try
  try
    Table1.Close;
    
    AssignFile(f, GetCurrentDir+'\prc.def');
    Reset(f);

    while not EOF(f) do
    begin
      ReadLn(f, S);

      qryMaxSeq.Close;
      qryMaxSeq.Open;

      if qryMaxSeq.FieldByName('NSEQ').AsString = '' then
        m := 0
      else
        m := qryMaxSeq.FieldByName('NSEQ').AsInteger;

      qryInit.Close;
      qryInit.ParamByName('SEQ').AsInteger := m;
      qryInit.ParamByName('PRTYPE').AsString := GetFieldValue(S, 0, ':');
      qryInit.ParamByName('PRNAME').AsString := GetFieldValue(S, 1, ':');
      qryInit.ParamByName('PRDURATION').AsInteger := StrToInt(GetFieldValue(S, 2, ':'));
      qryInit.ExecSQL;

    end;
    
  except on E: Exception do
    ShowMessage(E.Message);
  end;

  finally
    CloseFile(f);
    Table1.Open;
  end;
end;

end.
