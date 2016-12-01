unit uCloseQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TfrmCloseQuery = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function IsMainClose: Boolean;

var
  frmCloseQuery: TfrmCloseQuery;

implementation

{$R *.DFM}

function IsMainClose: Boolean;
begin
  try
    try
      frmCloseQuery := TfrmCloseQuery.Create(nil);
      if frmCloseQuery.ShowModal = mrYes then
        result := True
      else
        result := False;
    except
      result := False;
    end;
  finally
    frmCloseQuery.Free;
  end;

end;

end.
