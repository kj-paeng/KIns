unit uToolHint;

interface

uses
  Classes, Controls;

type

  TBBHintWindow = class(THintWindow)
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

constructor TBBHintWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Canvas.Font.Name := '±¼¸²';
  Canvas.Font.Size := 10;
  
end;

end.
