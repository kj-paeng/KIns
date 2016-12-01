object frmDM: TfrmDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 159
  Top = 163
  Height = 245
  Width = 400
  object BBDB: TDatabase
    AliasName = 'KORINS'
    DatabaseName = 'KorInsDB'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=cms25'
      'SERVER NAME=210.109.151.22'
      'USER NAME=sa'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'BLOB EDIT LOGGING='
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'DATE MODE=0'
      'SCHEMA CACHE TIME=-1'
      'MAX QUERY TIME=300'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'HOST NAME='
      'APPLICATION NAME='
      'NATIONAL LANG NAME='
      'ENABLE BCD=FALSE'
      'TDS PACKET SIZE=4096'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=')
    SessionName = 'Default'
    Left = 36
    Top = 28
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    Left = 36
    Top = 84
  end
end
