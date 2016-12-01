object frmBikeQuoteList: TfrmBikeQuoteList
  Left = 231
  Top = 191
  BorderStyle = bsSingle
  Caption = #44204#51201#47785#47197' '#48372#44592
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
    Width = 914
    Height = 450
    Align = alClient
    ColCount = 10
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 0
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
      74)
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
  object XD: TXMLDocument
    Left = 32
    Top = 536
    DOMVendorDesc = 'MSXML'
  end
end
