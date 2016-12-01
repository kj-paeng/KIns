unit Debug;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms;

  procedure DebugPrint(Value : String);
  //procedure DebugPrint(Value : Variant);
implementation

{$IFDEF DEBUG}
procedure DebugPrint(Value : String);
var
  Cds : TCopyDataStruct;
  Hwnd : THandle;
begin

  Cds.dwData := varString;
  Cds.cbData := Sizeof(Value);
  case Cds.dwData of
    {
    varEmpty      : begin
                      ShowMessage('Debug값이 정의되지 않았습니다.');
                      Cds.cbData := 0;
                    end;
    varNull       : begin
                      ShowMessage('Debug값이 NULL 입니다.');
                      Cds.cbData := 0;
                    end;
    varSmallint,
    varInteger,
    varSingle,
    varDouble,
    varCurrency,
    varDate,
    varBoolean,
    varByte       : begin
                      Cds.cbData := Sizeof(Value);
                      GetMem(Cds.lpData, Cds.cbData);
                      CopyMemory(Cds.lpData, Addr(Value), Cds.cbData);
                    end;
    }
    varString     : begin
                      Cds.cbData := Length(AnsiString(Value)) + 1;
                      GetMem(Cds.lpData, Cds.cbData);
                      StrCopy(Cds.lpData, PChar(String(Value)));
                    end;
    else            begin
                      ShowMessage('Reference to an unknown data type.');
                      Cds.cbData := 0;
                    end;
  end; 

  Hwnd := FindWindow('TDebugWindows', 'Debug');
  if Hwnd <> 0 then
    SendMessage(Hwnd, WM_COPYDATA, Application.Handle, Cardinal(@Cds));
  // else ShowMessage('Debug Windows not found.');

  FreeMem(Cds.lpData);
  
end;
{$ELSE}
procedure DebugPrint(Value : Variant);
begin

end;
{$ENDIF}
end.
