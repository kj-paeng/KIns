object frmSellBike: TfrmSellBike
  Left = 223
  Top = 206
  Width = 757
  Height = 465
  Caption = #52264#47049#47588#46020#44288#47532
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 431
    Align = alClient
    TabOrder = 0
    object Panel16: TPanel
      Left = 7
      Top = 379
      Width = 98
      Height = 23
      Caption = #44144#47000#51068#51088
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel23: TPanel
      Left = 7
      Top = 404
      Width = 98
      Height = 23
      Caption = #52264#47049'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel18: TPanel
      Left = 7
      Top = 503
      Width = 98
      Height = 23
      Caption = #47700#47784#49324#54637
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Panel22: TPanel
      Left = 7
      Top = 453
      Width = 98
      Height = 23
      Caption = #54032#47588#44032
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit28: TDBEdit
      Left = 108
      Top = 380
      Width = 100
      Height = 21
      DataField = 'BUY_DATE'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object DBEdit32: TDBEdit
      Left = 108
      Top = 406
      Width = 101
      Height = 21
      DataField = 'AUTO_NO'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object DBEdit30: TDBEdit
      Left = 108
      Top = 505
      Width = 100
      Height = 21
      DataField = 'CONDITION'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit31: TDBEdit
      Left = 108
      Top = 455
      Width = 100
      Height = 21
      DataField = 'BUY_PRICE'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object Panel26: TPanel
      Left = 7
      Top = 478
      Width = 98
      Height = 23
      Caption = #48120#49688#44552
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Panel30: TPanel
      Left = 7
      Top = 429
      Width = 98
      Height = 23
      Caption = #44396#51077#51088'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit38: TDBEdit
      Left = 108
      Top = 430
      Width = 101
      Height = 21
      DataField = 'BUYER_ID'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object DBEdit34: TDBEdit
      Left = 107
      Top = 480
      Width = 100
      Height = 21
      DataField = 'NO_GET_AMT'
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 543
      Top = 536
      Width = 84
      Height = 25
      Caption = #44144#47000#52628#44032
      TabOrder = 12
    end
    object BitBtn3: TBitBtn
      Left = 628
      Top = 536
      Width = 84
      Height = 25
      Caption = #48320#44221#51200#51109
      TabOrder = 13
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 713
      Top = 536
      Width = 84
      Height = 25
      Caption = #44144#47000#51648#50864#44592
      TabOrder = 14
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 800
      Top = 536
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 15
      Kind = bkClose
    end
    object DBGrid1: TDBGrid
      Left = 9
      Top = 35
      Width = 436
      Height = 162
      DataSource = DataSource00
      ImeName = 'Microsoft IME 2003'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'buy_date'
          Title.Alignment = taCenter
          Title.Caption = #44144#47000#51068#51088
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'auto_no'
          Title.Alignment = taCenter
          Title.Caption = #52264#47049'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'built_year'
          Title.Alignment = taCenter
          Title.Caption = #50672#49885
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'model'
          Title.Alignment = taCenter
          Title.Caption = #47784#45944#47749
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'plate_no'
          Title.Alignment = taCenter
          Title.Caption = #48264#54840#54032
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'buyer_id'
          Title.Alignment = taCenter
          Title.Caption = #44396#47588#44256#44061'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'customer_name'
          Title.Alignment = taCenter
          Title.Caption = #44396#47588#44256#44061
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tel_no'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#50672#46973#52376
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'buyer_id'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'buy_price'
          Title.Alignment = taCenter
          Title.Caption = #44396#51077#44552#50529
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'no_get_amt'
          Title.Alignment = taCenter
          Title.Caption = #48120#49688#44552
          Width = 93
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 10
      Top = 10
      Width = 98
      Height = 23
      Caption = #52264#47049#44144#47000#47785#47197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object GroupBox3: TGroupBox
      Left = 223
      Top = 374
      Width = 249
      Height = 153
      Caption = #44396#47588#51088' '#51221#48372
      TabOrder = 18
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 65
        Height = 13
        AutoSize = False
        Caption = #44396#47588#51088'ID'
      end
      object Label8: TLabel
        Left = 16
        Top = 50
        Width = 65
        Height = 13
        AutoSize = False
        Caption = #44396#47588#51088#51060#47492
      end
      object Label9: TLabel
        Left = 17
        Top = 76
        Width = 73
        Height = 13
        AutoSize = False
        Caption = #50672#46973#52376
      end
      object DBEdit6: TDBEdit
        Left = 87
        Top = 20
        Width = 94
        Height = 21
        DataField = 'BUYER_ID'
        ImeName = 'Microsoft IME 2003'
        ReadOnly = True
        TabOrder = 0
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 87
        Top = 45
        Width = 145
        Height = 21
        Color = clYellow
        DataField = 'CUST_NAME'
        Enabled = False
        ImeName = 'Microsoft IME 2003'
        ReadOnly = True
        TabOrder = 1
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 87
        Top = 69
        Width = 146
        Height = 21
        Color = clYellow
        DataField = 'CUST_TEL'
        Enabled = False
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
      end
      object Button3: TButton
        Left = 48
        Top = 112
        Width = 139
        Height = 25
        Caption = #44256#44061#47785#47197#50640#49436' '#49440#53469
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 496
      Top = 373
      Width = 249
      Height = 153
      Caption = #52264#47049#51221#48372
      TabOrder = 19
      object Label7: TLabel
        Left = 21
        Top = 22
        Width = 70
        Height = 13
        AutoSize = False
        Caption = #52264#47049'ID'
      end
      object Label5: TLabel
        Left = 20
        Top = 49
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #47784#45944#47749
      end
      object Label6: TLabel
        Left = 21
        Top = 77
        Width = 84
        Height = 13
        AutoSize = False
        Caption = #51228#51089#50672#46020
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 20
        Width = 111
        Height = 21
        DataField = 'AUTO_NO'
        ImeName = 'Microsoft IME 2003'
        ReadOnly = True
        TabOrder = 0
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 79
        Top = 46
        Width = 154
        Height = 21
        Color = clYellow
        DataField = 'MODEL'
        Enabled = False
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 79
        Top = 71
        Width = 82
        Height = 21
        Color = clYellow
        DataField = 'BUILT_YEAR'
        Enabled = False
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 453
      Top = 30
      Width = 428
      Height = 166
      TabOrder = 20
      object Panel12: TPanel
        Left = 8
        Top = 110
        Width = 98
        Height = 23
        Caption = #55092#45824#51204#54868
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 108
        Top = 111
        Width = 100
        Height = 21
        DataField = 'cell_no'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 108
        Top = 87
        Width = 100
        Height = 21
        DataField = 'tel_no'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
      end
      object Panel11: TPanel
        Left = 8
        Top = 86
        Width = 98
        Height = 23
        Caption = #51204#54868#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 108
        Top = 63
        Width = 100
        Height = 21
        DataField = 'jumin_no'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 4
      end
      object Panel10: TPanel
        Left = 8
        Top = 62
        Width = 98
        Height = 23
        Caption = #49373#45380#50900#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 108
        Top = 39
        Width = 100
        Height = 21
        DataField = 'customer_name'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 6
      end
      object Panel9: TPanel
        Left = 8
        Top = 38
        Width = 98
        Height = 23
        Caption = #44396#51077#44256#44061#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object Panel7: TPanel
        Left = 7
        Top = 13
        Width = 98
        Height = 23
        Caption = #52264#47049#44396#51077#44256#44061
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Panel19: TPanel
        Left = 222
        Top = 135
        Width = 98
        Height = 23
        Caption = #47700#47784#49324#54637
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 320
        Top = 135
        Width = 101
        Height = 21
        DataField = 'condition'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 10
      end
      object DBEdit16: TDBEdit
        Left = 321
        Top = 111
        Width = 100
        Height = 21
        DataField = 'built_company'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 11
      end
      object Panel17: TPanel
        Left = 222
        Top = 110
        Width = 98
        Height = 23
        Caption = #51228#51089#54924#49324
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object Panel15: TPanel
        Left = 222
        Top = 86
        Width = 98
        Height = 23
        Caption = #48264#54840#54032
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 321
        Top = 87
        Width = 100
        Height = 21
        DataField = 'plate_no'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 321
        Top = 63
        Width = 100
        Height = 21
        DataField = 'model'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 15
      end
      object Panel14: TPanel
        Left = 222
        Top = 62
        Width = 98
        Height = 23
        Caption = #47784#45944#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object Panel13: TPanel
        Left = 222
        Top = 38
        Width = 98
        Height = 23
        Caption = #50672#49885
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit14: TDBEdit
        Left = 321
        Top = 39
        Width = 100
        Height = 21
        DataField = 'built_year'
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        TabOrder = 18
      end
      object Panel8: TPanel
        Left = 222
        Top = 13
        Width = 98
        Height = 23
        Caption = #52264#47049#51221#48372
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
    end
    object Panel2: TPanel
      Left = 454
      Top = 10
      Width = 105
      Height = 23
      Caption = #52264#47049' '#48143' '#44256#44061#51221#48372
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 747
      Height = 429
      Align = alClient
      TabOrder = 22
      object BitBtn1: TBitBtn
        Left = 399
        Top = 344
        Width = 84
        Height = 25
        Caption = #44144#47000#52628#44032
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn6: TBitBtn
        Left = 484
        Top = 344
        Width = 84
        Height = 25
        Caption = #48320#44221#51200#51109
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object BitBtn7: TBitBtn
        Left = 569
        Top = 344
        Width = 84
        Height = 25
        Caption = #44144#47000#51648#50864#44592
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn8: TBitBtn
        Left = 656
        Top = 344
        Width = 75
        Height = 25
        Caption = #45803#44592'(&C)'
        TabOrder = 3
        Kind = bkClose
      end
      object DBGrid2: TDBGrid
        Left = 9
        Top = 35
        Width = 728
        Height = 162
        DataSource = DataSource00
        ImeName = 'Microsoft IME 2003'
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #44404#47548
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'buy_date'
            Title.Alignment = taCenter
            Title.Caption = #44144#47000#51068#51088
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'auto_no'
            Title.Alignment = taCenter
            Title.Caption = #52264#47049'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'built_year'
            Title.Alignment = taCenter
            Title.Caption = #50672#49885
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'model'
            Title.Alignment = taCenter
            Title.Caption = #47784#45944#47749
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'plate_no'
            Title.Alignment = taCenter
            Title.Caption = #48264#54840#54032
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'buyer_id'
            Title.Alignment = taCenter
            Title.Caption = #44396#47588#44256#44061'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'customer_name'
            Title.Alignment = taCenter
            Title.Caption = #44396#47588#44256#44061
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel_no'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061#50672#46973#52376
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'buyer_id'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'buy_price'
            Title.Alignment = taCenter
            Title.Caption = #44396#51077#44552#50529
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'no_get_amt'
            Title.Alignment = taCenter
            Title.Caption = #48120#49688#44552
            Width = 89
            Visible = True
          end>
      end
      object Panel27: TPanel
        Left = 10
        Top = 10
        Width = 98
        Height = 23
        Caption = #52264#47049#44144#47000#47785#47197
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox6: TGroupBox
        Left = 5
        Top = 222
        Width = 732
        Height = 107
        TabOrder = 6
        object SpeedButton6: TSpeedButton
          Left = 193
          Top = 16
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
        object DBEdit23: TDBEdit
          Left = 116
          Top = 40
          Width = 141
          Height = 21
          DataField = 'BUYER'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          ReadOnly = True
          TabOrder = 0
        end
        object Panel32: TPanel
          Left = 16
          Top = 38
          Width = 98
          Height = 23
          Caption = #44396#51077#44256#44061
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 16
          Top = 14
          Width = 98
          Height = 23
          Caption = #44144#47000#51068#51088
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Panel5: TPanel
          Left = 16
          Top = 63
          Width = 98
          Height = 23
          Caption = #52264#47049
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Panel21: TPanel
          Left = 311
          Top = 15
          Width = 98
          Height = 23
          Caption = #54032#47588#44032
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Panel24: TPanel
          Left = 311
          Top = 39
          Width = 98
          Height = 23
          Caption = #48120#49688#44552
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Panel20: TPanel
          Left = 311
          Top = 63
          Width = 98
          Height = 23
          Caption = #47700#47784#49324#54637
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit1: TDBEdit
          Left = 116
          Top = 16
          Width = 75
          Height = 21
          DataField = 'BUY_DATE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object DBEdit2: TDBEdit
          Left = 116
          Top = 63
          Width = 141
          Height = 21
          DataField = 'AUTO_NAME'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 411
          Top = 16
          Width = 134
          Height = 21
          DataField = 'BUY_PRICE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
        end
        object DBEdit4: TDBEdit
          Left = 411
          Top = 40
          Width = 134
          Height = 21
          DataField = 'NO_GET_AMT'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 411
          Top = 63
          Width = 300
          Height = 21
          DataField = 'CONDITION'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 11
        end
        object Button1: TButton
          Left = 257
          Top = 41
          Width = 38
          Height = 21
          Caption = #51312#54924
          TabOrder = 12
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 257
          Top = 64
          Width = 38
          Height = 21
          Caption = #51312#54924
          TabOrder = 13
          OnClick = Button2Click
        end
      end
      object Panel40: TPanel
        Left = 6
        Top = 202
        Width = 105
        Height = 23
        Caption = #52264#47049#44144#47000#45236#50669
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object qry00: TQuery
    AfterScroll = qry00AfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select a.seq, a.auto_no, a.buy_date, a.buyer_id, a.buy_price,'
      
        'a.condition, a.no_get_amt, b.customer_name, b.jumin_no, b.tel_no' +
        ', '
      
        'b.cell_no, c.model, c.built_year, c.plate_no, c.built_company fr' +
        'om tradebike as a, customer as b, bike as c '
      'where a.buyer_id = b.customer_id'
      'and a.auto_no = c.seq '
      'order by a.buy_date desc')
    Left = 328
    Top = 8
    object qry00seq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."tradebike.DB".SEQ'
    end
    object qry00auto_no: TIntegerField
      FieldName = 'auto_no'
      Origin = 'KORINSDB."tradebike.DB".AUTO_NO'
    end
    object qry00buy_date: TStringField
      FieldName = 'buy_date'
      Origin = 'KORINSDB."tradebike.DB".BUY_DATE'
      Size = 8
    end
    object qry00buyer_id: TStringField
      FieldName = 'buyer_id'
      Origin = 'KORINSDB."tradebike.DB".BUYER_ID'
      Size = 255
    end
    object qry00buy_price: TFloatField
      FieldName = 'buy_price'
      Origin = 'KORINSDB."tradebike.DB".BUY_PRICE'
    end
    object qry00condition: TStringField
      FieldName = 'condition'
      Origin = 'KORINSDB."tradebike.DB".CONDITION'
      Size = 255
    end
    object qry00no_get_amt: TFloatField
      FieldName = 'no_get_amt'
      Origin = 'KORINSDB."tradebike.DB".NO_GET_AMT'
    end
    object qry00customer_name: TStringField
      FieldName = 'customer_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object qry00jumin_no: TStringField
      FieldName = 'jumin_no'
      Origin = 'KORINSDB."customer.DB".JUMIN_NO'
      Size = 14
    end
    object qry00tel_no: TStringField
      FieldName = 'tel_no'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object qry00cell_no: TStringField
      FieldName = 'cell_no'
      Origin = 'KORINSDB."customer.DB".CELL_NO'
      Size = 50
    end
    object qry00model: TStringField
      FieldName = 'model'
      Origin = 'KORINSDB."bike.DB".MODEL'
      Size = 50
    end
    object qry00built_year: TStringField
      FieldName = 'built_year'
      Origin = 'KORINSDB."bike.DB".BUILT_YEAR'
      Size = 4
    end
    object qry00plate_no: TStringField
      FieldName = 'plate_no'
      Origin = 'KORINSDB."bike.DB".PLATE_NO'
      Size = 100
    end
    object qry00built_company: TStringField
      FieldName = 'built_company'
      Origin = 'KORINSDB."bike.DB".BUILT_COMPANY'
      Size = 30
    end
  end
  object DataSource00: TDataSource
    DataSet = qry00
    Left = 360
    Top = 8
  end
  object Table1: TTable
    AfterPost = Table1AfterPost
    DatabaseName = 'KorInsDB'
    TableName = 'TRADEBIKE.DB'
    Left = 49
    Top = 337
    object Table1SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Table1AUTO_NO: TIntegerField
      FieldName = 'AUTO_NO'
    end
    object Table1BUY_DATE: TStringField
      FieldName = 'BUY_DATE'
      Size = 8
    end
    object Table1BUYER_ID: TStringField
      FieldName = 'BUYER_ID'
      Size = 255
    end
    object Table1BUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      currency = True
    end
    object Table1CONDITION: TStringField
      FieldName = 'CONDITION'
      Size = 255
    end
    object Table1NO_GET_AMT: TFloatField
      FieldName = 'NO_GET_AMT'
      currency = True
    end
    object Table1SELLER_ID: TStringField
      FieldName = 'SELLER_ID'
      Size = 255
    end
    object Table1BUYER: TStringField
      FieldKind = fkLookup
      FieldName = 'BUYER'
      LookupDataSet = qryCust
      LookupKeyFields = 'customer_id'
      LookupResultField = 'customer_name'
      KeyFields = 'BUYER_ID'
      Size = 255
      Lookup = True
    end
    object Table1AUTO_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'AUTO_NAME'
      LookupDataSet = qryCar
      LookupKeyFields = 'seq'
      LookupResultField = 'bike_name'
      KeyFields = 'AUTO_NO'
      Size = 255
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 77
    Top = 337
  end
  object qrySeq: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT MAX(SEQ) + 1 AS NSEQ FROM TRADEBIKE')
    Left = 17
    Top = 337
  end
  object qryCust: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select customer_id, customer_name from customer')
    Left = 9
    Top = 257
  end
  object qryCar: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select seq, built_year + '#39' '#39' + model as bike_name from bike')
    Left = 9
    Top = 281
    object qryCarseq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."bike.DB".SEQ'
    end
    object qryCarbike_name: TStringField
      FieldName = 'bike_name'
      Origin = 'KORINSDB."bike.DB".BUILT_YEAR'
      Size = 55
    end
  end
end
