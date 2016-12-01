object frmRepairCust: TfrmRepairCust
  Left = 153
  Top = 17
  Width = 1000
  Height = 710
  Caption = #51221#48708#44288#47532
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 37
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 227
      Top = 8
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
    object DBEdit3: TDBEdit
      Left = 116
      Top = 8
      Width = 109
      Height = 20
      DataField = 'CUSTOMER_NAME'
      DataSource = dsCust
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 15
      Top = 8
      Width = 98
      Height = 21
      Caption = #44256#44061#51060#47492
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel8: TPanel
      Left = 685
      Top = 8
      Width = 98
      Height = 21
      Caption = #55092#45824#51204#54868
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 786
      Top = 8
      Width = 134
      Height = 20
      DataField = 'CELL_NO'
      DataSource = dsCust
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object Panel7: TPanel
      Left = 359
      Top = 8
      Width = 98
      Height = 21
      Caption = #51204#54868#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 460
      Top = 9
      Width = 134
      Height = 20
      DataField = 'TEL_NO'
      DataSource = dsCust
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 620
    Width = 992
    Height = 56
    Align = alBottom
    TabOrder = 1
    object BitBtn7: TBitBtn
      Left = 904
      Top = 16
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      OnClick = BitBtn7Click
      Kind = bkClose
    end
    object BitBtn8: TBitBtn
      Left = 13
      Top = 16
      Width = 126
      Height = 25
      Caption = #51221#48708#47749#49464#49436' '#52636#47141
      TabOrder = 1
      Visible = False
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 792
      Top = 16
      Width = 107
      Height = 25
      Caption = #44204#51201#49436' '#52636#47141
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 684
      Top = 16
      Width = 106
      Height = 25
      Caption = #49464#44552#44228#49328#49436' '#52636#47141
      TabOrder = 3
      OnClick = BitBtn10Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 142
    Width = 992
    Height = 324
    Align = alClient
    TabOrder = 2
    object SpeedButton4: TSpeedButton
      Left = 115
      Top = 164
      Width = 24
      Height = 24
      Hint = #49324#51652#52628#44032
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        10000300000000020000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FDE7B1863734ECE39CE39524AF75E9C73FF7F
        FF7FFF7FFF7FFF7FFF7FFF7F396708211042D65A39633967F75E734E08219452
        FF7FFF7FFF7FFF7FFF7F18632925B556FF7FFF7F6B6DE768DE7FFF7F5A6B4A29
        3146FF7FFF7FFF7F7B6F29253967FF7FFF7FDE7FA560005C9C7BFF7FFF7FBD77
        4A29D65AFF7FFF7FCE39734EFF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        39674A29BD777B6F6B2DDE7BFF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        FF7FCE39F75EF75EEF3DDE7FDE7FDE7FDE7FBD7FC664215C7B7BDE7FDE7FDE7F
        DE7F9452524AB5565246EF71A560C664C664C6642160005CA560C664C664A560
        4A6D3963CE39B55652466B6D005C215C215C215C005C005C215C215C215C005C
        C6681863EF39F75EEF3DDE7F9C7B9C7B9C7B7B7BA564215C397B9C7B9C7B9C7B
        DE7F734E524A9C736B2D9C73FF7FFF7FFF7FFF7FC664215C9C7BFF7FFF7FFF7F
        FF7FAD351863FF7F10421042FF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        D65A6B2DDE7BFF7FBD774A29B556FF7FFF7FDE7FA560005C9C7BFF7FFF7F5A6B
        08213967FF7FFF7FFF7F7B6F4A293146BD77FF7F4A6DC668DE7FDE7BB5560821
        D65AFF7FFF7FFF7FFF7FFF7FBD77EF3D6B2D104294529452524A8C318C315A6B
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F94525246524A94523967FF7FFF7F
        FF7FFF7FFF7F}
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 139
      Top = 164
      Width = 24
      Height = 24
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        10000300000000020000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7F5A6B524AAD35AD35AD35AD35524A5A6BFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F10422925524A39679C739C735A6B524A2925EF3D
        DE7BFF7FFF7FFF7FFF7FAD35AD35BD77FF7FFF7FFF7FFF7FFF7FFF7FBD77CE39
        8C31FF7FFF7FFF7F94528C31DE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        8C31734EFF7F9C734A297B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        9C734A299C73F75ECE39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FEF3DD65A734A7352AD710865086508650865086508650865086508650865
        AD6DB5563146EF3DF75E8464005C005C005C005C005C005C005C005C005C005C
        84643963CE391042F75EE768215C21602160216021602160216021602160215C
        E7681863EF399452524ADE7F9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B
        DE7F734E734E18638C31FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FAD351863DE7B6B2DF75EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        18634A29DE7BFF7F396708217B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F
        08211863FF7FFF7FFF7F94522925F75EFF7FFF7FFF7FFF7FFF7FFF7FF75E2925
        734EFF7FFF7FFF7FFF7FFF7FF75E6B2DAD35524AD65AD65A734EAD356B2DF75E
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1863734E10421042734EF75EDE7BFF7F
        FF7FFF7FFF7F}
      OnClick = SpeedButton5Click
    end
    object SpeedButton3: TSpeedButton
      Left = 386
      Top = 164
      Width = 24
      Height = 24
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        10000300000000020000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7F5A6B524AAD35AD35AD35AD35524A5A6BFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F10422925524A39679C739C735A6B524A2925EF3D
        DE7BFF7FFF7FFF7FFF7FAD35AD35BD77FF7FFF7FFF7FFF7FFF7FFF7FBD77CE39
        8C31FF7FFF7FFF7F94528C31DE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        8C31734EFF7F9C734A297B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        9C734A299C73F75ECE39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FEF3DD65A734A7352AD710865086508650865086508650865086508650865
        AD6DB5563146EF3DF75E8464005C005C005C005C005C005C005C005C005C005C
        84643963CE391042F75EE768215C21602160216021602160216021602160215C
        E7681863EF399452524ADE7F9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B9C7B
        DE7F734E734E18638C31FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FAD351863DE7B6B2DF75EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        18634A29DE7BFF7F396708217B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F
        08211863FF7FFF7FFF7F94522925F75EFF7FFF7FFF7FFF7FFF7FFF7FF75E2925
        734EFF7FFF7FFF7FFF7FFF7FF75E6B2DAD35524AD65AD65A734EAD356B2DF75E
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1863734E10421042734EF75EDE7BFF7F
        FF7FFF7FFF7F}
      OnClick = SpeedButton3Click
    end
    object SpeedButton2: TSpeedButton
      Left = 361
      Top = 164
      Width = 24
      Height = 24
      Hint = #49324#51652#52628#44032
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        10000300000000020000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FDE7B1863734ECE39CE39524AF75E9C73FF7F
        FF7FFF7FFF7FFF7FFF7FFF7F396708211042D65A39633967F75E734E08219452
        FF7FFF7FFF7FFF7FFF7F18632925B556FF7FFF7F6B6DE768DE7FFF7F5A6B4A29
        3146FF7FFF7FFF7F7B6F29253967FF7FFF7FDE7FA560005C9C7BFF7FFF7FBD77
        4A29D65AFF7FFF7FCE39734EFF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        39674A29BD777B6F6B2DDE7BFF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        FF7FCE39F75EF75EEF3DDE7FDE7FDE7FDE7FBD7FC664215C7B7BDE7FDE7FDE7F
        DE7F9452524AB5565246EF71A560C664C664C6642160005CA560C664C664A560
        4A6D3963CE39B55652466B6D005C215C215C215C005C005C215C215C215C005C
        C6681863EF39F75EEF3DDE7F9C7B9C7B9C7B7B7BA564215C397B9C7B9C7B9C7B
        DE7F734E524A9C736B2D9C73FF7FFF7FFF7FFF7FC664215C9C7BFF7FFF7FFF7F
        FF7FAD351863FF7F10421042FF7FFF7FFF7FDE7FC664215C9C7BFF7FFF7FFF7F
        D65A6B2DDE7BFF7FBD774A29B556FF7FFF7FDE7FA560005C9C7BFF7FFF7F5A6B
        08213967FF7FFF7FFF7F7B6F4A293146BD77FF7F4A6DC668DE7FDE7BB5560821
        D65AFF7FFF7FFF7FFF7FFF7FBD77EF3D6B2D104294529452524A8C318C315A6B
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F94525246524A94523967FF7FFF7F
        FF7FFF7FFF7F}
      OnClick = SpeedButton2Click
    end
    object SpeedButton6: TSpeedButton
      Left = 203
      Top = 114
      Width = 23
      Height = 22
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
      OnClick = SpeedButton6Click
    end
    object Panel6: TPanel
      Left = 613
      Top = 111
      Width = 98
      Height = 21
      Caption = #51221#48708#44552#50529
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel9: TPanel
      Left = 15
      Top = 113
      Width = 98
      Height = 23
      Caption = #51221#48708#51068#51088
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel11: TPanel
      Left = 815
      Top = 131
      Width = 66
      Height = 21
      Caption = #54788#44552#54624#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel12: TPanel
      Left = 614
      Top = 267
      Width = 96
      Height = 21
      Caption = #48512#44032#49464#50668#48512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Panel15: TPanel
      Left = 260
      Top = 113
      Width = 97
      Height = 23
      Caption = #45812#45817#44592#49324
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 115
      Top = 114
      Width = 86
      Height = 20
      Hint = #39'YYYYMMDD'#39' '#54805#53468#47196' '#49707#51088#47564' 8'#51088#47532' '#51077#47141#54616#49901#49884#50836'.'
      DataField = 'REPAIR_DATE'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = DBEdit1Exit
    end
    object DBEdit14: TDBEdit
      Left = 712
      Top = 174
      Width = 97
      Height = 20
      DataField = 'CARD_IN'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 12
    end
    object DBEdit18: TDBEdit
      Left = 884
      Top = 175
      Width = 93
      Height = 20
      DataField = 'CARD_DC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 13
    end
    object DBEdit20: TDBEdit
      Left = 712
      Top = 216
      Width = 97
      Height = 20
      DataField = 'TRANSF_IN'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 15
    end
    object DBEdit22: TDBEdit
      Left = 888
      Top = 216
      Width = 89
      Height = 20
      DataField = 'TRANSF_DC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 16
    end
    object DBEdit23: TDBEdit
      Left = 712
      Top = 153
      Width = 265
      Height = 20
      DataField = 'CASH_IN_DESC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 11
    end
    object DBEdit24: TDBEdit
      Left = 712
      Top = 195
      Width = 265
      Height = 20
      DataField = 'CARD_IN_DESC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 14
    end
    object DBEdit25: TDBEdit
      Left = 712
      Top = 237
      Width = 265
      Height = 20
      DataField = 'TRANSF_IN_DESC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 17
    end
    object DBImage1: TDBImage
      Left = 114
      Top = 192
      Width = 136
      Height = 113
      DataField = 'BEFORE_IMG'
      DataSource = DataSource1
      TabOrder = 18
    end
    object DBImage2: TDBImage
      Left = 359
      Top = 192
      Width = 145
      Height = 113
      DataField = 'AFTER_IMG'
      DataSource = DataSource1
      TabOrder = 19
    end
    object DBEdit26: TDBEdit
      Left = 116
      Top = 139
      Width = 387
      Height = 20
      DataField = 'REPAIR_DESC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
    end
    object Panel22: TPanel
      Left = 15
      Top = 138
      Width = 98
      Height = 23
      Caption = #51221#48708#45236#50669
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object DBEdit27: TDBEdit
      Left = 712
      Top = 110
      Width = 265
      Height = 20
      DataField = 'REPAIR_AMT'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 8
    end
    object DBEdit28: TDBEdit
      Left = 359
      Top = 114
      Width = 144
      Height = 20
      DataField = 'TECHNICIAN'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
    object DBEdit30: TDBEdit
      Left = 712
      Top = 132
      Width = 97
      Height = 20
      DataField = 'CASH_IN'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 9
    end
    object DBEdit31: TDBEdit
      Left = 883
      Top = 132
      Width = 94
      Height = 20
      DataField = 'CASH_DC'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 10
    end
    object Panel10: TPanel
      Left = 613
      Top = 132
      Width = 98
      Height = 21
      Caption = #54788#44552#51077#44552#50529
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object Panel24: TPanel
      Left = 613
      Top = 153
      Width = 98
      Height = 21
      Caption = #54788#44552#51077#44552#47700#47784
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object Panel25: TPanel
      Left = 613
      Top = 174
      Width = 98
      Height = 21
      Caption = #52852#46300#51077#44552#50529
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object Panel26: TPanel
      Left = 613
      Top = 195
      Width = 98
      Height = 21
      Caption = #52852#46300#51077#44552#47700#47784
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object Panel27: TPanel
      Left = 815
      Top = 174
      Width = 66
      Height = 20
      Caption = #52852#46300#54624#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 25
    end
    object Panel21: TPanel
      Left = 613
      Top = 216
      Width = 98
      Height = 21
      Caption = #44228#51340#51077#44552#50529
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object Panel28: TPanel
      Left = 613
      Top = 237
      Width = 98
      Height = 21
      Caption = #44228#51340#51077#44552#47700#47784
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object Panel29: TPanel
      Left = 815
      Top = 216
      Width = 66
      Height = 20
      Caption = #44228#51340#54624#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 28
    end
    object Panel30: TPanel
      Left = 15
      Top = 163
      Width = 98
      Height = 23
      Caption = #51221#48708' '#51204' '#49324#51652
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
    object Panel31: TPanel
      Left = 260
      Top = 163
      Width = 97
      Height = 23
      Caption = #51221#48708' '#54980' '#49324#51652
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object BitBtn1: TBitBtn
      Left = 730
      Top = 297
      Width = 82
      Height = 25
      Caption = #51221#48708#52628#44032
      TabOrder = 31
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 813
      Top = 297
      Width = 82
      Height = 25
      Caption = #51221#48708#51200#51109
      TabOrder = 32
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 896
      Top = 297
      Width = 82
      Height = 25
      Caption = #51221#48708#49325#51228
      TabOrder = 33
      OnClick = BitBtn3Click
    end
    object DBGrid0: TDBGrid
      Left = 13
      Top = 8
      Width = 965
      Height = 97
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 34
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'SEQ'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_DATE'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#51068#51088
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_DESC'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#45236#50669
          Width = 534
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TECHNICIAN'
          Title.Alignment = taCenter
          Title.Caption = #45812#45817#44592#49324
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAIR_AMT'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#44552#50529#54633#44228
          Width = 100
          Visible = True
        end>
    end
    object rdgIsVAT: TDBRadioGroup
      Left = 713
      Top = 258
      Width = 264
      Height = 33
      Columns = 3
      DataField = 'IS_VAT'
      DataSource = DataSource1
      Items.Strings = (
        #54252#54632
        #48324#46020
        #50630#51020)
      TabOrder = 35
    end
  end
  object Panel13: TPanel
    Left = 0
    Top = 466
    Width = 992
    Height = 154
    Align = alBottom
    TabOrder = 3
    object BitBtn4: TBitBtn
      Left = 728
      Top = 123
      Width = 82
      Height = 25
      Caption = #48512#54408#45236#50669#52628#44032
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 811
      Top = 123
      Width = 82
      Height = 25
      Caption = #48512#54408#45236#50669#49688#51221
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 894
      Top = 123
      Width = 82
      Height = 25
      Caption = #48512#54408#45236#50669#49325#51228
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object Panel14: TPanel
      Left = 7
      Top = 8
      Width = 122
      Height = 22
      Alignment = taLeftJustify
      Caption = '     '#49324#50857' '#48512#54408' '#45236#50669
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 19
      Top = 33
      Width = 957
      Height = 84
      DataSource = DataSource2
      ImeName = 'Microsoft IME 2003'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PART_SEQ'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PART_NAME'
          Title.Alignment = taCenter
          Title.Caption = #48512#54408#51060#47492
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PART_COUNT'
          Title.Alignment = taCenter
          Title.Caption = #49688#47049
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIT_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #45800#44032
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LABOUR_CHARGE'
          Title.Alignment = taCenter
          Title.Caption = #44277#51076
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DISCOUNT'
          Title.Alignment = taCenter
          Title.Caption = #54624#51064
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIST_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #54032#47588#44032
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAT'
          Title.Alignment = taCenter
          Title.Caption = #48512#44032#49464
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_AMT'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#44552#50529
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEMO'
          Title.Alignment = taCenter
          Title.Caption = #47700#47784
          Width = 209
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 37
    Width = 992
    Height = 105
    Align = alTop
    TabOrder = 4
    object DBGrid00: TDBGrid
      Left = 13
      Top = 8
      Width = 965
      Height = 85
      DataSource = DataSource00
      ImeName = 'Microsoft IME 2003'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'seq'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_number'
          Title.Alignment = taCenter
          Title.Caption = #52264#47049#48264#54840
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_model_name'
          Title.Alignment = taCenter
          Title.Caption = #47784#45944#47749
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_vin'
          Title.Alignment = taCenter
          Title.Caption = #52264#45824#48264#54840
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_year'
          Title.Alignment = taCenter
          Title.Caption = #50672#49885
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'engine_size'
          Title.Alignment = taCenter
          Title.Caption = #50644#51652#53356#44592
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_reg_date'
          Title.Alignment = taCenter
          Title.Caption = #46321#47197#51068
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mileage'
          Title.Alignment = taCenter
          Title.Caption = #50868#54665#44144#47532
          Width = 115
          Visible = True
        end>
    end
  end
  object Table1: TTable
    BeforePost = Table1BeforePost
    DatabaseName = 'KorInsDB'
    TableName = 'REPAIRS.DB'
    Left = 17
    Top = 338
    object Table1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table1SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table1REPAIR_DATE: TStringField
      FieldName = 'REPAIR_DATE'
      Size = 8
    end
    object Table1REPAIR_DESC: TStringField
      FieldName = 'REPAIR_DESC'
      Size = 255
    end
    object Table1REPAIR_AMT: TFloatField
      FieldName = 'REPAIR_AMT'
      currency = True
    end
    object Table1NO_RECEIVED_AMT: TFloatField
      FieldName = 'NO_RECEIVED_AMT'
      currency = True
    end
    object Table1RECEIVED_AMT: TFloatField
      FieldName = 'RECEIVED_AMT'
      currency = True
    end
    object Table1USED_PARTS_DESC: TMemoField
      FieldName = 'USED_PARTS_DESC'
      BlobType = ftMemo
      Size = 240
    end
    object Table1TECHNICIAN: TStringField
      FieldName = 'TECHNICIAN'
      Size = 100
    end
    object Table1IS_VAT: TStringField
      FieldName = 'IS_VAT'
      Size = 4
    end
    object Table1MILEAGE: TFloatField
      FieldName = 'MILEAGE'
    end
    object Table1CASH_IN: TFloatField
      FieldName = 'CASH_IN'
      currency = True
    end
    object Table1CASH_DC: TFloatField
      FieldName = 'CASH_DC'
      currency = True
    end
    object Table1CARD_IN: TFloatField
      FieldName = 'CARD_IN'
      currency = True
    end
    object Table1CARD_DC: TFloatField
      FieldName = 'CARD_DC'
      currency = True
    end
    object Table1TRANSF_IN: TFloatField
      FieldName = 'TRANSF_IN'
      currency = True
    end
    object Table1TRANSF_DC: TFloatField
      FieldName = 'TRANSF_DC'
      currency = True
    end
    object Table1CASH_IN_DESC: TStringField
      FieldName = 'CASH_IN_DESC'
      Size = 255
    end
    object Table1CARD_IN_DESC: TStringField
      FieldName = 'CARD_IN_DESC'
      Size = 255
    end
    object Table1TRANSF_IN_DESC: TStringField
      FieldName = 'TRANSF_IN_DESC'
      Size = 255
    end
    object Table1BEFORE_IMG: TGraphicField
      FieldName = 'BEFORE_IMG'
      BlobType = ftGraphic
    end
    object Table1AFTER_IMG: TGraphicField
      FieldName = 'AFTER_IMG'
      BlobType = ftGraphic
    end
    object Table1BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 46
    Top = 338
  end
  object qryCust: TQuery
    AfterScroll = qryCustAfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select customer_id, customer_name, cell_no, address_sigun, '
      'address_detail, tel_no, company_name, business_no, '
      'bus_type, bus_jong '
      'from customer '
      'where customer_id = :customer_id')
    Left = 904
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptUnknown
      end>
    object qryCustcustomer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_ID'
      Size = 255
    end
    object qryCustcustomer_name: TStringField
      FieldName = 'customer_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object qryCustcell_no: TStringField
      FieldName = 'cell_no'
      Origin = 'KORINSDB."customer.DB".CELL_NO'
      Size = 50
    end
    object qryCusttel_no: TStringField
      FieldName = 'tel_no'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object qryCustaddress_sigun: TStringField
      FieldName = 'address_sigun'
      Origin = 'KORINSDB."customer.DB".ADDRESS_SIGUN'
      Size = 255
    end
    object qryCustaddress_detail: TStringField
      FieldName = 'address_detail'
      Origin = 'KORINSDB."customer.DB".ADDRESS_DETAIL'
      Size = 255
    end
    object qryCustcompany_name: TStringField
      FieldName = 'company_name'
      Origin = 'KORINSDB."customer.DB".COMPANY_NAME'
      Size = 255
    end
    object qryCustbusiness_no: TStringField
      FieldName = 'business_no'
      Origin = 'KORINSDB."customer.DB".BUSINESS_NO'
      Size = 50
    end
    object qryCustbus_type: TStringField
      FieldName = 'bus_type'
      Origin = 'KORINSDB."customer.DB".BUS_TYPE'
      Size = 50
    end
    object qryCustbus_jong: TStringField
      FieldName = 'bus_jong'
      Origin = 'KORINSDB."customer.DB".BUS_JONG'
      Size = 50
    end
  end
  object dsCust: TDataSource
    DataSet = qryCust
    Left = 936
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Jpeg(*.jpg)|*.jpg|Jpeg(*.jpeg)|*.jpeg'
    Left = 164
    Top = 263
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Jpeg(*.jpg)|*.jpg|Jpeg(*.jpeg)|*.jpeg'
    Left = 410
    Top = 263
  end
  object Table2: TTable
    DatabaseName = 'KorInsDB'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUSTOMER_ID'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PART_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PART_NAME'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PART_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNIT_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LABOUR_CHARGE'
        DataType = ftFloat
      end
      item
        Name = 'DISCOUNT'
        DataType = ftFloat
      end
      item
        Name = 'LIST_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_AMT'
        DataType = ftFloat
      end
      item
        Name = 'MEMO'
        DataType = ftString
        Size = 255
      end>
    IndexFieldNames = 'SEQ;CUSTOMER_ID'
    MasterFields = 'SEQ;CUSTOMER_ID'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'REPAIRPARTS.DB'
    Left = 33
    Top = 494
    object Table2SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table2CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table2PART_SEQ: TIntegerField
      FieldName = 'PART_SEQ'
    end
    object Table2PART_NAME: TStringField
      FieldName = 'PART_NAME'
      Size = 255
    end
    object Table2PART_COUNT: TFloatField
      FieldName = 'PART_COUNT'
    end
    object Table2UNIT_PRICE: TFloatField
      FieldName = 'UNIT_PRICE'
      currency = True
    end
    object Table2LABOUR_CHARGE: TFloatField
      FieldName = 'LABOUR_CHARGE'
      currency = True
    end
    object Table2DISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      currency = True
    end
    object Table2LIST_PRICE: TFloatField
      FieldName = 'LIST_PRICE'
      currency = True
    end
    object Table2VAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object Table2TOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
      currency = True
    end
    object Table2MEMO: TStringField
      FieldName = 'MEMO'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 65
    Top = 494
  end
  object qrySeq1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'SELECT MAX(SEQ) + 1 AS NSEQ FROM REPAIRS WHERE CUSTOMER_ID = :CU' +
        'STOMER_ID')
    Left = 16
    Top = 309
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUSTOMER_ID'
        ParamType = ptUnknown
      end>
  end
  object Query00: TQuery
    AfterScroll = Query00AfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select customer_id, seq, bike_number, bike_type, '
      'bike_vin, engine_size, bike_year, bike_model_name,'
      'bike_reg_date, mileage  '
      'from cust_bikes '
      'where customer_id = :customer_id')
    Left = 904
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptInput
      end>
    object Query00customer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."cust_bikes.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query00seq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."cust_bikes.DB".SEQ'
    end
    object Query00bike_number: TStringField
      FieldName = 'bike_number'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_NUMBER'
      Size = 255
    end
    object Query00bike_type: TStringField
      FieldName = 'bike_type'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_TYPE'
      Size = 255
    end
    object Query00bike_vin: TStringField
      FieldName = 'bike_vin'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_VIN'
      Size = 100
    end
    object Query00engine_size: TStringField
      FieldName = 'engine_size'
      Origin = 'KORINSDB."cust_bikes.DB".ENGINE_SIZE'
      Size = 50
    end
    object Query00bike_year: TStringField
      FieldName = 'bike_year'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_YEAR'
      Size = 4
    end
    object Query00bike_model_name: TStringField
      FieldName = 'bike_model_name'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_MODEL_NAME'
      Size = 100
    end
    object Query00bike_reg_date: TStringField
      FieldName = 'bike_reg_date'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_REG_DATE'
      Size = 8
    end
    object Query00mileage: TIntegerField
      FieldName = 'mileage'
      Origin = 'KORINSDB."cust_bikes.DB".MILEAGE'
    end
  end
  object DataSource00: TDataSource
    DataSet = Query00
    Left = 936
    Top = 72
  end
end
