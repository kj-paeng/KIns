unit uReq_Complain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmReq_Complain = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtSubject: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mContent: TMemo;
    edtWriter: TEdit;
    Label4: TLabel;
    XD: TXMLDocument;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReq_Complain: TfrmReq_Complain;

implementation

uses uCommonProcs;

{$R *.dfm}

procedure TfrmReq_Complain.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  s: String;
  KNode: IXMLNode;
  sl: TStringList;
begin

  try
    sl := TStringList.Create;

    sl.Add('writer='+edtWriter.Text);
    sl.Add('wtitle='+edtSubject.Text);
    sl.Add('usermemo='+mContent.Lines.Text);

    CallService(SET_COMPLAIN, sl, XD);

    try
      XD.Active := true;
    except on E: Exception do
    end;
  finally
    sl.Free;
  end;

  for i := 0 to XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count - 1 do
  begin
     KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];
     S := KNode.ChildNodes['RESULT'].Text;

     if trim(S) = 'OK' then
     begin
       ShowMessage('문의수정 등록이 완료되었습니다.');
     end
     else if trim(S) = 'NO' then
     begin
       ShowMessage('문의 수정 등록이 실패했습니다.');
     end;
  end;
end;

procedure TfrmReq_Complain.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmReq_Complain := nil;
  Action := caFree;
end;

procedure TfrmReq_Complain.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
