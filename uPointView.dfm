object frmPointView: TfrmPointView
  Left = 184
  Top = 100
  BorderStyle = bsSingle
  Caption = #54252#51064#53944' '#45236#50669' '#48372#44592
  ClientHeight = 531
  ClientWidth = 916
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 916
    Height = 65
    ActivePage = TabSheet1
    Align = alTop
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
        Left = 815
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 483
    Width = 916
    Height = 48
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 170
      Height = 13
      Caption = #54252#51064#53944' '#45824#49345' '#48372#54744#47308' '#54633#44228' :     '
    end
    object Label6: TLabel
      Left = 488
      Top = 17
      Width = 170
      Height = 13
      Caption = #54252#51064#53944' '#45824#49345' '#49688#49688#47308' '#54633#44228' :     '
    end
    object Label7: TLabel
      Left = 337
      Top = 16
      Width = 56
      Height = 13
      Caption = #49688#49688#47308#50984':'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 808
      Top = 10
      Width = 83
      Height = 28
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object edtPremiumAmt: TEdit
      Left = 184
      Top = 12
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object edtPointAmt: TEdit
      Left = 648
      Top = 13
      Width = 122
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object cboCommRate: TComboBox
      Left = 400
      Top = 13
      Width = 57
      Height = 21
      Style = csDropDownList
      Enabled = False
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      ItemIndex = 6
      TabOrder = 3
      Text = '7%'
      Visible = False
      OnChange = cboCommRateChange
      Items.Strings = (
        '1%'
        '2%'
        '3%'
        '4%'
        '5%'
        '6%'
        '7%'
        '8%'
        '9%'
        '10%'
        '11%'
        '12%'
        '13%'
        '14%'
        '15%'
        '16%'
        '17%'
        '18%'
        '19%'
        '20%')
    end
  end
  object SGrid: TStringGrid
    Left = 0
    Top = 65
    Width = 916
    Height = 418
    Align = alClient
    ColCount = 10
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 2
    ColWidths = (
      54
      77
      74
      83
      101
      133
      104
      109
      73
      71)
  end
  object XD: TXMLDocument
    Left = 32
    Top = 536
    DOMVendorDesc = 'MSXML'
  end
end
