object frmSMSMng: TfrmSMSMng
  Left = 462
  Top = 274
  BorderStyle = bsSingle
  Caption = #47928#51088#47700#49884#51648#44288#47532
  ClientHeight = 247
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 16
    Top = 51
    Width = 52
    Height = 12
    Caption = #53440#51060#53952'    '
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 28
    Width = 40
    Height = 12
    Caption = #44536#47353'    '
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 52
    Height = 12
    Caption = #47700#49884#51648'    '
    FocusControl = DBMemo1
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 48
    Width = 194
    Height = 20
    DataField = 'TITLE'
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 25
    Width = 194
    Height = 20
    DataField = 'GRP'
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 72
    Top = 69
    Width = 194
    Height = 124
    DataField = 'MSG'
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 135
    Top = 202
    Width = 58
    Height = 25
    Caption = #51200#51109
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 194
    Top = 202
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'SMS.db'
    Left = 8
    Top = 208
    object Table1SEQ: TAutoIncField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object Table1TITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object Table1MSG: TMemoField
      FieldName = 'MSG'
      BlobType = ftMemo
      Size = 240
    end
    object Table1GRP: TStringField
      FieldName = 'GRP'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 40
    Top = 208
  end
end
