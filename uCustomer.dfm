object frmCustomer: TfrmCustomer
  Left = 196
  Top = 117
  BorderStyle = bsSingle
  Caption = #44256#44061#44288#47532
  ClientHeight = 519
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 186
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 700
      Height = 170
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CUSTOMER_ID'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#53076#46300
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTOMER_NAME'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#51060#47492
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELL_NO'
          Title.Alignment = taCenter
          Title.Caption = #55092#45824#51204#54868
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEL_NO'
          Title.Alignment = taCenter
          Title.Caption = #51204#54868#48264#54840
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUMIN_NO'
          Title.Alignment = taCenter
          Title.Caption = #49373#45380#50900#51068
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ZIP_CODE'
          Title.Alignment = taCenter
          Title.Caption = #50864#54200#48264#54840
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUSINESS_NO'
          Title.Alignment = taCenter
          Title.Caption = #49324#50629#51088#46321#47197#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPANY_NAME'
          Title.Alignment = taCenter
          Title.Caption = #49345#54840
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUS_TYPE'
          Title.Alignment = taCenter
          Title.Caption = #50629#53468
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUS_JONG'
          Title.Alignment = taCenter
          Title.Caption = #50629#51333
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Alignment = taCenter
          Title.Caption = 'e - mail'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMP_CHARGE'
          Title.Alignment = taCenter
          Title.Caption = #45812#45817#51649#50896
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAX_NO'
          Title.Alignment = taCenter
          Title.Caption = 'F A X'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HOMEPAGE'
          Title.Alignment = taCenter
          Title.Caption = #54856#54168#51060#51648
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS_SIGUN'
          Title.Alignment = taCenter
          Title.Caption = #51452#49548'('#49884#44400#44396')'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS_DETAIL'
          Title.Alignment = taCenter
          Title.Caption = #51452#49548'('#49345#49464')'
          Width = 200
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 474
    Width = 717
    Height = 45
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 624
      Top = 10
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkClose
    end
    object Button3: TButton
      Left = 376
      Top = 10
      Width = 75
      Height = 25
      Caption = #44256#44061#52628#44032
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 451
      Top = 10
      Width = 75
      Height = 25
      Caption = #44256#44061#51200#51109
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 526
      Top = 10
      Width = 75
      Height = 25
      Caption = #44256#44061#51648#50864#44592
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 186
    Width = 717
    Height = 288
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = ' '#44592#48376#51221#48372' '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 260
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 227
          Top = 39
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
        object SpeedButton2: TSpeedButton
          Left = 227
          Top = 110
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDD000000000000000D0FFFFFFFFFFFFF0D0FFFF44444F
            FFF0D0FFFFFFFFFFFFF0D0FFFF444444FFF0D0FFFFFFFFFFFFF0D0FFFFFFFFFF
            11F0D0F0000FFFFF11F0D0FFFFFFFFFFFFF0D000000000000000DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 561
          Top = 13
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
          OnClick = SpeedButton3Click
        end
        object DBEdit1: TDBEdit
          Left = 116
          Top = 15
          Width = 134
          Height = 21
          Hint = #51088#46041#51004#47196' '#48512#50668#46121#45768#45796
          DataField = 'CUSTOMER_ID'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 116
          Top = 39
          Width = 109
          Height = 21
          DataField = 'CUSTOMER_NAME'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 451
          Top = 13
          Width = 107
          Height = 21
          Hint = #39'YYYYMMDD'#39' '#54805#53468#47196' '#49707#51088#47564' 8'#51088#47532' '#51077#47141#54616#49901#49884#50836'.'
          DataField = 'JUMIN_NO'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnExit = DBEdit2Exit
        end
        object DBEdit6: TDBEdit
          Left = 116
          Top = 62
          Width = 134
          Height = 21
          DataField = 'CELL_NO'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 451
          Top = 37
          Width = 258
          Height = 21
          DataField = 'HOMEPAGE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 451
          Top = 108
          Width = 135
          Height = 21
          DataField = 'EMAIL'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 452
          Top = 84
          Width = 134
          Height = 21
          DataField = 'FAX_NO'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object DBEdit5: TDBEdit
          Left = 116
          Top = 87
          Width = 134
          Height = 21
          DataField = 'TEL_NO'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 115
          Top = 110
          Width = 110
          Height = 21
          DataField = 'ZIP_CODE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 115
          Top = 133
          Width = 236
          Height = 21
          DataField = 'ADDRESS_SIGUN'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
        end
        object DBEdit8: TDBEdit
          Left = 352
          Top = 133
          Width = 359
          Height = 21
          DataField = 'ADDRESS_DETAIL'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 11
        end
        object DBEdit4: TDBEdit
          Left = 15
          Top = 195
          Width = 194
          Height = 21
          DataField = 'COMPANY_NAME'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 12
        end
        object DBEdit14: TDBEdit
          Left = 451
          Top = 61
          Width = 135
          Height = 21
          DataField = 'EMP_CHARGE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 6
        end
        object Panel4: TPanel
          Left = 15
          Top = 39
          Width = 98
          Height = 21
          Caption = #44256#44061#51060#47492
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object Panel5: TPanel
          Left = 351
          Top = 13
          Width = 98
          Height = 21
          Caption = #49373#45380#50900#51068
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object Panel7: TPanel
          Left = 15
          Top = 86
          Width = 98
          Height = 21
          Caption = #51204#54868#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object Panel8: TPanel
          Left = 15
          Top = 62
          Width = 98
          Height = 21
          Caption = #55092#45824#51204#54868
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object Panel9: TPanel
          Left = 15
          Top = 13
          Width = 98
          Height = 23
          Caption = #44256#44061#53076#46300'('#54596#49688')'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object Panel6: TPanel
          Left = 351
          Top = 84
          Width = 98
          Height = 21
          Caption = 'F  A  X'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object Panel10: TPanel
          Left = 351
          Top = 108
          Width = 98
          Height = 21
          Caption = 'e - mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object Panel11: TPanel
          Left = 351
          Top = 37
          Width = 98
          Height = 21
          Caption = #54856#54168#51060#51648
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object Panel12: TPanel
          Left = 15
          Top = 110
          Width = 98
          Height = 21
          Caption = #50864#54200#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 24
        end
        object Panel13: TPanel
          Left = 15
          Top = 171
          Width = 194
          Height = 22
          Caption = #49345'      '#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 25
        end
        object Panel14: TPanel
          Left = 351
          Top = 61
          Width = 98
          Height = 21
          Caption = #45812#45817#51649#50896
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object Panel15: TPanel
          Left = 316
          Top = 171
          Width = 173
          Height = 22
          Caption = #50629'        '#53468
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object Panel19: TPanel
          Left = 490
          Top = 171
          Width = 219
          Height = 22
          Caption = #51333'        '#47785
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object Panel20: TPanel
          Left = 210
          Top = 171
          Width = 105
          Height = 22
          Caption = #49324#50629#51088#46321#47197#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 29
        end
        object Panel21: TPanel
          Left = 15
          Top = 133
          Width = 98
          Height = 21
          Caption = #51452'      '#49548
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 30
        end
        object DBEdit15: TDBEdit
          Left = 210
          Top = 195
          Width = 105
          Height = 21
          DataField = 'BUSINESS_NO'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 13
        end
        object DBEdit16: TDBEdit
          Left = 316
          Top = 195
          Width = 172
          Height = 21
          DataField = 'BUS_TYPE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 14
        end
        object DBEdit17: TDBEdit
          Left = 489
          Top = 194
          Width = 220
          Height = 21
          DataField = 'BUS_JONG'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 15
        end
        object Button2: TButton
          Left = 592
          Top = 226
          Width = 103
          Height = 25
          Caption = #44256#44061#51221#48372#52636#47141
          TabOrder = 31
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' '#52264#47049#51221#48372' '
      ImageIndex = 1
      object SpeedButton4: TSpeedButton
        Left = 441
        Top = 222
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
        Left = 467
        Top = 222
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
      object SpeedButton6: TSpeedButton
        Left = 363
        Top = 99
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
      object SpeedButton7: TSpeedButton
        Left = 681
        Top = 119
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
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 363
        Top = 195
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
        OnClick = SpeedButton8Click
      end
      object DBEdit11: TDBEdit
        Left = 92
        Top = 100
        Width = 100
        Height = 21
        DataField = 'BIKE_NUMBER'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 92
        Top = 151
        Width = 100
        Height = 21
        DataField = 'BIKE_TYPE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
      end
      object DBEdit19: TDBEdit
        Left = 92
        Top = 177
        Width = 100
        Height = 21
        DataField = 'BIKE_VIN'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
      end
      object DBEdit20: TDBEdit
        Left = 92
        Top = 202
        Width = 100
        Height = 21
        DataField = 'ENGINE_SIZE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 4
      end
      object DBEdit21: TDBEdit
        Left = 92
        Top = 126
        Width = 101
        Height = 21
        DataField = 'BIKE_YEAR'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
      end
      object DBEdit23: TDBEdit
        Left = 93
        Top = 225
        Width = 101
        Height = 21
        DataField = 'BIKE_COLOR'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 5
      end
      object DBEdit24: TDBEdit
        Left = 493
        Top = 96
        Width = 100
        Height = 21
        DataField = 'BIKE_INSURER'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 11
      end
      object DBEdit25: TDBEdit
        Left = 493
        Top = 120
        Width = 100
        Height = 21
        Hint = #39'YYYYMMDD'#39' '#54805#53468#47196' '#49707#51088#47564' 8'#51088#47532' '#51077#47141#54616#49901#49884#50836'.'
        DataField = 'INS_START'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = DBEdit25Exit
      end
      object DBEdit26: TDBEdit
        Left = 597
        Top = 120
        Width = 82
        Height = 21
        Hint = #39'YYYYMMDD'#39' '#54805#53468#47196' '#49707#51088#47564' 8'#51088#47532' '#51077#47141#54616#49901#49884#50836'.'
        DataField = 'INS_END'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = DBEdit26Exit
      end
      object DBImage1: TDBImage
        Left = 492
        Top = 144
        Width = 102
        Height = 93
        DataField = 'BIKE_PHOTO'
        DataSource = DataSource3
        TabOrder = 14
      end
      object Panel16: TPanel
        Left = 7
        Top = 99
        Width = 85
        Height = 23
        Caption = #52264#47049#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object Panel17: TPanel
        Left = 7
        Top = 149
        Width = 85
        Height = 23
        Caption = #52264#47049#50976#54805
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object Panel18: TPanel
        Left = 7
        Top = 174
        Width = 85
        Height = 23
        Caption = #52264#45824#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object Panel22: TPanel
        Left = 7
        Top = 199
        Width = 85
        Height = 23
        Caption = #50644#51652#53356#44592
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object Panel23: TPanel
        Left = 7
        Top = 124
        Width = 85
        Height = 23
        Caption = #52264#47049#50672#49885
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object Panel24: TPanel
        Left = 7
        Top = 224
        Width = 85
        Height = 23
        Caption = #52264#47049#49353#49345
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 24
      end
      object Panel25: TPanel
        Left = 406
        Top = 146
        Width = 85
        Height = 23
        Caption = #52264#47049#49324#51652
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 25
      end
      object Panel26: TPanel
        Left = 407
        Top = 95
        Width = 85
        Height = 23
        Caption = #48372#54744#54924#49324
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object Panel27: TPanel
        Left = 407
        Top = 120
        Width = 85
        Height = 23
        Caption = #48372#54744#44592#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object Button1: TButton
        Left = 610
        Top = 231
        Width = 94
        Height = 25
        Caption = #48372#54744#44204#51201#50836#52397
        TabOrder = 18
        OnClick = Button1Click
      end
      object DBEdit22: TDBEdit
        Left = 284
        Top = 99
        Width = 77
        Height = 21
        Hint = #39'YYYYMMDD'#39' '#54805#53468#47196' '#49707#51088#47564' 8'#51088#47532' '#51077#47141#54616#49901#49884#50836'.'
        DataField = 'BIKE_REG_DATE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 6
      end
      object DBEdit27: TDBEdit
        Left = 284
        Top = 125
        Width = 101
        Height = 21
        DataField = 'BIKE_MODEL_NAME'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 7
      end
      object Panel29: TPanel
        Left = 199
        Top = 99
        Width = 85
        Height = 23
        Caption = #52264#47049#46321#47197#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 28
      end
      object Panel30: TPanel
        Left = 199
        Top = 124
        Width = 85
        Height = 23
        Caption = #52264#47049#47784#45944#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 29
      end
      object DBEdit28: TDBEdit
        Left = 284
        Top = 149
        Width = 101
        Height = 21
        DataField = 'MILEAGE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 8
      end
      object Panel31: TPanel
        Left = 199
        Top = 149
        Width = 85
        Height = 23
        Caption = #50672#44036#50868#54665#44144#47532
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 30
      end
      object DBGrid3: TDBGrid
        Left = 8
        Top = 8
        Width = 689
        Height = 84
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 31
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #44404#47548
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SEQ'
            Title.Alignment = taCenter
            Title.Caption = #49692#48264
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_YEAR'
            Title.Alignment = taCenter
            Title.Caption = #50672#49885
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_MODEL_NAME'
            Title.Alignment = taCenter
            Title.Caption = #47784#45944#47749
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_NUMBER'
            Title.Alignment = taCenter
            Title.Caption = #48264#54840#54032
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_COLOR'
            Title.Alignment = taCenter
            Title.Caption = #49353#49345
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_TYPE'
            Title.Alignment = taCenter
            Title.Caption = #52264#47049#50976#54805
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_VIN'
            Title.Alignment = taCenter
            Title.Caption = #52264#45824#48264#54840
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENGINE_SIZE'
            Title.Alignment = taCenter
            Title.Caption = #50644#51652#53356#44592
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_INSURER'
            Title.Alignment = taCenter
            Title.Caption = #48372#54744#54924#49324
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INS_START'
            Title.Alignment = taCenter
            Title.Caption = #48372#54744#49884#51089#51068
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INS_END'
            Title.Alignment = taCenter
            Title.Caption = #48372#54744#51333#47308#51068
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_REG_DATE'
            Title.Alignment = taCenter
            Title.Caption = #52264#47049#46321#47197#51068
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MILEAGE'
            Title.Alignment = taCenter
            Title.Caption = #50868#54665#44144#47532
            Width = 80
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 609
        Top = 152
        Width = 95
        Height = 25
        Caption = #52264#47049#52628#44032
        TabOrder = 15
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 609
        Top = 177
        Width = 95
        Height = 25
        Caption = #52264#47049#51200#51109
        TabOrder = 16
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 609
        Top = 202
        Width = 95
        Height = 25
        Caption = #52264#47049#49325#51228
        TabOrder = 17
        OnClick = BitBtn4Click
      end
      object Panel32: TPanel
        Left = 199
        Top = 174
        Width = 85
        Height = 23
        Caption = #54788#50868#54665#44144#47532
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 32
      end
      object DBEdit29: TDBEdit
        Left = 284
        Top = 173
        Width = 101
        Height = 21
        DataField = 'CURMILE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 9
      end
      object Panel28: TPanel
        Left = 199
        Top = 199
        Width = 85
        Height = 23
        Caption = #50868#54665#44144#47532#49688#51221#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 33
      end
      object DBEdit30: TDBEdit
        Left = 284
        Top = 198
        Width = 77
        Height = 21
        DataField = 'CURMILE_DATE'
        DataSource = DataSource3
        ImeName = 'Microsoft IME 2003'
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = ' '#51221#48708#51060#47141' '
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 8
        Top = 16
        Width = 689
        Height = 201
        DataSource = DataSource2
        ImeName = 'Microsoft IME 2003'
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #44404#47548
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'REPAIR_DATE'
            Title.Alignment = taCenter
            Title.Caption = #51221#48708#51068#51088
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIKE_NUMBER'
            Title.Alignment = taCenter
            Title.Caption = #52264#47049#48264#54840
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPAIR_DESC'
            Title.Alignment = taCenter
            Title.Caption = #51221#48708#45236#50669
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPAIR_AMT'
            Title.Alignment = taCenter
            Title.Caption = #51221#48708#44552#50529
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TECHNICIAN'
            Title.Alignment = taCenter
            Title.Caption = #51221#48708#44592#49324
            Width = 87
            Visible = True
          end>
      end
      object Button6: TButton
        Left = 608
        Top = 226
        Width = 88
        Height = 25
        Caption = #51221#48708#44288#47532
        TabOrder = 1
        OnClick = Button6Click
      end
    end
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'CUSTOMER.db'
    Left = 536
    Top = 32
    object Table1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table1JUMIN_NO: TStringField
      FieldName = 'JUMIN_NO'
      Size = 14
    end
    object Table1CUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Size = 255
    end
    object Table1COMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Size = 255
    end
    object Table1TEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object Table1CELL_NO: TStringField
      FieldName = 'CELL_NO'
      Size = 50
    end
    object Table1ZIP_CODE: TStringField
      FieldName = 'ZIP_CODE'
      Size = 50
    end
    object Table1ADDRESS_DETAIL: TStringField
      FieldName = 'ADDRESS_DETAIL'
      Size = 255
    end
    object Table1ADDRESS_SIGUN: TStringField
      FieldName = 'ADDRESS_SIGUN'
      Size = 255
    end
    object Table1FAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 50
    end
    object Table1CUSTOMER_TYPE: TIntegerField
      FieldName = 'CUSTOMER_TYPE'
    end
    object Table1EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Table1HOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 255
    end
    object Table1EMP_CHARGE: TStringField
      FieldName = 'EMP_CHARGE'
      Size = 255
    end
    object Table1BUSINESS_NO: TStringField
      FieldName = 'BUSINESS_NO'
      Size = 50
    end
    object Table1BUS_TYPE: TStringField
      FieldName = 'BUS_TYPE'
      Size = 50
    end
    object Table1BUS_JONG: TStringField
      FieldName = 'BUS_JONG'
      Size = 50
    end
    object Table1BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
    object Table1BIKE_TYPE: TStringField
      FieldName = 'BIKE_TYPE'
      Size = 255
    end
    object Table1BIKE_VIN: TStringField
      FieldName = 'BIKE_VIN'
      Size = 100
    end
    object Table1ENGINE_SIZE: TIntegerField
      FieldName = 'ENGINE_SIZE'
    end
    object Table1BIKE_YEAR: TIntegerField
      FieldName = 'BIKE_YEAR'
    end
    object Table1BIKE_OIL_TYPE: TStringField
      FieldName = 'BIKE_OIL_TYPE'
      Size = 100
    end
    object Table1BIKE_COLOR: TStringField
      FieldName = 'BIKE_COLOR'
      Size = 100
    end
    object Table1BIKE_INSURER: TStringField
      FieldName = 'BIKE_INSURER'
      Size = 100
    end
    object Table1INS_START: TStringField
      FieldName = 'INS_START'
      Size = 8
    end
    object Table1INS_END: TStringField
      FieldName = 'INS_END'
      Size = 8
    end
    object Table1BIKE_PHOTO: TGraphicField
      FieldName = 'BIKE_PHOTO'
      BlobType = ftGraphic
    end
    object Table1BIKE_REG_DATE: TStringField
      FieldName = 'BIKE_REG_DATE'
      Size = 8
    end
    object Table1BIKE_MODEL_NAME: TStringField
      FieldName = 'BIKE_MODEL_NAME'
      Size = 100
    end
    object Table1MILEAGE: TIntegerField
      FieldName = 'MILEAGE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 568
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Jpeg(*.jpg)|*.jpg|Jpeg(*.jpeg)|*.jpeg'
    Left = 684
    Top = 241
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 652
    Top = 274
  end
  object Table2: TTable
    DatabaseName = 'KorInsDB'
    FieldDefs = <
      item
        Name = 'CUSTOMER_ID'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'REPAIR_DATE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'REPAIR_DESC'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'REPAIR_AMT'
        DataType = ftFloat
      end
      item
        Name = 'NO_RECEIVED_AMT'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVED_AMT'
        DataType = ftFloat
      end
      item
        Name = 'USED_PARTS_DESC'
        DataType = ftMemo
        Size = 240
      end
      item
        Name = 'TECHNICIAN'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IS_VAT'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MILEAGE'
        DataType = ftFloat
      end
      item
        Name = 'CASH_IN'
        DataType = ftFloat
      end
      item
        Name = 'CASH_DC'
        DataType = ftFloat
      end
      item
        Name = 'CARD_IN'
        DataType = ftFloat
      end
      item
        Name = 'CARD_DC'
        DataType = ftFloat
      end
      item
        Name = 'TRANSF_IN'
        DataType = ftFloat
      end
      item
        Name = 'TRANSF_DC'
        DataType = ftFloat
      end
      item
        Name = 'CASH_IN_DESC'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CARD_IN_DESC'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TRANSF_IN_DESC'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'BEFORE_IMG'
        DataType = ftGraphic
      end
      item
        Name = 'AFTER_IMG'
        DataType = ftGraphic
      end
      item
        Name = 'BIKE_NUMBER'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'Table2Index1'
        Fields = 'CUSTOMER_ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'CUSTOMER_ID'
    MasterFields = 'CUSTOMER_ID'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'REPAIRS.DB'
    Left = 652
    Top = 242
    object Table2CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table2SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table2REPAIR_DATE: TStringField
      FieldName = 'REPAIR_DATE'
      Size = 8
    end
    object Table2REPAIR_DESC: TStringField
      FieldName = 'REPAIR_DESC'
      Size = 255
    end
    object Table2REPAIR_AMT: TFloatField
      FieldName = 'REPAIR_AMT'
    end
    object Table2NO_RECEIVED_AMT: TFloatField
      FieldName = 'NO_RECEIVED_AMT'
    end
    object Table2RECEIVED_AMT: TFloatField
      FieldName = 'RECEIVED_AMT'
    end
    object Table2USED_PARTS_DESC: TMemoField
      FieldName = 'USED_PARTS_DESC'
      BlobType = ftMemo
      Size = 240
    end
    object Table2TECHNICIAN: TStringField
      FieldName = 'TECHNICIAN'
      Size = 100
    end
    object Table2IS_VAT: TStringField
      FieldName = 'IS_VAT'
      Size = 4
    end
    object Table2MILEAGE: TFloatField
      FieldName = 'MILEAGE'
    end
    object Table2CASH_IN: TFloatField
      FieldName = 'CASH_IN'
    end
    object Table2CASH_DC: TFloatField
      FieldName = 'CASH_DC'
    end
    object Table2CARD_IN: TFloatField
      FieldName = 'CARD_IN'
    end
    object Table2CARD_DC: TFloatField
      FieldName = 'CARD_DC'
    end
    object Table2TRANSF_IN: TFloatField
      FieldName = 'TRANSF_IN'
    end
    object Table2TRANSF_DC: TFloatField
      FieldName = 'TRANSF_DC'
    end
    object Table2CASH_IN_DESC: TStringField
      FieldName = 'CASH_IN_DESC'
      Size = 255
    end
    object Table2CARD_IN_DESC: TStringField
      FieldName = 'CARD_IN_DESC'
      Size = 255
    end
    object Table2TRANSF_IN_DESC: TStringField
      FieldName = 'TRANSF_IN_DESC'
      Size = 255
    end
    object Table2BEFORE_IMG: TGraphicField
      FieldName = 'BEFORE_IMG'
      BlobType = ftGraphic
    end
    object Table2AFTER_IMG: TGraphicField
      FieldName = 'AFTER_IMG'
      BlobType = ftGraphic
    end
    object Table2BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
  end
  object Table3: TTable
    DatabaseName = 'KorInsDB'
    IndexFieldNames = 'CUSTOMER_ID'
    MasterFields = 'CUSTOMER_ID'
    MasterSource = DataSource1
    TableName = 'CUST_BIKES.DB'
    Left = 364
    Top = 250
    object Table3CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table3SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table3BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
    object Table3BIKE_TYPE: TStringField
      FieldName = 'BIKE_TYPE'
      Size = 255
    end
    object Table3BIKE_VIN: TStringField
      FieldName = 'BIKE_VIN'
      Size = 100
    end
    object Table3ENGINE_SIZE: TStringField
      FieldName = 'ENGINE_SIZE'
      Size = 50
    end
    object Table3BIKE_YEAR: TStringField
      FieldName = 'BIKE_YEAR'
      Size = 4
    end
    object Table3BIKE_OIL_TYPE: TStringField
      FieldName = 'BIKE_OIL_TYPE'
      Size = 100
    end
    object Table3BIKE_COLOR: TStringField
      FieldName = 'BIKE_COLOR'
      Size = 100
    end
    object Table3BIKE_INSURER: TStringField
      FieldName = 'BIKE_INSURER'
      Size = 100
    end
    object Table3BIKE_PHOTO: TGraphicField
      FieldName = 'BIKE_PHOTO'
      BlobType = ftGraphic
    end
    object Table3INS_START: TStringField
      FieldName = 'INS_START'
      Size = 8
    end
    object Table3INS_END: TStringField
      FieldName = 'INS_END'
      Size = 8
    end
    object Table3BIKE_REG_DATE: TStringField
      FieldName = 'BIKE_REG_DATE'
      Size = 8
    end
    object Table3BIKE_MODEL_NAME: TStringField
      FieldName = 'BIKE_MODEL_NAME'
      Size = 100
    end
    object Table3MILEAGE: TIntegerField
      FieldName = 'MILEAGE'
    end
    object Table3CURMILE: TIntegerField
      FieldName = 'CURMILE'
    end
    object Table3CURMILE_DATE: TStringField
      FieldName = 'CURMILE_DATE'
      Size = 8
    end
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 396
    Top = 250
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'SELECT MAX(SEQ)+1 AS NSEQ FROM CUST_BIKES WHERE CUSTOMER_ID = :C' +
        'USTOMER_ID')
    Left = 364
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
      end>
  end
  object XD: TXMLDocument
    Left = 13
    Top = 480
    DOMVendorDesc = 'MSXML'
  end
end
