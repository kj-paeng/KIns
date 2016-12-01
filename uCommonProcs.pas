unit uCommonProcs;

interface

uses
  Controls, Windows, Classes, Dialogs, IdHTTP, StdCtrls, xmldom, XMLIntf, msxmldom,
  XMLDoc, Xmlxform, SysUtils, DateUtils, ShellApi, uCalendar,
  IniFiles, ComCtrls, Forms, Buttons;


const

  BB_VERSION = '1.0.0.6';

  BIKEBUDDY_TITLE = '''easy BIKE 프로그램''';
  BBUDDY_INI = 'BBUDDY3356.ini';
  BBDB_ALIAS = 'KORINS';

  GET_CARINSU = 'http://bizauto.co.kr/koin/getCAR_INSU.php'; // for test
  GET_VERSION = 'http://bizauto.co.kr/koin/getVERSION.php'; // for getting version number
  GET_UPDATE_DIR = 'http://bizauto.co.kr/koin/update/'; // to get url, combine,  GET_UPDATE_DIR+GET_UPDATE_FILENAME+VERSION.
  //GET_UPDATE_FILENAME = 'Setup_BikeBuddy_';
  GET_UPDATE_FILENAME = 'Setup_easy4BIKE_';

  SET_COMPLAIN = 'http://bizauto.co.kr/koin/setCOMPLAIN.php'; // for sending complain

  GET_VALID_MEMBER_ID = 'http://bizauto.co.kr/koin/getMEMBER_ID_VALIDATION.php'; // for validate member id from uMemberReg
  SET_MEMBER_REG = 'http://bizauto.co.kr/koin/setMEMBER_REG.php'; // for creating member from uMemberReg
  MOD_MEMBER_REG = 'http://bizauto.co.kr/koin/modMEMBER_REG.php'; // for updating member from uMemberReg
  GET_MEMBER_STATUS_CHECK = 'http://bizauto.co.kr/koin/getMEMBER_STATUS_CHECK.php'; // getting member status check for ins. quote

  // before 1.0.0.5
  GET_BIKE_QUOTE = 'http://bizauto.co.kr/koin/getBIKE_QUOTE.php'; // getting bike quote from uQuoteBike
  GET_BIKE_QUOTE_SS = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_SS.php'; // getting bike quote from uQuoteBike
  GET_BIKE_QUOTE_ME = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_ME.php'; // getting bike quote from uQuoteBike
  SET_BIKEINS_APP = 'http://bizauto.co.kr/koin/setBIKEINS_APP.php'; // setting bike insurance application from uQuoteBike
  GET_BIKE_QUOTE_LIST = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_LIST.php'; // getting bike quote from uBikeQuoteList

  // 1.0.0.5
  GET_BIKE_QUOTE_1005 = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_1005.php'; // getting bike quote from uQuoteBike
  GET_BIKE_QUOTE_SS_1005 = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_SS_1005.php'; // getting bike quote from uQuoteBike
  GET_BIKE_QUOTE_ME_1005 = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_ME_1005.php'; // getting bike quote from uQuoteBike
  SET_BIKEINS_APP_1005 = 'http://bizauto.co.kr/koin/setBIKEINS_APP_1005.php'; // setting bike insurance application from uQuoteBike
  GET_BIKE_QUOTE_LIST_1005 = 'http://bizauto.co.kr/koin/getBIKE_QUOTE_LIST_1005.php'; // getting bike quote from uBikeQuoteList

  SET_AUTOINS_APP = 'http://bizauto.co.kr/koin/setAUTOINS_APP.php'; // setting auto insurance application
  GET_AUTO_QUOTE_LIST = 'http://bizauto.co.kr/koin/getAUTO_QUOTE_LIST.php'; // getting auto quote from uAutoQuoteList

  GET_ZIPCODE = 'http://bizauto.co.kr/koin/getZIPCODE.php'; // getting zip code

  procedure CallService(URL: String; Params: TStringList; var XMLDoc: TXMLDocument); overload; // HTTP CALL FUNCTION
  procedure CallService(URL: String; Params: TStringList; var XMLDoc: TXMLDocument; f: String); overload;  // HTTP CALL FUNCTION
  procedure CallServiceHidden(URL: String; Params: TStringList; var XMLDoc: TXMLDocument);

  function GetAge(DOB: TDateTime; BaseDate: TDateTime): Integer; overload;
  function GetAge(DOB: String; BaseDate: TDateTime): Integer; overload;
  function GetInsuredAge(age: Integer): Integer;
  function GetInsuredAgeME(age: Integer): Integer;
  function GetDealerID: String;

  {**********날짜 관련 함수들*************}
  function ChangeMonth(FData: TDateTime; Direction: Integer): TDateTime;
  function AddMonth(FData: TDateTime; mCount: Integer): TDateTime;
  function AddDate(FData: TDateTime; mCount: Integer): TDateTime;
  function DaysPerMonth(AYear, AMonth: Integer): Integer;
  function IsLeapYear(AYear: Integer): Boolean;
  function GetToday: TDateTime;
  function ConvertDate(str: String) : TDateTime;
  function ChkDate(str: String) : Boolean;
  function getDateFromString(str: String): TDate;
  function getYearByAge(age: Integer; sORe: Byte): String; //0: first, 1: end
  function getFormattedDate(input: String): String; // input: 20120901 output: 2012년 09월 01일

  function showMCal(cmp: TSpeedButton; cur: String): String;
  procedure showMCalPeriod(cmp: TSpeedButton;var cur: String;var cur2: String);

  {**********날짜 관련 함수들*************}

  function Chk_Jumin(str: string): Boolean ;   // 주민등록번호 입력오류 확인.
  function EraseStr(str, cutstr: string): String;
  function GetCurrDir: String;
  function IntConv(int: integer) : string ;
  function StrConv(str: string) : string ;   // string으로 입력 받아서 ','를 추가한 string으로 return
  function RPad(S: String; Ch: Char; Len:Integer): String;
  function LPad(S: String; Ch: Char; Len:Integer): String;


  //구분자를 사용하여 스트링 S의 Idx(0부터 시작)번째의 스트링을 리턴
  function GetFieldValue(S: String; Idx: Integer; sDelimeter: String): String;
  //양 식별자 사이의 스트링 리턴
  function withinString(S: String; prev, post: String): String;

  // roundEX - 10단위에서 round
  function roundEX(f: Double; x: Integer): Integer;

  {folder handling}
  function CopyDir(const fromDir, toDir: string): Boolean;
  function MoveDir(const fromDir, toDir: string): Boolean;
  function DelDir(dir: string): Boolean;

var
  HTTP: TIdHTTP;
  BBIni: TIniFile;
  guid, gupass: String;


implementation

uses uProgressDisp, uCalendarPeriod;

//구분자를 사용하여 스트링 S의 Idx(0부터 시작)번째의 스트링을 리턴
function GetFieldValue(S: String; Idx: Integer; sDelimeter: String): String;
var
  SubStr: String;
begin
  SubStr := S;

  if Idx < 0 then
  begin
    result := '0';
    Exit;
  end;

  while True do
  begin
    if Idx = 0 then
    begin
     if Pos(sDelimeter, SubStr) = 0 then
     begin
       result := Trim(SubStr);
       Exit;
     end
     else
     begin
       result := Trim(Copy(SubStr, 1, Pos(sDelimeter, SubStr) - 1));
       Exit;
     end;
   end
   else
     begin
       SubStr := Trim(Copy(SubStr, Pos(sDelimeter, SubStr) + 1, Length(SubStr)));
       Idx := Idx - 1;
     end;
  end;
end;

function withinString(S: String; prev, post: String): String;
begin
  result := Copy(Trim(S), Pos(prev, Trim(S)) + 1, Pos(post, Trim(S)) - Pos(prev, Trim(S)) - 1);
end;

function roundEX(f: Double; x: Integer): Integer;
var
  f0: Double;
  i0: Integer;
begin
  f0 := f;
  f0 := f0 / x;
  i0 := round(f0);
  result := i0 * x;

end;

function showMCal(cmp: TSpeedButton; cur: String): String;
var
  P: TPoint;
begin
  try
    frmCalendar := TfrmCalendar.Create(Application);
    P.x := cmp.Left;
    P.y := cmp.Top;
    P := cmp.Parent.ClientToScreen(P);
    frmCalendar.Top := P.Y;
    frmCalendar.Left := P.X;
    try
      frmCalendar.mdPicker.Date := getDateFromString(cur);
    except
      frmCalendar.mdPicker.Date := Now;
    end;

    if frmCalendar.ShowModal = mrOK then
    begin
      result := FormatDateTime('YYYYMMDD', frmCalendar.mdPicker.Date);
    end
    else
      result := cur;

  finally
    frmCalendar.Free;
  end;
end;

procedure showMCalPeriod(cmp: TSpeedButton;var cur: String;var cur2: String);
var
  P: TPoint;
begin
  try
    frmCalendarPeriod := TfrmCalendarPeriod.Create(Application);
    P.x := cmp.Left;
    P.y := cmp.Top;
    P := cmp.Parent.ClientToScreen(P);
    frmCalendarPeriod.Top := P.Y;
    frmCalendarPeriod.Left := P.X;
    try
      frmCalendarPeriod.mdPicker.Date := getDateFromString(cur);
      frmCalendarPeriod.eS.Text := cur;
      frmCalendarPeriod.eE.Text := cur2;
    except
      frmCalendarPeriod.mdPicker.Date := Now;

    end;

    if frmCalendarPeriod.ShowModal = mrOK then
    begin
      cur := frmCalendarPeriod.eS.Text;
      cur2 := frmCalendarPeriod.eE.Text;
    end
    else
    begin
      cur := frmCalendarPeriod.es.Text;
      cur2 := frmCalendarPeriod.eE.Text;
    end;

  finally
    frmCalendarPeriod.Free;
  end;
end;


function getFormattedDate(input: String): String; // input: 20120901 output: 2012년 09월 01일
begin
  if Length(input) = 8 then
    result := Copy(input, 1, 4) + '년 ' + Copy(input, 5, 2) +  '월 ' + Copy(input, 7, 2) + '일 '
  else
    result := '';

end;

// string으로 입력 받아서 ','를 추가한 string으로 return
function StrConv(str: string) : string ;
var i, cnt: integer ;
    tm_str: string ;
begin
   str := EraseStr(trim(str), ',') ;  // ',' 모두 삭제...
   tm_str := '' ;

   if pos('.', str) > 0 then
   begin
      tm_str := copy(str, pos('.', str), length(str)) ;
      str := copy(str, 1, pos('.', str)-1) ;
   end;

   Result := '' ;
   cnt := 0 ;

   for i := length(str) downto 1 do
   begin
      cnt := cnt + 1 ;  // 현재 진행된 문자수
      if (cnt <> 1) and (cnt mod 3 = 1) then
      	Result := ',' + Result ;
        Result := copy(str,i,1) + Result;
   end;
   Result := Result + tm_str ;

end;


// integer로 입력 받아서 ','를 추가한 string으로 return
function IntConv(int: integer) : string ;
begin
   Result := format('%0.0n', [strtofloat(inttostr(int)+'.0')]) ;
end;

// 년월일 구분자 없이 숫자만 여덟개 입력하여 날짜입력 오류 확인.
function ChkDate(str: String) : Boolean;
begin
  Result := true ;
  DateSeparator := '/';

  str := EraseStr(EraseStr(EraseStr(str, '/'), '-'), ' ');

  if length(trim(str)) = 8 then
  begin
    try
      if (StrToInt(Copy(str, 5, 2)) < 1) or (StrToInt(Copy(str, 5, 2)) > 12) then
      begin
        result := False;
        Exit;
      end;

      if (StrToInt(Copy(str, 7, 2)) < 1)
        or (StrToInt(Copy(str, 7, 2)) > DaysPerMonth(StrToInt(Copy(str, 1, 4)), StrToInt(Copy(str, 5, 2)))) then
      begin
        result := False;
        Exit;
      end;

      Insert('/', str, 7) ;
      Insert('/', str, 5) ;

      StrToDate(str);
    except
      result := False ;
    end;
  end
  else if length(trim(str)) <> 0 then
    result := False ;
end;

// 문자열(str) 내의 일정 문자(ch)를 길이만큼 추가.
function RPad(S: String; Ch: Char; Len:Integer): String;
var
  RestLen: Integer;
begin
  result := S;
  RestLen := Len - Length(S);
  if RestLen < 1 then exit;
  result := S + StringOfChar(ch, RestLen);
end;

function LPad(S: String; Ch: Char; Len:Integer): String;
var
  RestLen: Integer;
begin
  result := S;
  RestLen := Len - Length(S);
  if RestLen < 1 then exit;
  result := StringOfChar(ch, RestLen) + S;

end;

// 문자열(str) 내의 일정 문자(cutstr)를 찾아서 일괄적으로 제거.
Function EraseStr(str, cutstr: string): String;
begin
   while pos(cutstr, str) > 0 do
   begin
      delete(str, pos(cutstr, str), length(cutstr)) ;
   end ;

   Result := str;
end;
// 주민등록번호 입력오류 확인.
function  Chk_Jumin(str: string): Boolean ;
var
  ar_str: array[0..11] of integer;
  reslt, tot, i : integer ;
  S: String;
begin
  if StrToInt(copy(str,1,2)) > 29 then
    S := '19' + str
  else
    S := '20' + str;

  if not ChkDate(copy(S,1,8)) then
  begin
   	Result := false ;
    Exit ;
  end;

  str := EraseStr(str, '-');

  tot := 0;
	ar_str[0]  := strtoint(copy(str,1,1)) * 2 ;
	ar_str[1]  := strtoint(copy(str,2,1)) * 3 ;
	ar_str[2]  := strtoint(copy(str,3,1)) * 4 ;
	ar_str[3]  := strtoint(copy(str,4,1)) * 5 ;
	ar_str[4]  := strtoint(copy(str,5,1)) * 6 ;
	ar_str[5]  := strtoint(copy(str,6,1)) * 7 ;
	ar_str[6]  := strtoint(copy(str,7,1)) * 8 ;
	ar_str[7]  := strtoint(copy(str,8,1)) * 9 ;
	ar_str[8]  := strtoint(copy(str,9,1)) * 2 ;
	ar_str[9]  := strtoint(copy(str,10,1)) * 3 ;
	ar_str[10] := strtoint(copy(str,11,1)) * 4 ;
	ar_str[11] := strtoint(copy(str,12,1)) * 5 ;

   for i := 0 to 11 do
      tot := tot + ar_str[i] ;

   reslt := tot mod 11 ;
   case reslt of
   	0: reslt := 1;
      1: reslt := 0;
   else
      reslt := 11 - reslt;
   end;
   if copy(str,13,1) = inttostr(reslt) then
   	Result := true
   else
   	Result := false;
end;


{**********날짜 관련 함수들*************}

// 년월일 구분자 없이 숫자만 여덟개 입력하여 날짜 Return
function ConvertDate(str: String) : TDateTime;
begin

  DateSeparator := '/';
  result := StrToDate('1980/01/01');

  str := EraseStr(EraseStr(EraseStr(str, '/'), '-'), ' ');

  if length(trim(str)) = 8 then
  begin
    try
      if (StrToInt(Copy(str, 5, 2)) < 1) or (StrToInt(Copy(str, 5, 2)) > 12) then
      begin
        Exit;
      end;

      if (StrToInt(Copy(str, 7, 2)) < 1)
        or (StrToInt(Copy(str, 7, 2)) > DaysPerMonth(StrToInt(Copy(str, 1, 4)), StrToInt(Copy(str, 5, 2)))) then
      begin
        Exit;
      end;

      Insert('/', str, 7) ;
      Insert('/', str, 5) ;

      result := StrToDate(str);
    except
      Exit;
    end;
  end;
end;


function getDateFromString(str: String): TDate;
begin
  DateSeparator := '/';

  str := EraseStr(EraseStr(EraseStr(str, '/'), '-'), ' ');

  if length(trim(str)) = 8 then
  begin
    try

      Insert('/', str, 7) ;
      Insert('/', str, 5) ;

      result := StrToDate(str);
    except
      result := Now;
    end;
  end
  else
    result := Now;
end;

function getYearByAge(age: Integer; sORe: Byte): String;
var
  thisYear: Integer;
  returnYear: String;
begin
  returnYear := EraseStr(FormatDateTime('yyyy/MM/dd', Now), '/');
  try
    thisYear := StrToInt(Copy(returnYear, 1, 4));
    thisYear := thisYear - age;
    if sORe = 0 then
      result := IntToStr(thisYear)+ '0101'
    else
      result := IntToStr(thisYear)+ '1231';

  except
    result := returnYear;
    exit;
  end;

end;

function AddMonth(FData: TDateTime; mCount: Integer): TDateTime;
var
  AYear, AMonth, ADay: Word;
  TotalDate, i: Integer;
begin
  DecodeDate(FData, AYear, AMonth, ADay);
  TotalDate := 0;

  if mCount < 0 then
  begin
     mCount := abs(mCount);
     for i := 0 to mCount - 1 do
     begin
        TotalDate := TotalDate + DaysPerMonth(AYear, AMonth);
        AMonth := AMonth - 1;
        if AMonth < 1 then
        begin
           AYear := AYear -1;
           AMonth := AMonth + 12;
        end;
     end;
     FData := FData - TotalDate;
     result := FData;
     Exit;

  end
  else
  begin
     for i := 0 to mCount - 1 do
     begin
        TotalDate := TotalDate + DaysPerMonth(AYear, AMonth);
        AMonth := AMonth + 1;
        if AMonth > 12 then
        begin
           AYear := AYear + 1;
           AMonth := AMonth - 12;
        end;
     end;
     FData := FData + TotalDate;
     result := FData;
  end;

end;

function AddDate(FData: TDateTime; mCount: Integer): TDateTime;
var
  AYear, AMonth, ADay: Word;
begin
  DecodeDate(FData, AYear, AMonth, ADay);

  if mCount < 0 then
  begin
     result := FData - mCount;
  end
  else
  begin
     result := FData + mCount;
  end;

end;


function ChangeMonth(FData: TDateTime; Direction: Integer): TDateTime;
var
  AYear, AMonth, ADay: Word;
  NewData, Data: TDateTime;
  CurDay: Integer;
begin
  DecodeDate(FData, AYear, AMonth, ADay);
  CurDay := ADay;
  if Direction > 0 then ADay := DaysPerMonth(AYear, AMonth)
  else ADay := 1;
  NewData := EncodeDate(AYear, AMonth, ADay);
  NewData := NewData + Direction;
  DecodeDate(NewData, AYear, AMonth, ADay);
  if DaysPerMonth(AYear, AMonth) > CurDay then ADay := CurDay
  else ADay := DaysPerMonth(AYear, AMonth);
  Data := EncodeDate(AYear, AMonth, ADay);
  result := Data;
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap-year Feb is special }
end;

function IsLeapYear(AYear: Integer): Boolean;
begin
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function GetToday: TDateTime;
begin
  result := StrToDateTime(FormatDateTime('yyyy/MM/dd', Now));
end;

{**********날짜 관련 함수들*************}

function GetCurrDir: String;
const
  dwcDirectorySize: DWORD = MAX_PATH+1;
var
  szDirectoryBuffer :array[0 .. MAX_PATH+1] of Char;
begin
  GetCurrentDirectory(dwcDirectorySize, szDirectoryBuffer);
  Result := UpperCase(szDirectoryBuffer);

end;

function GetDealerID: String;
begin
  try
    BBIni := TIniFile.Create(BBUDDY_INI);
    result := BBIni.ReadString('MemberInfo', 'UID', '');
  finally
    BBIni.Free;
  end;
end;

function GetInsuredAge(age: Integer): Integer;
begin
  result := 56;
  if age in [0..26] then result := 26
  else if age in [27..30] then result := 30
  else if age in [31..35] then result := 35
  else if age in [36..43] then result := 43
  else if age in [44..48] then result := 48
  else if age in [49..55] then result := 55
  else if age in [56..120] then result := 56;
end;

function GetInsuredAgeME(age: Integer): Integer;
begin
  result := 56;
  if age in [0..23] then result := 0
  else if age in [24..26] then result := 24
  else if age in [27..30] then result := 27
  else if age in [31..35] then result := 31
  else if age in [36..43] then result := 36
  else if age in [44..48] then result := 44
  else if age in [49..55] then result := 49
  else if age in [56..120] then result := 56;
end;

function GetAge(DOB: String; BaseDate: TDateTime): Integer;
var
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin
  AYear := StrToInt(Copy(DOB, 0, 4));
  AMonth := StrToInt(Copy(DOB, 5, 2));
  ADay := StrToInt(Copy(DOB, 7, 2));

  AHour := 0;
  AMinute := 0;
  ASecond := 0;
  AMilliSecond := 0;

  result := GetAge(EncodeDateTime(AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond), BaseDate);
end;

function GetAge(DOB: TDateTime; BaseDate: TDateTime): Integer;
var
  NowYear, NowMonth, NowDay: Word;
  Year, Month, Day: Word;
  YearsOld: Word;
begin
  DecodeDate(BaseDate, NowYear, NowMonth, NowDay);
  DecodeDate(DOB, Year, Month, Day);
  if NowMonth>Month then
    YearsOld:=NowYear-Year;
  if NowMonth<Month then
    YearsOld:=NowYear-Year-1;
  if NowMonth=Month then
  begin
    if NowDay>=Day then
      YearsOld:=NowYear-Year;
    if NowDay<=Day then
      YearsOld:=NowYear-Year-1;
  end;
  result := YearsOld;
end;

procedure CallServiceHidden(URL: String; Params: TStringList; var XMLDoc: TXMLDocument);
var
  st: TMemoryStream;
begin

  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try

    st := TMemoryStream.Create;

    Params.Add('guid='+guid);
    Params.Add('gupass='+gupass);

    HTTP.Post(URL, Params, st );

    // for debug
    //st.Position := 0;
    //st.SaveToFile('ccch.xml');

    try
      st.Position := 0;
      XMLDoc.LoadFromStream(st);
    except on E: Exception do
      //showmessage(E.Message);
    end;

  finally
    HTTP.Disconnect;
    st.Free;
  end;
end;

procedure CallService(URL: String; Params: TStringList; var XMLDoc: TXMLDocument);
var
  st: TMemoryStream;
begin

  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try

    frmProgressDisp := TfrmProgressDisp.Create(nil);
    frmProgressDisp.Show;
    frmProgressDisp.Update;

    st := TMemoryStream.Create;

    Params.Add('guid='+guid);
    Params.Add('gupass='+gupass);

    HTTP.Post(URL, Params, st );

    // for debug
    //st.Position := 0;
    //st.SaveToFile('ccc.xml');

    try
      st.Position := 0;
      XMLDoc.LoadFromStream(st);
    except on E: Exception do
      //showmessage(E.Message);
    end;

  finally
    frmProgressDisp.Hide;
    frmProgressDisp.Free;
    HTTP.Disconnect;
    st.Free;
  end;
end;

procedure CallService(URL: String; Params: TStringList; var XMLDoc: TXMLDocument; f: String);
var
  st: TMemoryStream;
begin

  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; KOINS)';

  try

    frmProgressDisp := TfrmProgressDisp.Create(nil);
    frmProgressDisp.Show;
    frmProgressDisp.Update;

    st := TMemoryStream.Create;

    Params.Add('guid='+guid);
    Params.Add('gupass='+gupass);

    HTTP.Post(URL, Params, st );

    // for debug
    //st.Position := 0;
    //st.SaveToFile(f);

    try
      st.Position := 0;
      XMLDoc.LoadFromStream(st);
    except on E: Exception do
      //showmessage(E.Message);
    end;

  finally
    frmProgressDisp.Hide;
    frmProgressDisp.Free;
    HTTP.Disconnect;
    st.Free;
  end;
end;


function CopyDir(const fromDir, toDir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_COPY;
    fFlags := FOF_FILESONLY;
    pFrom  := PChar(fromDir + #0);
    pTo    := PChar(toDir)
  end;
  Result := (0 = ShFileOperation(fos));
end;

function MoveDir(const fromDir, toDir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_MOVE;
    fFlags := FOF_FILESONLY;
    pFrom  := PChar(fromDir + #0);
    pTo    := PChar(toDir)
  end;
  Result := (0 = ShFileOperation(fos));
end;

function DelDir(dir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_DELETE;
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom  := PChar(dir + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;

initialization
begin
  HTTP := TIdHTTP.Create(nil);
end;

finalization
begin

  HTTP.Free;

end;

end.


