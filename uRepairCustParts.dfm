object frmRepairCustParts: TfrmRepairCustParts
  Left = 795
  Top = 114
  BorderStyle = bsSingle
  Caption = #51221#48708#48512#54408#46321#47197
  ClientHeight = 360
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 12
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 308
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 243
      Top = 47
      Width = 23
      Height = 22
      Hint = #44256#44061#51060#47492' '#44160#49353
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        D44DD00D00D00DDD4744D00D00D00DD47444DDDDDDDDDD47444DDDDDD0000474
        44DDDDD00777F8444DDDDD0877777F80DDDDDD07777777F0DDDDD07777777777
        0DDDD077777777770DDDD07FE77777770DDDD07FE77777770DDDDD0FFEE77770
        DDDDDD08FFF77780DDDDDDD00777700DDDDDDDDDD0000DDDDDDD}
      OnClick = SpeedButton1Click
    end
    object Panel6: TPanel
      Left = 28
      Top = 47
      Width = 98
      Height = 21
      Caption = #48512#54408#51060#47492
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel11: TPanel
      Left = 29
      Top = 224
      Width = 98
      Height = 21
      Caption = #44552#50529#54633#44228
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel10: TPanel
      Left = 29
      Top = 86
      Width = 98
      Height = 21
      Caption = #49688#47049
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel24: TPanel
      Left = 29
      Top = 109
      Width = 98
      Height = 21
      Caption = #45800#44032
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Panel25: TPanel
      Left = 29
      Top = 132
      Width = 98
      Height = 21
      Caption = #44277#51076
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel26: TPanel
      Left = 29
      Top = 155
      Width = 98
      Height = 21
      Caption = #54624#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Panel21: TPanel
      Left = 29
      Top = 178
      Width = 98
      Height = 21
      Caption = #54032#47588#44032
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel28: TPanel
      Left = 29
      Top = 201
      Width = 98
      Height = 21
      Caption = #48512#44032#49464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel29: TPanel
      Left = 29
      Top = 247
      Width = 99
      Height = 21
      Caption = #47700#47784
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BitBtn4: TBitBtn
      Left = 29
      Top = 306
      Width = 82
      Height = 25
      Caption = #48512#54408#45236#50669#52628#44032
      TabOrder = 9
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 112
      Top = 306
      Width = 82
      Height = 25
      Caption = #48512#54408#45236#50669#51200#51109
      TabOrder = 10
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 195
      Top = 306
      Width = 82
      Height = 25
      Caption = #45803#44592
      TabOrder = 11
      OnClick = BitBtn6Click
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 47
      Width = 113
      Height = 20
      DataField = 'PART_NAME'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 86
      Width = 134
      Height = 20
      DataField = 'PART_COUNT'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 13
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 109
      Width = 134
      Height = 20
      DataField = 'UNIT_PRICE'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 14
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 133
      Width = 134
      Height = 20
      DataField = 'LABOUR_CHARGE'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 15
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 128
      Top = 155
      Width = 134
      Height = 20
      DataField = 'DISCOUNT'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 16
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 178
      Width = 134
      Height = 20
      Color = 11922943
      DataField = 'LIST_PRICE'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 200
      Width = 134
      Height = 20
      Color = 11922943
      DataField = 'VAT'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      ReadOnly = True
      TabOrder = 18
    end
    object DBEdit8: TDBEdit
      Left = 128
      Top = 224
      Width = 134
      Height = 20
      Color = 11922943
      DataField = 'TOTAL_AMT'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      ReadOnly = True
      TabOrder = 19
    end
    object DBEdit9: TDBEdit
      Left = 129
      Top = 246
      Width = 134
      Height = 20
      DataField = 'MEMO'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 20
    end
  end
  object Table1: TTable
    BeforePost = Table1BeforePost
    DatabaseName = 'KorInsDB'
    TableName = 'REPAIRPARTS.DB'
    Left = 224
    Top = 208
    object Table1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table1SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table1PART_SEQ: TIntegerField
      FieldName = 'PART_SEQ'
    end
    object Table1PART_NAME: TStringField
      FieldName = 'PART_NAME'
      Size = 255
    end
    object Table1PART_COUNT: TFloatField
      FieldName = 'PART_COUNT'
    end
    object Table1UNIT_PRICE: TFloatField
      FieldName = 'UNIT_PRICE'
      currency = True
    end
    object Table1LABOUR_CHARGE: TFloatField
      FieldName = 'LABOUR_CHARGE'
      currency = True
    end
    object Table1DISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      currency = True
    end
    object Table1LIST_PRICE: TFloatField
      FieldName = 'LIST_PRICE'
      currency = True
    end
    object Table1VAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object Table1TOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
      currency = True
    end
    object Table1MEMO: TStringField
      FieldName = 'MEMO'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 256
    Top = 208
  end
  object qrySeq1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'SELECT MAX(PART_SEQ) + 1 AS NSEQ FROM REPAIRPARTS WHERE CUSTOMER' +
        '_ID = :CUSTOMER_ID AND SEQ =:SEQ')
    Left = 195
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUSTOMER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQ'
        ParamType = ptUnknown
      end>
  end
end
