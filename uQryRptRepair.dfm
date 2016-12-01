object frmQryRptRepair: TfrmQryRptRepair
  Left = 399
  Top = 215
  BorderStyle = bsSingle
  Caption = #51221#48708#51312#54924#44288#47532
  ClientHeight = 567
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 541
    Width = 687
    Height = 26
    Panels = <
      item
        Width = 100
      end
      item
        Width = 0
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 497
    Width = 687
    Height = 44
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 590
      Top = 11
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 424
      Top = 12
      Width = 75
      Height = 25
      Caption = #48120#47532#48372#44592
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Tag = 1
      Left = 500
      Top = 12
      Width = 75
      Height = 25
      Caption = #52636#47141
      TabOrder = 2
      Visible = False
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 270
      Top = 14
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
    object Label1: TLabel
      Left = 185
      Top = 45
      Width = 7
      Height = 13
      Caption = '~'
    end
    object SpeedButton7: TSpeedButton
      Left = 269
      Top = 40
      Width = 24
      Height = 23
      Hint = #44256#44061#51060#47492' '#44160#49353
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000404040
        4040404040404040404040404040404040404040404040404040402020200000
        00FFFFFFFFFFFFFFFFFF40404040404040404040404040404040404040404040
        4040404040404040404040202020000000FFFFFFFFFFFFFFFFFF404040606060
        9F9F9FDFDFDFCFCFCF6060607F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F3F3F3F404040404040DFDFDFDFDFDFC0C0C06F6F6FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF303030404040404040
        DFDFDFCFCFCF606060EFEFEFFFFFFFEFAFAFFF7F7FFFBFBFFFFFFFEFEFEFFF7F
        7FFFFFFF6F6F6FFFFFFF404040404040DFDFDFC0C0C06F6F6FFFFFFFEF3030FF
        0000FF3F3FFF0000FFFFFFEF3030FF3F3FEFEFEF000000FFFFFF404040606060
        CFCFCF606060FFFFFFFFFFFFFF7F7FFFFFFFEF3030EFAFAFEFAFAFFF0000EFEF
        EF6F6F6FFFFFFFFFFFFF404040606060909090AFAFAFFFFFFFFFBFBFFF7F7FFF
        0000EF6F6FFFFFFFEF3030EF6F6FEFEFEF000000FFFFFFFFFFFF404040606060
        606060FFFFFFFF7F7FFFBFBFEF6F6FFF0000FFBFBFEFAFAFFF0000EFEFEF6F6F
        6FFFFFFFFFFFFFFFFFFF4040406060607F7F7FDFDFDFFF0000FF7F7FFF0000FF
        BFBFFF0000FF0000EFAFAFFFFFFF000000FFFFFFFFFFFFFFFFFF404040000000
        EFEFEFFFFFFFFF7F7FFF7F7FEFEFEFFFFFFFFFBFBFFF7F7FFFFFFFAFAFAF0000
        00FFFFFFFFFFFFFFFFFF202040303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFFFFFFFFFF0000800000BF
        0000FF0000FF0000FF0000FF0000FF2000BF8000000000FF0000FF000000FFFF
        FFFFFFFFFFFFFFFFFFFF0000800000BF40007F80000060003F80000060003F80
        00008000000000FF0000BF000000FFFFFFFFFFFFFFFFFFFFFFFF0000800000BF
        40007F80000060003F80000060003F80000060003F40007F00007FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000600000BF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton7Click
    end
    object Panel8: TPanel
      Left = 8
      Top = 14
      Width = 98
      Height = 22
      Caption = #44256#44061#51060#47492#48143' '#53076#46300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCust: TEdit
      Left = 110
      Top = 14
      Width = 84
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 1
      OnExit = edtCustExit
    end
    object Panel4: TPanel
      Left = 8
      Top = 40
      Width = 98
      Height = 22
      Caption = #44592#44036
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtSDate: TEdit
      Left = 110
      Top = 40
      Width = 72
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 3
    end
    object edtEDate: TEdit
      Left = 195
      Top = 40
      Width = 72
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 4
    end
    object Panel10: TPanel
      Left = 8
      Top = 66
      Width = 98
      Height = 22
      Caption = #51221#48708#44592#49324#51060#47492
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cbMechanic: TComboBox
      Left = 110
      Top = 66
      Width = 159
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        #51204#52404)
    end
    object BitBtn4: TBitBtn
      Left = 596
      Top = 60
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 7
      OnClick = BitBtn4Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777770077777777777777007777777777777007777444777077700777744
        4777007007777777777700000777774487770000000077448777000000077774
        4777000000777777448700000778447784480000777448777444000777744877
        7444007777774477844807777777744444877777777777777777}
    end
    object edtCustID: TEdit
      Left = 196
      Top = 14
      Width = 71
      Height = 21
      Color = 11922943
      ImeName = #54620#44397#50612'('#54620#44544')'
      ReadOnly = True
      TabOrder = 8
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 105
    Width = 687
    Height = 392
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 685
      Height = 192
      Align = alTop
      DataSource = DataSource1
      ImeName = #54620#44397#50612'('#54620#44544')'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548#52404
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'customer_name'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#51060#47492
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_DATE'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#51068#51088
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_DESC'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#45236#50669
          Width = 330
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_AMT'
          Title.Alignment = taCenter
          Title.Caption = #44552#50529
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TECHNICIAN'
          Title.Alignment = taCenter
          Title.Caption = #45812#45817#44592#49324
          Width = 70
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 193
      Width = 685
      Height = 198
      Align = alClient
      TabOrder = 1
      object Label2: TLabel
        Left = 10
        Top = 13
        Width = 56
        Height = 13
        Caption = #48512#54408#45236#50669
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 32
        Width = 683
        Height = 165
        Align = alBottom
        DataSource = DataSource3
        ImeName = #54620#44397#50612'('#54620#44544')'
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #44404#47548#52404
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PART_SEQ'
            Title.Alignment = taCenter
            Title.Caption = #48264#54840
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PART_NAME'
            Title.Alignment = taCenter
            Title.Caption = #48512#54408#51060#47492
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PART_COUNT'
            Title.Alignment = taCenter
            Title.Caption = #49688#47049
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LABOUR_CHARGE'
            Title.Alignment = taCenter
            Title.Caption = #44277#51076
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAT'
            Title.Alignment = taCenter
            Title.Caption = #48512#44032#49464
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_AMT'
            Title.Alignment = taCenter
            Title.Caption = #52509#44552#50529
            Width = 115
            Visible = True
          end>
      end
    end
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'SELECT b.customer_name, a.* from repairs as a, customer as b whe' +
        're a.customer_id = b.customer_id')
    Left = 20
    Top = 156
    object Query1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Origin = 'KORINSDB."REPAIRS.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'KORINSDB."REPAIRS.DB".SEQ'
    end
    object Query1REPAIR_DATE: TStringField
      FieldName = 'REPAIR_DATE'
      Origin = 'KORINSDB."REPAIRS.DB".REPAIR_DATE'
      Size = 8
    end
    object Query1REPAIR_DESC: TStringField
      FieldName = 'REPAIR_DESC'
      Origin = 'KORINSDB."REPAIRS.DB".REPAIR_DESC'
      Size = 255
    end
    object Query1USED_PARTS_DESC: TMemoField
      FieldName = 'USED_PARTS_DESC'
      Origin = 'KORINSDB."REPAIRS.DB".USED_PARTS_DESC'
      BlobType = ftMemo
      Size = 240
    end
    object Query1TECHNICIAN: TStringField
      FieldName = 'TECHNICIAN'
      Origin = 'KORINSDB."REPAIRS.DB".TECHNICIAN'
      Size = 100
    end
    object Query1IS_VAT: TStringField
      FieldName = 'IS_VAT'
      Origin = 'KORINSDB."REPAIRS.DB".IS_VAT'
      Size = 4
    end
    object Query1MILEAGE: TFloatField
      FieldName = 'MILEAGE'
      Origin = 'KORINSDB."REPAIRS.DB".MILEAGE'
    end
    object Query1TRANSF_DC: TFloatField
      FieldName = 'TRANSF_DC'
      Origin = 'KORINSDB."REPAIRS.DB".TRANSF_DC'
    end
    object Query1CASH_IN_DESC: TStringField
      FieldName = 'CASH_IN_DESC'
      Origin = 'KORINSDB."REPAIRS.DB".CASH_IN_DESC'
      Size = 255
    end
    object Query1CARD_IN_DESC: TStringField
      FieldName = 'CARD_IN_DESC'
      Origin = 'KORINSDB."REPAIRS.DB".CARD_IN_DESC'
      Size = 255
    end
    object Query1TRANSF_IN_DESC: TStringField
      FieldName = 'TRANSF_IN_DESC'
      Origin = 'KORINSDB."REPAIRS.DB".TRANSF_IN_DESC'
      Size = 255
    end
    object Query1customer_name: TStringField
      FieldName = 'customer_name'
      Origin = 'KORINSDB."repairs.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query1REPAIR_AMT: TFloatField
      FieldName = 'REPAIR_AMT'
      Origin = 'KORINSDB."repairs.DB".NO_RECEIVED_AMT'
    end
    object Query1NO_RECEIVED_AMT: TFloatField
      FieldName = 'NO_RECEIVED_AMT'
      Origin = 'KORINSDB."repairs.DB".RECEIVED_AMT'
    end
    object Query1RECEIVED_AMT: TFloatField
      FieldName = 'RECEIVED_AMT'
      Origin = 'KORINSDB."repairs.DB".USED_PARTS_DESC'
    end
    object Query1CASH_IN: TFloatField
      FieldName = 'CASH_IN'
      Origin = 'KORINSDB."repairs.DB".CASH_DC'
    end
    object Query1CASH_DC: TFloatField
      FieldName = 'CASH_DC'
      Origin = 'KORINSDB."repairs.DB".CARD_IN'
    end
    object Query1CARD_IN: TFloatField
      FieldName = 'CARD_IN'
      Origin = 'KORINSDB."repairs.DB".CARD_DC'
    end
    object Query1CARD_DC: TFloatField
      FieldName = 'CARD_DC'
      Origin = 'KORINSDB."repairs.DB".TRANSF_IN'
    end
    object Query1TRANSF_IN: TFloatField
      FieldName = 'TRANSF_IN'
      Origin = 'KORINSDB."repairs.DB".TRANSF_DC'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 156
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT distinct technician from repairs')
    Left = 274
    Top = 62
    object Query2technician: TStringField
      FieldName = 'technician'
      Origin = 'KORINSDB."REPAIRS.DB".TECHNICIAN'
      Size = 100
    end
  end
  object Query3: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select * from repairparts'
      'where customer_id = :customer_id'
      'and seq = :seq')
    Left = 28
    Top = 348
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'seq'
        ParamType = ptInput
      end>
    object Query3SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'KORINSDB."repairparts.DB".SEQ'
    end
    object Query3CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Origin = 'KORINSDB."repairparts.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query3PART_SEQ: TIntegerField
      FieldName = 'PART_SEQ'
      Origin = 'KORINSDB."repairparts.DB".PART_SEQ'
    end
    object Query3PART_NAME: TStringField
      FieldName = 'PART_NAME'
      Origin = 'KORINSDB."repairparts.DB".PART_NAME'
      Size = 255
    end
    object Query3PART_COUNT: TFloatField
      FieldName = 'PART_COUNT'
      Origin = 'KORINSDB."repairparts.DB".PART_COUNT'
    end
    object Query3UNIT_PRICE: TFloatField
      FieldName = 'UNIT_PRICE'
      Origin = 'KORINSDB."repairparts.DB".UNIT_PRICE'
    end
    object Query3LABOUR_CHARGE: TFloatField
      FieldName = 'LABOUR_CHARGE'
      Origin = 'KORINSDB."repairparts.DB".LABOUR_CHARGE'
    end
    object Query3DISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      Origin = 'KORINSDB."repairparts.DB".DISCOUNT'
    end
    object Query3LIST_PRICE: TFloatField
      FieldName = 'LIST_PRICE'
      Origin = 'KORINSDB."repairparts.DB".LIST_PRICE'
    end
    object Query3VAT: TFloatField
      FieldName = 'VAT'
      Origin = 'KORINSDB."repairparts.DB".VAT'
    end
    object Query3TOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
      Origin = 'KORINSDB."repairparts.DB".TOTAL_AMT'
    end
    object Query3MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'KORINSDB."repairparts.DB".MEMO'
      Size = 255
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 56
    Top = 348
  end
end
