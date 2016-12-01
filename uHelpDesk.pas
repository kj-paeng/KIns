unit uHelpDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmHelpDesk = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelpDesk: TfrmHelpDesk;

implementation

{$R *.dfm}

procedure TfrmHelpDesk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmHelpDesk := nil;
end;

end.
