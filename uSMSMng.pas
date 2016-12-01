unit uSMSMng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, Buttons;

type
  TfrmSMSMng = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Table1SEQ: TAutoIncField;
    Table1TITLE: TStringField;
    Table1MSG: TMemoField;
    Table1GRP: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nextAction: String; // 'insert or edit';
    curSeq: Integer;    
  end;

var
  frmSMSMng: TfrmSMSMng;

implementation

{$R *.dfm}

procedure TfrmSMSMng.FormCreate(Sender: TObject);
begin
  Table1.Active := true;
end;

procedure TfrmSMSMng.FormShow(Sender: TObject);
begin
  if nextAction = 'insert' then
  begin
    if not Table1.Active then Table1.Active := true;
    Table1.Append;
  end
  else if nextAction = 'edit' then
  begin
    Table1.Locate('SEQ', curSeq, [loCaseInsensitive]);
    Table1.Edit;
  end;
  DBEdit2.SetFocus;
end;

procedure TfrmSMSMng.Button1Click(Sender: TObject);
begin
  if Table1.State in [dsEdit, dsInsert] then
  begin
    try
      Table1.Post;
      if MessageDlg('저장되었습니다. 다른 메시지 추가로 입력 하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then
      begin
        Table1.Append;
        DBEdit2.SetFocus;
      end
      else
      begin
        Table1.Close;
        Close;
      end;

    except
      MessageDlg('저장 도중 문제가 발생했습니다.', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TfrmSMSMng.BitBtn1Click(Sender: TObject);
begin
  if Table1.State in [dsInsert] then
    Table1.Close;
  Close;
end;

end.
