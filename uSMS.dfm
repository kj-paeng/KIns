object frmSMS: TfrmSMS
  Left = 251
  Top = 152
  BorderStyle = bsSingle
  Caption = #47928#51088#48372#45236#44592
  ClientHeight = 626
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 757
    Height = 584
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = ' '#44592#48376#51221#48372' '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 749
        Height = 557
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 353
          Top = 43
          Width = 390
          Height = 12
          Caption = '* '#51204#49569#54616#44592' '#51204#50640' '#50948' '#49324#51060#53944#47484' '#48169#47928#54616#50668' '#52649#51204#54616#49884#44256' '#49324#50857#54616#49901#49884#50836' !!! '
        end
        object Label3: TLabel
          Left = 119
          Top = 361
          Width = 222
          Height = 12
          Caption = #51649#51217#51077#47141#49884' '#48264#54840' '#50668#47084#44060#47484' '#51077#47141#54624' '#46412#45716' '
        end
        object Label4: TLabel
          Left = 119
          Top = 375
          Width = 186
          Height = 12
          Caption = #44396#48516#47928#51088'( | )'#49324#50857#54616#49884#47732' '#46121#45768#45796'.'
        end
        object Label5: TLabel
          Left = 119
          Top = 389
          Width = 150
          Height = 12
          Caption = #50696') 0102223333|0102223334'
        end
        object Panel4: TPanel
          Left = 15
          Top = 39
          Width = 98
          Height = 21
          Caption = #51204#49569#44256#44061'PWD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 15
          Top = 86
          Width = 98
          Height = 21
          Caption = #48156#49888#51088#51060#47492
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Panel8: TPanel
          Left = 15
          Top = 62
          Width = 98
          Height = 21
          Caption = #48156#49888#51088#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Panel9: TPanel
          Left = 15
          Top = 13
          Width = 98
          Height = 23
          Caption = #51204#49569#44256#44061'ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Panel11: TPanel
          Left = 15
          Top = 111
          Width = 98
          Height = 21
          Caption = #49688#49888#51088#47785#47197
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Panel12: TPanel
          Left = 15
          Top = 337
          Width = 98
          Height = 21
          Caption = #49688#49888#51088' '#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Panel21: TPanel
          Left = 15
          Top = 433
          Width = 98
          Height = 21
          Caption = #47700#49884#51648
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object esMsg: TMemo
          Left = 117
          Top = 432
          Width = 212
          Height = 123
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object esID: TEdit
          Left = 120
          Top = 16
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
        end
        object esPW: TEdit
          Left = 120
          Top = 37
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
        end
        object esSendNum: TEdit
          Left = 120
          Top = 60
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
        end
        object esSendName: TEdit
          Left = 120
          Top = 84
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 11
        end
        object esRcvNum: TEdit
          Left = 117
          Top = 337
          Width = 212
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 12
        end
        object Panel2: TPanel
          Left = 15
          Top = 408
          Width = 98
          Height = 21
          Caption = #47700#49884#51648#51228#47785
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object esSubject: TEdit
          Left = 117
          Top = 408
          Width = 212
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 14
        end
        object cboURL: TComboBox
          Left = 452
          Top = 15
          Width = 289
          Height = 20
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          ItemIndex = 0
          TabOrder = 15
          Text = 'http://munjahae.com/SendMSG/biz_send.asp'
          Items.Strings = (
            'http://munjahae.com/SendMSG/biz_send.asp')
        end
        object Panel3: TPanel
          Left = 351
          Top = 13
          Width = 98
          Height = 23
          Caption = #51204#49569#49436#48260'URL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object Panel5: TPanel
          Left = 119
          Top = 108
          Width = 618
          Height = 223
          TabOrder = 17
          object Label1: TLabel
            Left = 439
            Top = 64
            Width = 14
            Height = 13
            AutoSize = False
            Caption = #49464
            Visible = False
          end
          object SpeedButton6: TSpeedButton
            Left = 474
            Top = 34
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
          object edtName: TEdit
            Left = 107
            Top = 35
            Width = 158
            Height = 20
            ImeName = #54620#44397#50612'('#54620#44544')'
            TabOrder = 0
          end
          object Panel6: TPanel
            Left = 8
            Top = 34
            Width = 98
            Height = 23
            Caption = #44256#44061#51060#47492
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object rgCategory: TRadioGroup
            Left = 108
            Top = -1
            Width = 497
            Height = 35
            Color = clBtnFace
            Columns = 3
            Ctl3D = True
            ItemIndex = 0
            Items.Strings = (
              #51204#52404#44256#44061
              #48276#50948#51648#51221
              #49688#49888#51088#48264#54840#51649#51217#51077#47141)
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 2
            OnClick = rgCategoryClick
          end
          object Panel13: TPanel
            Left = 8
            Top = 6
            Width = 98
            Height = 23
            Caption = #48156#49888#45824#49345#48276#50948
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Panel14: TPanel
            Left = 8
            Top = 83
            Width = 98
            Height = 23
            Caption = #45812#45817#51088#48324
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object Panel15: TPanel
            Left = 296
            Top = 59
            Width = 98
            Height = 23
            Caption = #50672' '#47161' '#48324
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
          end
          object Panel16: TPanel
            Left = 8
            Top = 59
            Width = 98
            Height = 23
            Caption = #51452#49548'('#49884#44400#44396')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object edtAddr: TEdit
            Left = 107
            Top = 60
            Width = 158
            Height = 20
            ImeName = #54620#44397#50612'('#54620#44544')'
            TabOrder = 7
          end
          object cboEmp: TComboBox
            Left = 108
            Top = 84
            Width = 157
            Height = 20
            Style = csDropDownList
            ImeName = 'Microsoft IME 2003'
            ItemHeight = 12
            TabOrder = 8
            Items.Strings = (
              #51204#52404)
          end
          object cboEqual: TComboBox
            Left = 472
            Top = 60
            Width = 132
            Height = 20
            Style = csDropDownList
            ImeName = 'Microsoft IME 2003'
            ItemHeight = 12
            ItemIndex = 0
            TabOrder = 9
            Text = '= ('#54644#45817#50672#47161#47564')'
            Visible = False
            Items.Strings = (
              '= ('#54644#45817#50672#47161#47564')'
              '>= ('#49464' '#51060#49345')'
              '<= ('#49464' '#51060#54616')')
          end
          object edtAge: TMaskEdit
            Left = 396
            Top = 60
            Width = 29
            Height = 20
            EditMask = '00'
            ImeName = 'Microsoft IME 2003'
            MaxLength = 2
            TabOrder = 10
            Text = '  '
            Visible = False
          end
          object btnQuery: TButton
            Left = 533
            Top = 83
            Width = 70
            Height = 25
            Caption = #51312'   '#54924
            TabOrder = 11
            OnClick = btnQueryClick
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 113
            Width = 599
            Height = 104
            DataSource = DataSource1
            ImeName = #54620#44397#50612'('#54620#44544')'
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
            ReadOnly = True
            TabOrder = 12
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = #44404#47548#52404
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CUSTOMER_ID'
                Title.Caption = #50672#49885
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CUSTOMER_NAME'
                Title.Caption = #44256#44061#51060#47492
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELL_NO'
                Title.Alignment = taCenter
                Title.Caption = #55092#45824#51204#54868
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JUMIN_NO'
                Title.Alignment = taCenter
                Title.Caption = #49373#45380#50900#51068
                Width = 129
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TEL_NO'
                Title.Alignment = taCenter
                Title.Caption = #51204#54868#48264#54840
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ADDRESS_SIGUN'
                Title.Caption = #51452#49548'('#49884#44400#44396')'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ADDRESS_DETAIL'
                Title.Caption = #49345#49464#51452#49548
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMP_CHARGE'
                Title.Caption = #45812#45817#51649#50896
                Width = 70
                Visible = True
              end>
          end
          object Panel19: TPanel
            Left = 295
            Top = 34
            Width = 98
            Height = 23
            Caption = #49373#45380#50900#51068#48324
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object eDOB: TEdit
            Left = 396
            Top = 35
            Width = 77
            Height = 20
            ImeName = #54620#44397#50612'('#54620#44544')'
            TabOrder = 14
          end
        end
        object Button3: TButton
          Left = 344
          Top = 408
          Width = 33
          Height = 25
          Hint = #49440#53469
          Caption = '<'
          TabOrder = 18
          OnClick = Button3Click
        end
        object DBGrid2: TDBGrid
          Left = 384
          Top = 360
          Width = 193
          Height = 185
          DataSource = dsSMS
          ImeName = 'Microsoft IME 2003'
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 19
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #44404#47548#52404
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'GRP'
              Title.Alignment = taCenter
              Title.Caption = #51452#51228
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITLE'
              Title.Alignment = taCenter
              Title.Caption = #51228#47785
              Width = 106
              Visible = True
            end>
        end
        object Button4: TButton
          Left = 345
          Top = 464
          Width = 33
          Height = 25
          Hint = #52628#44032
          Caption = #52628#44032
          TabOrder = 20
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 345
          Top = 490
          Width = 33
          Height = 25
          Hint = #49688#51221
          Caption = #49688#51221
          TabOrder = 21
          OnClick = Button5Click
        end
        object DBMemo1: TDBMemo
          Left = 584
          Top = 360
          Width = 153
          Height = 177
          DataField = 'MSG'
          DataSource = dsSMS
          ImeName = 'Microsoft IME 2003'
          TabOrder = 22
        end
        object Button6: TButton
          Left = 345
          Top = 516
          Width = 33
          Height = 25
          Hint = #49325#51228
          Caption = #49325#51228
          TabOrder = 23
          OnClick = Button6Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = ' '#48156#49569#44208#44284' '
      ImageIndex = 2
      object pBar: TProgressBar
        Left = 136
        Top = 25
        Width = 561
        Height = 20
        TabOrder = 0
      end
      object Panel10: TPanel
        Left = 31
        Top = 25
        Width = 98
        Height = 21
        Caption = #51204#49569#49345#53468
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object SGrid: TStringGrid
        Left = 136
        Top = 56
        Width = 561
        Height = 457
        ColCount = 3
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ScrollBars = ssVertical
        TabOrder = 2
        ColWidths = (
          97
          127
          309)
      end
      object Panel18: TPanel
        Left = 31
        Top = 57
        Width = 98
        Height = 21
        Caption = #51204#49569#44208#44284
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object mResult: TMemo
        Left = 32
        Top = 80
        Width = 97
        Height = 25
        ImeName = 'Microsoft IME 2003'
        TabOrder = 4
        Visible = False
      end
    end
  end
  object Panel17: TPanel
    Left = 0
    Top = 584
    Width = 757
    Height = 42
    Align = alClient
    TabOrder = 1
    object Button2: TButton
      Left = 557
      Top = 7
      Width = 97
      Height = 27
      Caption = #47928#51088#51204#49569#49892#54665
      TabOrder = 0
      OnClick = Button2Click
    end
    object BitBtn7: TBitBtn
      Left = 659
      Top = 9
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT distinct emp_charge from customer')
    Left = 356
    Top = 212
    object Query2emp_charge: TStringField
      FieldName = 'emp_charge'
      Origin = 'KORINSDB."customer.DB".EMP_CHARGE'
      Size = 255
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT * from customer')
    Left = 620
    Top = 284
    object Query1JUMIN_NO: TStringField
      FieldName = 'JUMIN_NO'
      Origin = 'KORINSDB."customer.DB".JUMIN_NO'
      Size = 14
    end
    object Query1CUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object Query1COMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'KORINSDB."customer.DB".COMPANY_NAME'
      Size = 255
    end
    object Query1TEL_NO: TStringField
      FieldName = 'TEL_NO'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object Query1CELL_NO: TStringField
      FieldName = 'CELL_NO'
      Origin = 'KORINSDB."customer.DB".CELL_NO'
      Size = 50
    end
    object Query1ZIP_CODE: TStringField
      FieldName = 'ZIP_CODE'
      Origin = 'KORINSDB."customer.DB".ZIP_CODE'
      Size = 50
    end
    object Query1ADDRESS_DETAIL: TStringField
      FieldName = 'ADDRESS_DETAIL'
      Origin = 'KORINSDB."customer.DB".ADDRESS_DETAIL'
      Size = 255
    end
    object Query1ADDRESS_SIGUN: TStringField
      FieldName = 'ADDRESS_SIGUN'
      Origin = 'KORINSDB."customer.DB".ADDRESS_SIGUN'
      Size = 255
    end
    object Query1FAX_NO: TStringField
      FieldName = 'FAX_NO'
      Origin = 'KORINSDB."customer.DB".FAX_NO'
      Size = 50
    end
    object Query1EMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'KORINSDB."customer.DB".EMAIL'
      Size = 100
    end
    object Query1HOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'KORINSDB."customer.DB".HOMEPAGE'
      Size = 255
    end
    object Query1EMP_CHARGE: TStringField
      FieldName = 'EMP_CHARGE'
      Origin = 'KORINSDB."customer.DB".EMP_CHARGE'
      Size = 255
    end
    object Query1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query1BUSINESS_NO: TStringField
      FieldName = 'BUSINESS_NO'
      Origin = 'KORINSDB."customer.DB".BUSINESS_NO'
      Size = 50
    end
    object Query1BUS_TYPE: TStringField
      FieldName = 'BUS_TYPE'
      Origin = 'KORINSDB."customer.DB".BUS_TYPE'
      Size = 50
    end
    object Query1BUS_JONG: TStringField
      FieldName = 'BUS_JONG'
      Origin = 'KORINSDB."customer.DB".BUS_JONG'
      Size = 50
    end
    object Query1CUSTOMER_TYPE: TIntegerField
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_TYPE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 648
    Top = 284
  end
  object HTTP: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; KOINS)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 512
    Top = 568
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'SMS.db'
    Left = 396
    Top = 551
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
  object dsSMS: TDataSource
    DataSet = Table1
    Left = 428
    Top = 551
  end
end
