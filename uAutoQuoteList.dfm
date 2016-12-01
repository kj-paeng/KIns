object frmAutoQuoteList: TfrmAutoQuoteList
  Left = 186
  Top = 106
  BorderStyle = bsSingle
  Caption = #51088#46041#52264' '#44204#51201#47785#47197' '#48372#44592
  ClientHeight = 571
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SGrid: TStringGrid
    Left = 0
    Top = 73
    Width = 664
    Height = 362
    Align = alClient
    ColCount = 14
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 0
    OnSelectCell = SGridSelectCell
    ColWidths = (
      49
      78
      81
      83
      110
      131
      92
      106
      74
      74
      64
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 523
    Width = 914
    Height = 48
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 816
      Top = 10
      Width = 83
      Height = 28
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 73
    Align = alTop
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 912
      Height = 71
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #50672#50900' '#44592#51456
        object Label2: TLabel
          Left = 13
          Top = 12
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #50672#46020
        end
        object Label3: TLabel
          Left = 176
          Top = 13
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #50900
        end
        object lblStatus: TLabel
          Left = 336
          Top = 12
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #49345#53468#48324' '#48372#44592
        end
        object cboYear: TComboBox
          Left = 57
          Top = 8
          Width = 88
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          TabOrder = 0
        end
        object cboMonth: TComboBox
          Left = 217
          Top = 8
          Width = 80
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = #51204#52404#48372#44592
          Items.Strings = (
            #51204#52404#48372#44592
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
        object cboStatus: TComboBox
          Left = 417
          Top = 7
          Width = 96
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = #51204#52404#48372#44592
          Items.Strings = (
            #51204#52404#48372#44592
            #49888#52397#51473
            #44032#51077#50756#47308
            #44144#51208
            #54644#51648)
        end
        object btnQuery: TBitBtn
          Left = 807
          Top = 6
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 3
          OnClick = btnQueryClick
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
        object CheckBox1: TCheckBox
          Left = 592
          Top = 8
          Width = 97
          Height = 17
          Caption = #44204#51201#49436' '#48372#44592
          TabOrder = 4
          Visible = False
          OnClick = CheckBox1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = #49888#52397#51068#44592#51456
        ImageIndex = 1
        object Label4: TLabel
          Left = 16
          Top = 14
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #49888#52397#51068
        end
        object Label5: TLabel
          Left = 188
          Top = 12
          Width = 89
          Height = 13
          AutoSize = False
          Caption = '~'
        end
        object dtAppSDate: TDateTimePicker
          Left = 78
          Top = 8
          Width = 102
          Height = 21
          Date = 41151.175035798610000000
          Time = 41151.175035798610000000
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object dtAppEDate: TDateTimePicker
          Left = 203
          Top = 8
          Width = 102
          Height = 21
          Date = 41151.175035798610000000
          Time = 41151.175035798610000000
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 807
          Top = 6
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 2
          OnClick = btnQueryClick
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
      end
    end
  end
  object pnlViewer: TPanel
    Left = 664
    Top = 73
    Width = 250
    Height = 362
    Align = alRight
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 161
      Top = 15
      Width = 75
      Height = 25
      Caption = #52636#47141
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 49
      Width = 248
      Height = 312
      Align = alBottom
      TabOrder = 1
      object imgViewer: TImage
        Left = 1
        Top = 1
        Width = 246
        Height = 310
        Align = alClient
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 435
    Width = 914
    Height = 88
    Align = alBottom
    TabOrder = 4
    object Label1: TLabel
      Left = 13
      Top = 15
      Width = 85
      Height = 13
      AutoSize = False
      Caption = #44032#51077#51088' '#51060#47492
    end
    object Label6: TLabel
      Left = 613
      Top = 16
      Width = 87
      Height = 13
      AutoSize = False
      Caption = #52264#47049#47749
    end
    object Label7: TLabel
      Left = 614
      Top = 39
      Width = 82
      Height = 13
      AutoSize = False
      Caption = #50672#49885
    end
    object Label8: TLabel
      Left = 613
      Top = 61
      Width = 84
      Height = 13
      AutoSize = False
      Caption = #52264#47049#48264#54840
    end
    object Label9: TLabel
      Left = 13
      Top = 39
      Width = 85
      Height = 13
      AutoSize = False
      Caption = #51204#54868#48264#54840
    end
    object Label10: TLabel
      Left = 333
      Top = 15
      Width = 85
      Height = 13
      AutoSize = False
      Caption = #48372#54744#54924#49324
    end
    object Label11: TLabel
      Left = 333
      Top = 39
      Width = 85
      Height = 13
      AutoSize = False
      Caption = #48372#54744#47308
    end
    object eINSUREDNAME: TEdit
      Left = 104
      Top = 11
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object eCAR_NAME: TEdit
      Left = 704
      Top = 10
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object eCAR_YEAR: TEdit
      Left = 704
      Top = 33
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object ePLATENUM: TEdit
      Left = 704
      Top = 57
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object eINSURED_TEL: TEdit
      Left = 104
      Top = 35
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object eINSURER: TEdit
      Left = 392
      Top = 11
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object ePREMIUM: TEdit
      Left = 392
      Top = 35
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
  end
  object XD: TXMLDocument
    Left = 32
    Top = 536
    DOMVendorDesc = 'MSXML'
  end
  object HP: TIdHTTP
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
    Left = 672
    Top = 136
  end
end
