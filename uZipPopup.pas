unit uZipPopup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  uCommonProcs, xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TfrmZipPopup = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    XD: TXMLDocument;
    SGrid: TStringGrid;
    BitBtn4: TBitBtn;
    edtZipCode: TEdit;
    Label4: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
    procedure call;
    procedure parseXML;

  public
    { Public declarations }
    sKey, sName, sTableName: String;
  end;

var
  frmZipPopup: TfrmZipPopup;

implementation

{$R *.DFM}

procedure TfrmZipPopup.parseXML;
var
  i, j, k, x: Integer;
  S: String;
  KNode: IXMLNode;
  amt: Integer;
begin

  if not XD.Active then exit;

  k := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes.Count;
  if k = 0 then
  begin
    SGrid.RowCount := 2;

    for x := 0 to 6 do
      SGrid.Cells[x, 1] := '';

  end
  else
    SGrid.RowCount := k+1;

  for i := 0 to k - 1 do
  begin
    KNode := XD.ChildNodes['DATAPACKET'].ChildNodes['ROWDATA'].ChildNodes[i];

    SGrid.Cells[0,i+1] := trim(KNode.ChildNodes['zipcode'].Text); //'우편번호';
    SGrid.Cells[1,i+1] := trim(KNode.ChildNodes['address'].Text); //'주소';
    SGrid.Cells[2,i+1] := trim(KNode.ChildNodes['dong'].Text); //'동';
    SGrid.Cells[3,i+1] := trim(KNode.ChildNodes['seq'].Text); //'seq';
    SGrid.Cells[4,i+1] := trim(KNode.ChildNodes['sigun'].Text); //'sigun';
    SGrid.Cells[5,i+1] := trim(KNode.ChildNodes['sido'].Text); //'sido';
    SGrid.Cells[6,i+1] := trim(KNode.ChildNodes['aptname'].Text); //'aptname';

  end;

end;


procedure TfrmZipPopup.call;
var
  sl: TStringList;
begin

  if Trim(Edit1.Text) = '' then
  begin
    MessageDlg('동이름을 입력하세요', mtInformation, [mbOK], 0);

    exit;
  end;

  try
    sl := TStringList.Create;
    sl.Add('dongname='+Trim(Edit1.Text));
    CallServiceHidden(GET_ZIPCODE, sl, XD);
    parseXML;
  finally
    sl.Free;
  end;
end;

procedure TfrmZipPopup.BitBtn3Click(Sender: TObject);
var
  S: String;
begin

  StatusBar1.Panels[2].Text := '자료 검색중 ...';
  call;
  StatusBar1.Panels[2].Text := '검색완료 ' ;//'총 ' + IntToStr(Query1.RecordCount) + ' 건의 자료가 검색되었습니다';

end;

procedure TfrmZipPopup.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    BitBtn3Click(nil);

end;

procedure TfrmZipPopup.FormCreate(Sender: TObject);
begin
  SGrid.Cells[0,0] := '우편번호';
  SGrid.Cells[1,0] := '주소';
  SGrid.Cells[2,0] := '동이름';
  SGrid.Cells[3,0] := '';
  SGrid.Cells[4,0] := '';
  SGrid.Cells[5,0] := '';
  SGrid.Cells[6,0] := '';

  SGrid.ColWidths[3] := 0;
  SGrid.ColWidths[4] := 0;
  SGrid.ColWidths[5] := 0;
  SGrid.ColWidths[6] := 0;


end;

procedure TfrmZipPopup.SGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow = 0 then exit;

  Edit2.Text := SGrid.Cells[5,ARow] + ' ' + SGrid.Cells[4,ARow] + ' ' + SGrid.Cells[2,ARow]  ;
  Edit3.Text := SGrid.Cells[6,ARow];
  edtZipCode.Text := SGrid.Cells[0,ARow];

{
    SGrid.Cells[0,i+1] := KNode.ChildNodes['zipcode'].Text; //'우편번호';
    SGrid.Cells[1,i+1] := KNode.ChildNodes['address'].Text; //'주소';
    SGrid.Cells[2,i+1] := KNode.ChildNodes['dong'].Text; //'동';
    SGrid.Cells[3,i+1] := KNode.ChildNodes['seq'].Text; //'seq';
    SGrid.Cells[4,i+1] := KNode.ChildNodes['sigun'].Text; //'sigun';
    SGrid.Cells[5,i+1] := KNode.ChildNodes['sido'].Text; //'sido';
    SGrid.Cells[6,i+1] := KNode.ChildNodes['aptname'].Text; //'aptname';

}


end;

end.
