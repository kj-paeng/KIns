unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, Xmlxform, DB,
  DBClient, Provider, Grids, DBGrids, IdThreadComponent;

type
  TForm1 = class(TForm)
    IH: TIdHTTP;
    Memo1: TMemo;
    Button1: TButton;
    XD: TXMLDocument;
    Edit1: TEdit;
    ClientDataSet1: TClientDataSet;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1uid: TStringField;
    ClientDataSet1id: TBCDField;
    ClientDataSet1name: TBCDField;
    ClientDataSet1jumin1: TBCDField;
    ClientDataSet1jumin2: TBCDField;
    ClientDataSet1carno: TBCDField;
    ClientDataSet1sou: TBCDField;
    ClientDataSet1zipcode: TBCDField;
    ClientDataSet1juso1: TBCDField;
    ClientDataSet1phone: TBCDField;
    ClientDataSet1email: TBCDField;
    ClientDataSet1in_ip: TBCDField;
    ClientDataSet1in_date: TBCDField;
    ClientDataSet1status: TBCDField;
    ClientDataSet1usermemo: TBCDField;
    ClientDataSet1memo: TBCDField;
    Button3: TButton;
    Thread1: TIdThreadComponent;
    ComboBox1: TComboBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit2: TEdit;
    Button8: TButton;
    Button9: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Memo4: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    IdHTTP1: TIdHTTP;
    Button13: TButton;
    ezipcode: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Thread1Run(Sender: TIdCustomThreadComponent);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    L, S, M: String;
    procedure FillSQL;
    procedure callSQL(S: String);

  end;

var
  Form1: TForm1;

implementation

uses
  uCommonProcs, uCalendar;

{$R *.dfm}

procedure TForm1.FillSQL;
var
  xxx: String;
begin

  xxx := 'daein_one, daein_two_unlim, daemul_10k, daemul_20k, daemul_30k, daemul_50k, daemul_70k, daemul_100k, jasin_15k, jasin_30k, jasin_50k, jasin_100k, ';
  L := Copy(L,0, 7) + xxx + ' ' + Copy(L, 8, Length(L));
  S := Copy(S,0, 7) + xxx + ' ' + Copy(S, 8, Length(S));
  m := Copy(m,0, 7) + xxx + ' ' + Copy(m, 8, Length(m));

  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Memo1.Lines.Add(L);
  Memo2.Lines.Add(S);
  Memo3.Lines.Add(M);


end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1 := nil;
  Action := caFree;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;

begin
  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try
    st := TMemoryStream.Create;
    IH.Get(GET_CARINSU, st);

    st.Position := 0;
    st.SaveToFile('ccc.xml');
    st.Position := 0;
    Memo1.Lines.Clear;
    Memo1.Lines.LoadFromStream(st);

    try
    st.Position := 0;
    XD.LoadFromStream(st);
    XD.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    st.Position := 0;
    st.SaveToFile('aa.xml');

    StartItemNode := XD.DocumentElement.ChildNodes.First;
    ANode := StartItemNode;
    //repeat
      



  finally
    st.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s: String;
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  sl: TStringList;

begin
  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try
    sl := TStringList.Create;
    sl.Add('tablename=bulletin');
    st := TMemoryStream.Create;
    //IH.Get(GET_CARINSU, st);
    IH.Post(GET_CARINSU, sl, st );

    st.Position := 0;
    st.SaveToFile('ccc.xml');
    st.Position := 0;
    Memo1.Lines.Clear;
    Memo1.Lines.LoadFromStream(st);

    try
    st.Position := 0;
    XD.LoadFromStream(st);
    XD.Active := true;
    except on E: Exception do
      //showmessage(E.Message);
    end;

    st.Position := 0;
    st.SaveToFile('aa.xml');

    StartItemNode := XD.DocumentElement.ChildNodes.First;
    ANode := StartItemNode;
    //repeat
  finally
    st.Free;
    sl.Free;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Thread1.Start;
end;

procedure TForm1.Thread1Run(Sender: TIdCustomThreadComponent);
const
  GET_UPDATEFILE = 'http://bizauto.co.kr/koin/update/Setup_BikeBuddy_1_0_0_1.exe';
var
  MS: TMemoryStream;
  FSize: Integer;
begin

  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';
  
  MS := TMemoryStream.Create;
  try
    try
      //IH.OnWork := HTTPWork;
      IH.Head(GET_UPDATEFILE);
      FSize := IH.Response.ContentLength;
      IH.Get(GET_UPDATEFILE, MS);
      MS.SaveToFile('c:\temp\xxx2.exe');
    except
    end;
  finally
    MS.Free;
    Thread1.Stop;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  combobox1.ItemIndex := combobox1.Items.IndexOf('승인');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  combobox1.ItemIndex := combobox1.Items.IndexOf('취소');

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  combobox1.ItemIndex := combobox1.Items.IndexOf('중지');

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  showmessage(  combobox1.Text);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Showmessage(Copy(Edit2.Text, 1,3));
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  try
    frmCalendar := TfrmCalendar.Create(Self);
    frmCalendar.ShowModal;
  finally
    frmCalendar.Free;
  end;
end;

procedure TForm1.callSQL(S: String);
var
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
    sl: TStringList;

begin
  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try
    st := TMemoryStream.Create;

    sl := TStringList.Create;
    sl.Add('uname=xx24');

    sl.Add('sqltext='+S);

    IH.Post('http://bizauto.co.kr/koin/util/getSQL.php', sl, st);

    st.Position := 0;
    st.Position := 0;
    Memo4.Lines.Clear;
    Memo4.Lines.LoadFromStream(st);


  finally
    st.Free;
    sl.Free;
  end;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  callSQL(Memo1.Lines.Text);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  callSQL(Memo2.Lines.Text);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  callSQL(Memo3.Lines.Text);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  st: TMemoryStream;

  StartItemNode: IXMLNode;
  ANode: IXMLNode;
    sl: TStringList;

begin
  IH.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try
    st := TMemoryStream.Create;

    sl := TStringList.Create;
    sl.Add('dongname='+ezipcode.Text);

    IH.Post('http://bizauto.co.kr/koin/getZIPCODE.php', sl, st);

    st.Position := 0;
    st.Position := 0;
    Memo4.Lines.Clear;
    Memo4.Lines.LoadFromStream(st);


  finally
    st.Free;
    sl.Free;
  end;

end;

end.
