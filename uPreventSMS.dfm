object frmPreventSMS: TfrmPreventSMS
  Left = 159
  Top = 141
  BorderStyle = bsSingle
  Caption = #50696#48169#51221#48708#44256#44061#53685#51648
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
        object Panel21: TPanel
          Left = 15
          Top = 386
          Width = 98
          Height = 21
          Caption = #47700#49884#51648
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object esMsg: TMemo
          Left = 117
          Top = 385
          Width = 212
          Height = 160
          ImeName = 'Microsoft IME 2003'
          TabOrder = 6
        end
        object esID: TEdit
          Left = 120
          Top = 16
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object esPW: TEdit
          Left = 120
          Top = 37
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
        end
        object esSendNum: TEdit
          Left = 120
          Top = 60
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
        end
        object esSendName: TEdit
          Left = 120
          Top = 84
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
        end
        object Panel2: TPanel
          Left = 15
          Top = 363
          Width = 98
          Height = 21
          Caption = #47700#49884#51648#51228#47785
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object esSubject: TEdit
          Left = 117
          Top = 363
          Width = 212
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 12
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
          TabOrder = 13
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
          TabOrder = 14
        end
        object Panel5: TPanel
          Left = 119
          Top = 108
          Width = 618
          Height = 245
          TabOrder = 15
          object Label1: TLabel
            Left = 516
            Top = 67
            Width = 24
            Height = 12
            Caption = '('#51068')'
          end
          object Panel6: TPanel
            Left = 8
            Top = 34
            Width = 98
            Height = 23
            Caption = #50696#48169#51221#48708#51092#50668#51068
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel13: TPanel
            Left = 8
            Top = 6
            Width = 98
            Height = 23
            Caption = #50696#48169#51221#48708#54637#47785
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object btnQuery: TButton
            Left = 528
            Top = 7
            Width = 70
            Height = 25
            Caption = #51312'   '#54924
            TabOrder = 2
            OnClick = btnQueryClick
          end
          object cboPrCode: TComboBox
            Left = 112
            Top = 8
            Width = 177
            Height = 20
            Style = csDropDownList
            ImeName = 'Microsoft IME 2003'
            ItemHeight = 12
            TabOrder = 3
          end
          object ePeriod: TEdit
            Left = 480
            Top = 58
            Width = 33
            Height = 20
            ImeName = 'Microsoft IME 2003'
            TabOrder = 4
          end
          object rgPeriod: TRadioGroup
            Left = 112
            Top = 32
            Width = 361
            Height = 49
            Columns = 5
            ItemIndex = 3
            Items.Strings = (
              '1'#51068#51204
              '2'#51068#51204
              '3'#51068#51204
              '7'#51068#51204
              '10'#51068#51204
              '15'#51068#51204
              '20'#51068#51204
              '30'#51068#51204
              #51076#51032#51648#51221)
            TabOrder = 5
          end
          object SG: TStringGrid
            Left = 8
            Top = 88
            Width = 601
            Height = 145
            ColCount = 8
            DefaultRowHeight = 16
            FixedCols = 0
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ScrollBars = ssVertical
            TabOrder = 6
            ColWidths = (
              61
              76
              81
              72
              81
              50
              79
              39)
          end
        end
        object Button3: TButton
          Left = 344
          Top = 363
          Width = 33
          Height = 25
          Hint = #49440#53469
          Caption = '<'
          TabOrder = 16
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
          TabOrder = 17
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
          TabOrder = 18
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 345
          Top = 490
          Width = 33
          Height = 25
          Hint = #49688#51221
          Caption = #49688#51221
          TabOrder = 19
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
          TabOrder = 20
        end
        object Button6: TButton
          Left = 345
          Top = 516
          Width = 33
          Height = 25
          Hint = #49325#51228
          Caption = #49325#51228
          TabOrder = 21
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
      Top = 8
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
      'SELECT prname from preventcode')
    Left = 415
    Top = 138
    object Query2prname: TStringField
      FieldName = 'prname'
      Origin = 'KORINSDB."preventcode.DB".PRNAME'
      Size = 255
    end
  end
  object qryPrevention: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select a.prcode, a.prdate, a.cust_id, b.prname '
      'from prevention as a, preventcode as b'
      'where a.prcode = b.seq')
    Left = 496
    Top = 284
    object qryPreventionprcode: TIntegerField
      FieldName = 'prcode'
      Origin = 'KORINSDB."prevention.DB".PRCODE'
    end
    object qryPreventionprdate: TStringField
      FieldName = 'prdate'
      Origin = 'KORINSDB."prevention.DB".PRDATE'
      Size = 8
    end
    object qryPreventioncust_id: TStringField
      FieldName = 'cust_id'
      Origin = 'KORINSDB."prevention.DB".CUST_ID'
      Size = 255
    end
    object qryPreventionprname: TStringField
      FieldName = 'prname'
      Origin = 'KORINSDB."preventcode.DB".PRNAME'
      Size = 255
    end
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
    Left = 520
    Top = 592
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
  object qryCust: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select  customer_id,'
      'customer_name,'
      'tel_no,'
      'cell_no,'
      'address_sigun,'
      'address_detail '
      'from customer '
      'where customer_id = :customer_id')
    Left = 528
    Top = 284
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptInput
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
    object qryCusttel_no: TStringField
      FieldName = 'tel_no'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object qryCustcell_no: TStringField
      FieldName = 'cell_no'
      Origin = 'KORINSDB."customer.DB".CELL_NO'
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
  end
end
