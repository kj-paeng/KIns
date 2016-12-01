object RptTaxReceipt: TRptTaxReceipt
  Left = 402
  Top = 115
  Width = 842
  Height = 875
  VertScrollBar.Position = 238
  Caption = 'RptTaxReceipt'
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #46027#50880#52404
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 11
  object QR1: TQuickRep
    Left = 8
    Top = -232
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #46027#50880#52404
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      200.000000000000000000
      2970.000000000000000000
      200.000000000000000000
      2100.000000000000000000
      300.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 113
      Top = 76
      Width = 643
      Height = 1047
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        2770.187500000000000000
        1701.270833333333000000)
      BandType = rbDetail
      object QRImage2: TQRImage
        Left = 302
        Top = 603
        Width = 58
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          799.041666666667000000
          1595.437500000000000000
          153.458333333333000000)
        Stretch = True
      end
      object QRImage1: TQRImage
        Left = 302
        Top = 72
        Width = 58
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          799.041666666667000000
          190.500000000000000000
          153.458333333333000000)
        Stretch = True
      end
      object QRLabel133: TQRLabel
        Left = 491
        Top = 924
        Width = 122
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1299.104166666670000000
          2444.750000000000000000
          322.791666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51060' '#44552#50529#51012'             '#54632
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape198: TQRShape
        Left = 551
        Top = 931
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1457.854166666670000000
          2463.270833333330000000
          111.125000000000000000)
        Pen.Color = clBlue
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape197: TQRShape
        Left = 551
        Top = 915
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1457.854166666670000000
          2420.937500000000000000
          111.125000000000000000)
        Pen.Color = clBlue
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel64: TQRLabel
        Left = 491
        Top = 391
        Width = 122
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1299.104166666670000000
          1034.520833333330000000
          322.791666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51060' '#44552#50529#51012'             '#54632
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape196: TQRShape
        Left = 551
        Top = 398
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1457.854166666670000000
          1053.041666666670000000
          111.125000000000000000)
        Pen.Color = clRed
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape195: TQRShape
        Left = 551
        Top = 382
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1457.854166666670000000
          1010.708333333330000000
          111.125000000000000000)
        Pen.Color = clRed
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel65: TQRLabel
        Left = 553
        Top = 384
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1463.145833333330000000
          1016.000000000000000000
          97.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50689' '#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape4: TQRShape
        Left = 65
        Top = 373
        Width = 572
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          986.895833333333000000
          1513.416666666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape73: TQRShape
        Left = 73
        Top = 379
        Width = 554
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          193.145833333333000000
          1002.770833333330000000
          1465.791666666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 63
        Top = 43
        Width = 574
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          166.687500000000000000
          113.770833333333000000
          1518.708333333330000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 63
        Top = 183
        Width = 574
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          166.687500000000000000
          484.187500000000000000
          1518.708333333330000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 88
        Top = 45
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          232.833333333333000000
          119.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 89
        Top = 79
        Width = 251
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          235.479166666667000000
          209.020833333333000000
          664.104166666667000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 66
        Top = 81
        Width = 19
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333000000
          174.625000000000000000
          214.312500000000000000
          50.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277'   '#44553'   '#51088
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 142
        Top = 45
        Width = 2
        Height = 139
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          367.770833333333000000
          375.708333333333000000
          119.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 418
        Top = 45
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          1105.958333333330000000
          119.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel5: TQRLabel
        Left = 287
        Top = 10
        Width = 21
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          759.354166666667000000
          26.458333333333300000
          55.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object QRLabel6: TQRLabel
        Left = 351
        Top = 10
        Width = 21
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          928.687500000000000000
          26.458333333333300000
          55.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object QRShape12: TQRShape
        Left = 448
        Top = 2
        Width = 6
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333000000
          1185.333333333330000000
          5.291666666666670000
          15.875000000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 451
        Top = 21
        Width = 186
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333300000
          1193.270833333330000000
          55.562500000000000000
          492.125000000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel7: TQRLabel
        Left = 395
        Top = 8
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1045.104166666670000000
          21.166666666666700000
          140.229166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52293' '#48264' '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 395
        Top = 29
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1045.104166666670000000
          76.729166666666700000
          140.229166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51068#47144#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape15: TQRShape
        Left = 542
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1434.041666666670000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 589
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1558.395833333330000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 495
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1309.687500000000000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape18: TQRShape
        Left = 519
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1373.187500000000000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape19: TQRShape
        Left = 472
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1248.833333333330000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape20: TQRShape
        Left = 566
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1497.541666666670000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 498
        Top = 29
        Width = 20
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1317.625000000000000000
          76.729166666666700000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 537
        Top = 2
        Width = 2
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1420.812500000000000000
          5.291666666666670000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel10: TQRLabel
        Left = 523
        Top = 8
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1383.770833333333000000
          21.166666666666670000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44428
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 92
        Top = 57
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          243.416666666666700000
          150.812500000000000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 92
        Top = 84
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          222.250000000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49345'    '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 94
        Top = 160
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          248.708333333333000000
          423.333333333333000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50629'   '#53468
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape21: TQRShape
        Left = 249
        Top = 80
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          658.812500000000000000
          211.666666666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel15: TQRLabel
        Left = 253
        Top = 84
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          669.395833333333000000
          222.250000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49457' '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape25: TQRShape
        Left = 436
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1153.583333333330000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape26: TQRShape
        Left = 454
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1201.208333333330000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape27: TQRShape
        Left = 473
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1251.479166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape28: TQRShape
        Left = 491
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1299.104166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape29: TQRShape
        Left = 509
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1346.729166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape30: TQRShape
        Left = 527
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1394.354166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape31: TQRShape
        Left = 545
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1441.979166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape32: TQRShape
        Left = 563
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1489.604166666670000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape33: TQRShape
        Left = 582
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1539.875000000000000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape34: TQRShape
        Left = 600
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1587.500000000000000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape35: TQRShape
        Left = 618
        Top = 45
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1635.125000000000000000
          119.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 118
        Top = 251
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          312.208333333333000000
          664.104166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape24: TQRShape
        Left = 65
        Top = 250
        Width = 571
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          661.458333333333000000
          1510.770833333330000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape36: TQRShape
        Left = 64
        Top = 199
        Width = 573
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875000000000000000
          169.333333333333000000
          526.520833333333000000
          1516.062500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape37: TQRShape
        Left = 134
        Top = 185
        Width = 2
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          354.541666666667000000
          489.479166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape38: TQRShape
        Left = 87
        Top = 203
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          230.187500000000000000
          537.104166666667000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape39: TQRShape
        Left = 111
        Top = 203
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          293.687500000000000000
          537.104166666667000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel21: TQRLabel
        Left = 78
        Top = 187
        Width = 44
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          206.375000000000000000
          494.770833333333400000
          116.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51089'   '#49457
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape40: TQRShape
        Left = 171
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          452.437500000000000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape42: TQRShape
        Left = 190
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          502.708333333333000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape43: TQRShape
        Left = 208
        Top = 202
        Width = 3
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          550.333333333333000000
          534.458333333333000000
          7.937500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape44: TQRShape
        Left = 226
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          597.958333333333000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape45: TQRShape
        Left = 244
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          645.583333333333000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape46: TQRShape
        Left = 372
        Top = 185
        Width = 2
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          984.250000000000000000
          489.479166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape47: TQRShape
        Left = 262
        Top = 202
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          693.208333333333000000
          534.458333333333000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape48: TQRShape
        Left = 281
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          743.479166666667000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape49: TQRShape
        Left = 299
        Top = 202
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          791.104166666667000000
          534.458333333333000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape50: TQRShape
        Left = 317
        Top = 202
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          838.729166666667000000
          534.458333333333000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape51: TQRShape
        Left = 335
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          886.354166666667000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape52: TQRShape
        Left = 558
        Top = 185
        Width = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          1476.375000000000000000
          489.479166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape53: TQRShape
        Left = 391
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1034.520833333330000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape54: TQRShape
        Left = 409
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1082.145833333330000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape55: TQRShape
        Left = 428
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1132.416666666670000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape56: TQRShape
        Left = 446
        Top = 202
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1180.041666666670000000
          534.458333333333000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape57: TQRShape
        Left = 465
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1230.312500000000000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape58: TQRShape
        Left = 484
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1280.583333333330000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape59: TQRShape
        Left = 502
        Top = 202
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1328.208333333330000000
          534.458333333333000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel22: TQRLabel
        Left = 69
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          182.562500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 93
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          246.062500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50900
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 116
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          306.916666666666700000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 135
        Top = 206
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          357.187500000000000000
          545.041666666666800000
          97.895833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277#46976#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 174
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          460.375000000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 193
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 211
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          558.270833333333400000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50613
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel29: TQRLabel
        Left = 229
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          605.895833333333400000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 247
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          653.520833333333400000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 266
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          703.791666666666800000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel32: TQRLabel
        Left = 284
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          751.416666666666800000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47564
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel33: TQRLabel
        Left = 302
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          799.041666666666800000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 320
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          846.666666666666600000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 339
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          896.937500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 357
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          944.562500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 377
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          997.479166666666900000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 395
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1045.104166666667000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50613
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 414
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1095.375000000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 432
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1143.000000000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel41: TQRLabel
        Left = 451
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1193.270833333333000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel42: TQRLabel
        Left = 469
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1240.895833333333000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47564
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Left = 488
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1291.166666666667000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 506
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1338.791666666667000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape60: TQRShape
        Left = 539
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1426.104166666670000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape61: TQRShape
        Left = 521
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1378.479166666670000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel45: TQRLabel
        Left = 525
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1389.062500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel46: TQRLabel
        Left = 543
        Top = 206
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1436.687500000000000000
          545.041666666666800000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel47: TQRLabel
        Left = 193
        Top = 187
        Width = 102
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          494.770833333333400000
          269.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277'   '#44553'   '#44032'   '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 428
        Top = 187
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1132.416666666667000000
          494.770833333333400000
          209.020833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464'          '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape62: TQRShape
        Left = 91
        Top = 252
        Width = 1
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          240.770833333333000000
          666.750000000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel49: TQRLabel
        Left = 579
        Top = 186
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1531.937500000000000000
          492.125000000000000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48708'  '#44256
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape63: TQRShape
        Left = 65
        Top = 270
        Width = 572
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          714.375000000000000000
          1513.416666666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape64: TQRShape
        Left = 64
        Top = 296
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          783.166666666667000000
          1516.062500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape65: TQRShape
        Left = 64
        Top = 322
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          851.958333333333000000
          1516.062500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape66: TQRShape
        Left = 64
        Top = 347
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          918.104166666667000000
          1516.062500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape67: TQRShape
        Left = 264
        Top = 252
        Width = 3
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          698.500000000000000000
          666.750000000000000000
          7.937500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape68: TQRShape
        Left = 375
        Top = 252
        Width = 2
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          992.187500000000000000
          666.750000000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape69: TQRShape
        Left = 478
        Top = 251
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          1264.708333333330000000
          664.104166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape70: TQRShape
        Left = 583
        Top = 251
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          1542.520833333330000000
          664.104166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel50: TQRLabel
        Left = 69
        Top = 255
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          182.562500000000000000
          674.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50900
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 95
        Top = 255
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          251.354166666666700000
          674.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape71: TQRShape
        Left = 301
        Top = 252
        Width = 1
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          796.395833333333000000
          666.750000000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape72: TQRShape
        Left = 338
        Top = 252
        Width = 1
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          894.291666666667000000
          666.750000000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel52: TQRLabel
        Left = 147
        Top = 255
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          388.937500000000000000
          674.687500000000000000
          222.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54408'           '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 270
        Top = 255
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          714.375000000000000000
          674.687500000000000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44508#44201
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 306
        Top = 255
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          809.625000000000000000
          674.687500000000000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#47049
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 342
        Top = 255
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          904.875000000000000000
          674.687500000000000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45800#44032
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 399
        Top = 255
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          674.687500000000000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277#44553#44032#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 508
        Top = 255
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1344.083333333333000000
          674.687500000000000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464'    '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 592
        Top = 255
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1566.333333333333000000
          674.687500000000000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48708'  '#44256
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape74: TQRShape
        Left = 73
        Top = 397
        Width = 407
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          193.145833333333000000
          1050.395833333330000000
          1076.854166666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape75: TQRShape
        Left = 73
        Top = 381
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          193.145833333333000000
          1008.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape76: TQRShape
        Left = 398
        Top = 381
        Width = 2
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1053.041666666670000000
          1008.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape77: TQRShape
        Left = 154
        Top = 381
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          407.458333333333000000
          1008.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape78: TQRShape
        Left = 235
        Top = 381
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          621.770833333333000000
          1008.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape79: TQRShape
        Left = 317
        Top = 381
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          838.729166666667000000
          1008.062500000000000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel59: TQRLabel
        Left = 85
        Top = 383
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          224.895833333333300000
          1013.354166666667000000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54633' '#44228' '#44552' '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel60: TQRLabel
        Left = 174
        Top = 383
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          460.375000000000000000
          1013.354166666667000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54788'     '#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel61: TQRLabel
        Left = 256
        Top = 383
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          677.333333333333400000
          1013.354166666667000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688'     '#54364
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel62: TQRLabel
        Left = 336
        Top = 383
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          889.000000000000000000
          1013.354166666667000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50612'     '#51020
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel63: TQRLabel
        Left = 410
        Top = 383
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1084.791666666667000000
          1013.354166666667000000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50808#49345#48120#49688#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel66: TQRLabel
        Left = 553
        Top = 400
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1463.145833333330000000
          1058.333333333330000000
          97.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52397' '#44396
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel67: TQRLabel
        Left = 301
        Top = 24
        Width = 57
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          796.395833333333000000
          63.500000000000000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #48372'  '#44288'  '#50857
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape6: TQRShape
        Left = 339
        Top = 45
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          896.937500000000000000
          119.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 301
        Top = 10
        Width = 57
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          796.395833333333000000
          26.458333333333300000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277'  '#44553'  '#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape159: TQRShape
        Left = 364
        Top = 45
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          963.083333333333000000
          119.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 89
        Top = 113
        Width = 250
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          235.479166666667000000
          298.979166666667000000
          661.458333333333000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape9: TQRShape
        Left = 89
        Top = 148
        Width = 251
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          235.479166666667000000
          391.583333333333000000
          664.104166666667000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape160: TQRShape
        Left = 365
        Top = 77
        Width = 272
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          965.729166666667000000
          203.729166666667000000
          719.666666666667000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape161: TQRShape
        Left = 365
        Top = 114
        Width = 271
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          965.729166666667000000
          301.625000000000000000
          717.020833333333000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape162: TQRShape
        Left = 366
        Top = 148
        Width = 271
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          968.375000000000000000
          391.583333333333000000
          717.020833333333000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel135: TQRLabel
        Left = 619
        Top = 8
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1637.770833333333000000
          21.166666666666670000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape163: TQRShape
        Left = 65
        Top = 220
        Width = 494
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          171.979166666667000000
          582.083333333333000000
          1307.041666666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape165: TQRShape
        Left = 636
        Top = 2
        Width = 3
        Height = 421
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1113.895833333330000000
          1682.750000000000000000
          5.291666666666670000
          7.937500000000000000)
        Pen.Color = clRed
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape80: TQRShape
        Left = 63
        Top = 1
        Width = 574
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          166.687500000000000000
          2.645833333333330000
          1518.708333333330000000)
        Pen.Color = clRed
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRLabel68: TQRLabel
        Left = 92
        Top = 98
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          259.291666666667000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#48277#51064#47749')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel69: TQRLabel
        Left = 92
        Top = 119
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          314.854166666667000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49324#50629#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel70: TQRLabel
        Left = 92
        Top = 133
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          351.895833333333000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51452'   '#49548
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 368
        Top = 57
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          973.666666666666900000
          150.812500000000000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 368
        Top = 84
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          222.250000000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49345'    '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 368
        Top = 98
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          259.291666666667000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#48277#51064#47749')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 368
        Top = 119
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          314.854166666667000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49324#50629#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 368
        Top = 133
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          351.895833333333000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51452'   '#49548
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel71: TQRLabel
        Left = 370
        Top = 160
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          978.958333333333000000
          423.333333333333000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50629'   '#53468
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel72: TQRLabel
        Left = 475
        Top = 56
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1256.770833333330000000
          148.166666666667000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 530
        Top = 56
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1402.291666666670000000
          148.166666666667000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape81: TQRShape
        Left = 267
        Top = 80
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          706.437500000000000000
          211.666666666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel74: TQRLabel
        Left = 316
        Top = 93
        Width = 20
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          836.083333333333000000
          246.062500000000000000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape82: TQRShape
        Left = 544
        Top = 80
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1439.333333333330000000
          211.666666666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel75: TQRLabel
        Left = 548
        Top = 84
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1449.916666666670000000
          222.250000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49457' '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape83: TQRShape
        Left = 562
        Top = 80
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1486.958333333330000000
          211.666666666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel76: TQRLabel
        Left = 615
        Top = 93
        Width = 20
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1627.187500000000000000
          246.062500000000000000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape84: TQRShape
        Left = 222
        Top = 149
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          587.375000000000000000
          394.229166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel77: TQRLabel
        Left = 225
        Top = 155
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          595.312500000000000000
          410.104166666667000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51333' '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape85: TQRShape
        Left = 240
        Top = 149
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          635.000000000000000000
          394.229166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape86: TQRShape
        Left = 507
        Top = 149
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1341.437500000000000000
          394.229166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel78: TQRLabel
        Left = 510
        Top = 155
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1349.375000000000000000
          410.104166666667000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51333' '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape87: TQRShape
        Left = 525
        Top = 149
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1389.062500000000000000
          394.229166666667000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 354
        Top = 202
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          936.625000000000000000
          534.458333333333000000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape88: TQRShape
        Left = 479
        Top = 381
        Width = 2
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1267.354166666670000000
          1008.062500000000000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape89: TQRShape
        Left = 626
        Top = 380
        Width = 2
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          1656.291666666670000000
          1005.416666666670000000
          5.291666666666670000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape90: TQRShape
        Left = 73
        Top = 415
        Width = 554
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          193.145833333333000000
          1098.020833333330000000
          1465.791666666670000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape41: TQRShape
        Left = 64
        Top = 421
        Width = 573
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          169.333333333333000000
          1113.895833333330000000
          1516.062500000000000000)
        Pen.Color = clRed
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object A1: TQRLabel
        Left = 456
        Top = 8
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1206.500000000000000000
          21.166666666666700000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object A2: TQRLabel
        Left = 552
        Top = 8
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1460.500000000000000000
          21.166666666666700000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object B1: TQRLabel
        Left = 455
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1203.854166666670000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object B2: TQRLabel
        Left = 477
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1262.062500000000000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object B3: TQRLabel
        Left = 524
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1386.416666666670000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object B4: TQRLabel
        Left = 548
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1449.916666666670000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object B5: TQRLabel
        Left = 569
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1505.479166666670000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object B6: TQRLabel
        Left = 594
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1571.625000000000000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C1: TQRLabel
        Left = 147
        Top = 55
        Width = 189
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          388.937500000000000000
          145.520833333333000000
          500.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 13
      end
      object C2: TQRLabel
        Left = 421
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1113.895833333330000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C3: TQRLabel
        Left = 439
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1161.520833333330000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C4: TQRLabel
        Left = 457
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1209.145833333330000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C5: TQRLabel
        Left = 493
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1304.395833333330000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C6: TQRLabel
        Left = 511
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1352.020833333330000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C7: TQRLabel
        Left = 548
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1449.916666666670000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C8: TQRLabel
        Left = 566
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1497.541666666670000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C9: TQRLabel
        Left = 585
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1547.812500000000000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C10: TQRLabel
        Left = 603
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1595.437500000000000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object C11: TQRLabel
        Left = 621
        Top = 55
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1643.062500000000000000
          145.520833333333000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object D1: TQRLabel
        Left = 145
        Top = 83
        Width = 103
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          383.645833333333000000
          219.604166666667000000
          272.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '01234567890123456789'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D4: TQRLabel
        Left = 422
        Top = 83
        Width = 120
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          1116.541666666670000000
          219.604166666667000000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'D4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D6: TQRLabel
        Left = 567
        Top = 92
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1500.187500000000000000
          243.416666666667000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'D6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object E1: TQRLabel
        Left = 145
        Top = 119
        Width = 193
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          383.645833333333000000
          314.854166666667000000
          510.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'E1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object E2: TQRLabel
        Left = 424
        Top = 119
        Width = 208
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          1121.833333333330000000
          314.854166666667000000
          550.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'E2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object F1: TQRLabel
        Left = 145
        Top = 154
        Width = 74
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          383.645833333333000000
          407.458333333333000000
          195.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'F1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object F2: TQRLabel
        Left = 245
        Top = 154
        Width = 93
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          648.229166666667000000
          407.458333333333000000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'F2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object F3: TQRLabel
        Left = 423
        Top = 154
        Width = 81
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1119.187500000000000000
          407.458333333333000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'F3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object F4: TQRLabel
        Left = 529
        Top = 154
        Width = 103
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1399.645833333330000000
          407.458333333333000000
          272.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'F4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object G1: TQRLabel
        Left = 64
        Top = 227
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          169.333333333333000000
          600.604166666667000000
          60.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G2: TQRLabel
        Left = 88
        Top = 227
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          232.833333333333000000
          600.604166666667000000
          60.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G3: TQRLabel
        Left = 112
        Top = 227
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          296.333333333333000000
          600.604166666667000000
          58.208333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G4: TQRLabel
        Left = 136
        Top = 227
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          359.833333333333000000
          600.604166666667000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G5: TQRLabel
        Left = 174
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          460.375000000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G6: TQRLabel
        Left = 193
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          510.645833333333000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G7: TQRLabel
        Left = 212
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          560.916666666667000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G8: TQRLabel
        Left = 229
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          605.895833333333000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G9: TQRLabel
        Left = 248
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          656.166666666667000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G10: TQRLabel
        Left = 266
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          703.791666666667000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G11: TQRLabel
        Left = 284
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          751.416666666667000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G12: TQRLabel
        Left = 303
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          801.687500000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G13: TQRLabel
        Left = 321
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          849.312500000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G13'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G14: TQRLabel
        Left = 339
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          896.937500000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G14'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G15: TQRLabel
        Left = 357
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          944.562500000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G15'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G16: TQRLabel
        Left = 376
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          994.833333333333000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G16'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G17: TQRLabel
        Left = 394
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1042.458333333330000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G17'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G18: TQRLabel
        Left = 412
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1090.083333333330000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G18'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G19: TQRLabel
        Left = 431
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1140.354166666670000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G19'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G20: TQRLabel
        Left = 450
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1190.625000000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G20'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G21: TQRLabel
        Left = 468
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1238.250000000000000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G21'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G22: TQRLabel
        Left = 487
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1288.520833333330000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G23: TQRLabel
        Left = 505
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1336.145833333330000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G23'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G24: TQRLabel
        Left = 524
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1386.416666666670000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G24'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G25: TQRLabel
        Left = 542
        Top = 227
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1434.041666666670000000
          600.604166666667000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G25'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object G26: TQRLabel
        Left = 562
        Top = 206
        Width = 71
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667000000
          1486.958333333330000000
          545.041666666667000000
          187.854166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'G26'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object H1: TQRLabel
        Left = 65
        Top = 276
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          730.250000000000000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object K1: TQRLabel
        Left = 65
        Top = 302
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          799.041666666667000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object L1: TQRLabel
        Left = 65
        Top = 327
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          865.187500000000000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object M1: TQRLabel
        Left = 65
        Top = 353
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          933.979166666667000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object H2: TQRLabel
        Left = 92
        Top = 276
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          730.250000000000000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object K2: TQRLabel
        Left = 92
        Top = 302
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          799.041666666667000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object L2: TQRLabel
        Left = 92
        Top = 327
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          865.187500000000000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object M2: TQRLabel
        Left = 92
        Top = 353
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          933.979166666667000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object H3: TQRLabel
        Left = 122
        Top = 276
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          730.250000000000000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object K3: TQRLabel
        Left = 122
        Top = 302
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          799.041666666667000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object L3: TQRLabel
        Left = 122
        Top = 327
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          865.187500000000000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object M3: TQRLabel
        Left = 122
        Top = 353
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          933.979166666667000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object H4: TQRLabel
        Left = 267
        Top = 276
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          730.250000000000000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object K4: TQRLabel
        Left = 267
        Top = 302
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          799.041666666667000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object L4: TQRLabel
        Left = 267
        Top = 327
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          865.187500000000000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object M4: TQRLabel
        Left = 267
        Top = 353
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          933.979166666667000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object H5: TQRLabel
        Left = 303
        Top = 278
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          735.541666666667000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object K5: TQRLabel
        Left = 303
        Top = 304
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          804.333333333333000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L5: TQRLabel
        Left = 303
        Top = 329
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          870.479166666667000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object M5: TQRLabel
        Left = 303
        Top = 355
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          939.270833333333000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object H7: TQRLabel
        Left = 378
        Top = 278
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          735.541666666667000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object K7: TQRLabel
        Left = 378
        Top = 304
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          804.333333333333000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L7: TQRLabel
        Left = 378
        Top = 329
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          870.479166666667000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object M7: TQRLabel
        Left = 378
        Top = 355
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          939.270833333333000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object H8: TQRLabel
        Left = 482
        Top = 278
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          735.541666666667000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object K8: TQRLabel
        Left = 482
        Top = 304
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          804.333333333333000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L8: TQRLabel
        Left = 482
        Top = 329
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          870.479166666667000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object M8: TQRLabel
        Left = 482
        Top = 355
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          939.270833333333000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object H9: TQRLabel
        Left = 588
        Top = 278
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          735.541666666667000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object K9: TQRLabel
        Left = 588
        Top = 304
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          804.333333333333000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L9: TQRLabel
        Left = 588
        Top = 329
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          870.479166666667000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object M9: TQRLabel
        Left = 588
        Top = 355
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          939.270833333333000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object N1: TQRLabel
        Left = 76
        Top = 401
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          201.083333333333000000
          1060.979166666670000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object N2: TQRLabel
        Left = 156
        Top = 401
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          412.750000000000000000
          1060.979166666670000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object N3: TQRLabel
        Left = 239
        Top = 401
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          632.354166666667000000
          1060.979166666670000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object N4: TQRLabel
        Left = 322
        Top = 401
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          851.958333333333000000
          1060.979166666670000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object N5: TQRLabel
        Left = 402
        Top = 401
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1063.625000000000000000
          1060.979166666670000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape91: TQRShape
        Left = 61
        Top = 535
        Width = 3
        Height = 421
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1113.895833333330000000
          161.395833333333000000
          1415.520833333330000000
          7.937500000000000000)
        Pen.Color = clBlue
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape92: TQRShape
        Left = 65
        Top = 906
        Width = 572
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          2397.125000000000000000
          1513.416666666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape93: TQRShape
        Left = 73
        Top = 912
        Width = 554
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          193.145833333333000000
          2413.000000000000000000
          1465.791666666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape94: TQRShape
        Left = 63
        Top = 577
        Width = 574
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          166.687500000000000000
          1526.645833333330000000
          1518.708333333330000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel20: TQRLabel
        Left = 96
        Top = 543
        Width = 162
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          254.000000000000000000
          1436.687500000000000000
          428.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464' '#44552' '#44228' '#49328' '#49436
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object QRShape95: TQRShape
        Left = 63
        Top = 716
        Width = 574
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          166.687500000000000000
          1894.416666666670000000
          1518.708333333330000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape96: TQRShape
        Left = 88
        Top = 578
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          232.833333333333000000
          1529.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape97: TQRShape
        Left = 89
        Top = 612
        Width = 251
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          235.479166666667000000
          1619.250000000000000000
          664.104166666667000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel79: TQRLabel
        Left = 66
        Top = 614
        Width = 19
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333000000
          174.625000000000000000
          1624.541666666670000000
          50.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277'   '#44553'   '#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape98: TQRShape
        Left = 142
        Top = 578
        Width = 2
        Height = 139
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          367.770833333333000000
          375.708333333333000000
          1529.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape99: TQRShape
        Left = 418
        Top = 578
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          1105.958333333330000000
          1529.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel80: TQRLabel
        Left = 287
        Top = 543
        Width = 21
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          759.354166666667000000
          1436.687500000000000000
          55.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object QRLabel81: TQRLabel
        Left = 351
        Top = 543
        Width = 21
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          928.687500000000000000
          1436.687500000000000000
          55.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object QRShape100: TQRShape
        Left = 448
        Top = 535
        Width = 6
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333000000
          1185.333333333330000000
          1415.520833333330000000
          15.875000000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape101: TQRShape
        Left = 451
        Top = 554
        Width = 186
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333300000
          1193.270833333330000000
          1465.791666666670000000
          492.125000000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel82: TQRLabel
        Left = 395
        Top = 541
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1045.104166666670000000
          1431.395833333330000000
          140.229166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52293' '#48264' '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel83: TQRLabel
        Left = 395
        Top = 562
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1045.104166666670000000
          1486.958333333330000000
          140.229166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51068#47144#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape102: TQRShape
        Left = 542
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1434.041666666670000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape103: TQRShape
        Left = 589
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1558.395833333330000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape104: TQRShape
        Left = 495
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1309.687500000000000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape105: TQRShape
        Left = 519
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1373.187500000000000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape106: TQRShape
        Left = 472
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1248.833333333330000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape107: TQRShape
        Left = 566
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1497.541666666670000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel84: TQRLabel
        Left = 497
        Top = 561
        Width = 20
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1314.979166666670000000
          1484.312500000000000000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape108: TQRShape
        Left = 537
        Top = 535
        Width = 2
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1420.812500000000000000
          1415.520833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel85: TQRLabel
        Left = 523
        Top = 541
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1383.770833333333000000
          1431.395833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44428
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel86: TQRLabel
        Left = 92
        Top = 590
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          243.416666666666700000
          1561.041666666667000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel87: TQRLabel
        Left = 92
        Top = 617
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          1632.479166666670000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49345'    '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel88: TQRLabel
        Left = 94
        Top = 693
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          248.708333333333000000
          1833.562500000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50629'   '#53468
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape109: TQRShape
        Left = 249
        Top = 613
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          658.812500000000000000
          1621.895833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel89: TQRLabel
        Left = 253
        Top = 617
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          669.395833333333000000
          1632.479166666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49457' '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape110: TQRShape
        Left = 436
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1153.583333333330000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape111: TQRShape
        Left = 454
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1201.208333333330000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape112: TQRShape
        Left = 473
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1251.479166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape113: TQRShape
        Left = 491
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1299.104166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape114: TQRShape
        Left = 509
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1346.729166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape115: TQRShape
        Left = 527
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1394.354166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape116: TQRShape
        Left = 545
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1441.979166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape117: TQRShape
        Left = 563
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1489.604166666670000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape118: TQRShape
        Left = 582
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1539.875000000000000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape119: TQRShape
        Left = 600
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1587.500000000000000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape120: TQRShape
        Left = 618
        Top = 578
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1635.125000000000000000
          1529.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape121: TQRShape
        Left = 118
        Top = 784
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          312.208333333333000000
          2074.333333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape122: TQRShape
        Left = 65
        Top = 783
        Width = 571
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          2071.687500000000000000
          1510.770833333330000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape123: TQRShape
        Left = 64
        Top = 732
        Width = 573
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875000000000000000
          169.333333333333000000
          1936.750000000000000000
          1516.062500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape124: TQRShape
        Left = 134
        Top = 718
        Width = 2
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          354.541666666667000000
          1899.708333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape125: TQRShape
        Left = 87
        Top = 736
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          230.187500000000000000
          1947.333333333330000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape126: TQRShape
        Left = 111
        Top = 736
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          293.687500000000000000
          1947.333333333330000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel90: TQRLabel
        Left = 78
        Top = 720
        Width = 44
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          206.375000000000000000
          1905.000000000000000000
          116.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51089'   '#49457
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape127: TQRShape
        Left = 171
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          452.437500000000000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape128: TQRShape
        Left = 190
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          502.708333333333000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape129: TQRShape
        Left = 208
        Top = 735
        Width = 3
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          550.333333333333000000
          1944.687500000000000000
          7.937500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape130: TQRShape
        Left = 226
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          597.958333333333000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape131: TQRShape
        Left = 244
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          645.583333333333000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape132: TQRShape
        Left = 372
        Top = 718
        Width = 2
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          984.250000000000000000
          1899.708333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape133: TQRShape
        Left = 262
        Top = 735
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          693.208333333333000000
          1944.687500000000000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape134: TQRShape
        Left = 281
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          743.479166666667000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape135: TQRShape
        Left = 299
        Top = 735
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          791.104166666667000000
          1944.687500000000000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape136: TQRShape
        Left = 317
        Top = 735
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          838.729166666667000000
          1944.687500000000000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape137: TQRShape
        Left = 335
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          886.354166666667000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape138: TQRShape
        Left = 558
        Top = 718
        Width = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          1476.375000000000000000
          1899.708333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape139: TQRShape
        Left = 391
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1034.520833333330000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape140: TQRShape
        Left = 409
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1082.145833333330000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape141: TQRShape
        Left = 428
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1132.416666666670000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape142: TQRShape
        Left = 446
        Top = 735
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1180.041666666670000000
          1944.687500000000000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape143: TQRShape
        Left = 465
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1230.312500000000000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape144: TQRShape
        Left = 484
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1280.583333333330000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape145: TQRShape
        Left = 502
        Top = 735
        Width = 2
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1328.208333333330000000
          1944.687500000000000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel91: TQRLabel
        Left = 69
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          182.562500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel92: TQRLabel
        Left = 93
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          246.062500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50900
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel93: TQRLabel
        Left = 116
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          306.916666666666700000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel94: TQRLabel
        Left = 135
        Top = 739
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          357.187500000000000000
          1955.270833333333000000
          97.895833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277#46976#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel95: TQRLabel
        Left = 174
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          460.375000000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel96: TQRLabel
        Left = 193
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel97: TQRLabel
        Left = 211
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          558.270833333333400000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50613
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel98: TQRLabel
        Left = 229
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          605.895833333333400000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel99: TQRLabel
        Left = 247
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          653.520833333333400000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel100: TQRLabel
        Left = 266
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          703.791666666666800000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel101: TQRLabel
        Left = 284
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          751.416666666666800000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47564
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel102: TQRLabel
        Left = 302
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          799.041666666666800000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel103: TQRLabel
        Left = 320
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          846.666666666666600000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel104: TQRLabel
        Left = 339
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          896.937500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel105: TQRLabel
        Left = 357
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          944.562500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel106: TQRLabel
        Left = 377
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          997.479166666666900000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel107: TQRLabel
        Left = 395
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1045.104166666667000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50613
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel108: TQRLabel
        Left = 414
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1095.375000000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel109: TQRLabel
        Left = 432
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1143.000000000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel110: TQRLabel
        Left = 451
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1193.270833333333000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel111: TQRLabel
        Left = 469
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1240.895833333333000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47564
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel112: TQRLabel
        Left = 488
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1291.166666666667000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52380
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel113: TQRLabel
        Left = 506
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1338.791666666667000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48177
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape146: TQRShape
        Left = 539
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1426.104166666670000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape147: TQRShape
        Left = 521
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1378.479166666670000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel114: TQRLabel
        Left = 525
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1389.062500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49901
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel115: TQRLabel
        Left = 543
        Top = 739
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1436.687500000000000000
          1955.270833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel116: TQRLabel
        Left = 193
        Top = 720
        Width = 102
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          1905.000000000000000000
          269.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277'   '#44553'   '#44032'   '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel117: TQRLabel
        Left = 428
        Top = 720
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1132.416666666667000000
          1905.000000000000000000
          209.020833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464'          '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape148: TQRShape
        Left = 91
        Top = 785
        Width = 1
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          240.770833333333000000
          2076.979166666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel118: TQRLabel
        Left = 579
        Top = 719
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1531.937500000000000000
          1902.354166666667000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48708'  '#44256
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape149: TQRShape
        Left = 65
        Top = 803
        Width = 572
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          171.979166666667000000
          2124.604166666670000000
          1513.416666666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape150: TQRShape
        Left = 64
        Top = 829
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          2193.395833333330000000
          1516.062500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape151: TQRShape
        Left = 64
        Top = 855
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          2262.187500000000000000
          1516.062500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape152: TQRShape
        Left = 64
        Top = 880
        Width = 573
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          169.333333333333000000
          2328.333333333330000000
          1516.062500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape153: TQRShape
        Left = 264
        Top = 785
        Width = 3
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          698.500000000000000000
          2076.979166666670000000
          7.937500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape154: TQRShape
        Left = 375
        Top = 785
        Width = 2
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          322.791666666667000000
          992.187500000000000000
          2076.979166666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape155: TQRShape
        Left = 478
        Top = 784
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          1264.708333333330000000
          2074.333333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape156: TQRShape
        Left = 583
        Top = 784
        Width = 2
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          1542.520833333330000000
          2074.333333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel119: TQRLabel
        Left = 69
        Top = 788
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          182.562500000000000000
          2084.916666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50900
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel120: TQRLabel
        Left = 97
        Top = 788
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          256.645833333333400000
          2084.916666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape157: TQRShape
        Left = 301
        Top = 785
        Width = 1
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          796.395833333333000000
          2076.979166666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape158: TQRShape
        Left = 338
        Top = 785
        Width = 1
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          894.291666666667000000
          2076.979166666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel121: TQRLabel
        Left = 147
        Top = 788
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          388.937500000000000000
          2084.916666666667000000
          222.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54408'           '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel122: TQRLabel
        Left = 270
        Top = 788
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          714.375000000000000000
          2084.916666666667000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44508#44201
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel123: TQRLabel
        Left = 306
        Top = 788
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          809.625000000000000000
          2084.916666666667000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#47049
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel124: TQRLabel
        Left = 342
        Top = 788
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          904.875000000000000000
          2084.916666666667000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45800#44032
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel125: TQRLabel
        Left = 399
        Top = 788
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          2084.916666666667000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44277#44553#44032#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel126: TQRLabel
        Left = 508
        Top = 788
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1344.083333333333000000
          2084.916666666667000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464'    '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel127: TQRLabel
        Left = 592
        Top = 788
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1566.333333333333000000
          2084.916666666667000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48708'  '#44256
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape164: TQRShape
        Left = 73
        Top = 930
        Width = 407
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          193.145833333333000000
          2460.625000000000000000
          1076.854166666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape166: TQRShape
        Left = 73
        Top = 914
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          193.145833333333000000
          2418.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape167: TQRShape
        Left = 398
        Top = 914
        Width = 2
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1053.041666666670000000
          2418.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape168: TQRShape
        Left = 154
        Top = 914
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          407.458333333333000000
          2418.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape169: TQRShape
        Left = 235
        Top = 914
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          621.770833333333000000
          2418.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape170: TQRShape
        Left = 317
        Top = 914
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          838.729166666667000000
          2418.291666666670000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel128: TQRLabel
        Left = 85
        Top = 916
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          224.895833333333300000
          2423.583333333333000000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54633' '#44228' '#44552' '#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel129: TQRLabel
        Left = 174
        Top = 916
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          460.375000000000000000
          2423.583333333333000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54788'     '#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel130: TQRLabel
        Left = 256
        Top = 916
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          677.333333333333400000
          2423.583333333333000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688'     '#54364
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel131: TQRLabel
        Left = 336
        Top = 916
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          889.000000000000000000
          2423.583333333333000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50612'     '#51020
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel132: TQRLabel
        Left = 410
        Top = 916
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1084.791666666667000000
          2423.583333333333000000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50808#49345#48120#49688#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel137: TQRLabel
        Left = 301
        Top = 557
        Width = 57
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          796.395833333333000000
          1473.729166666670000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #48372'  '#44288'  '#50857
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape171: TQRShape
        Left = 339
        Top = 578
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          896.937500000000000000
          1529.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel138: TQRLabel
        Left = 343
        Top = 612
        Width = 19
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          182.562500000000000000
          907.520833333333000000
          1619.250000000000000000
          50.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277' '#44553' '#48155' '#45716' '#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel139: TQRLabel
        Left = 301
        Top = 543
        Width = 57
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          796.395833333333000000
          1436.687500000000000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277#44553#48155#45716#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape172: TQRShape
        Left = 364
        Top = 578
        Width = 2
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          963.083333333333000000
          1529.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape173: TQRShape
        Left = 89
        Top = 645
        Width = 251
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          235.479166666667000000
          1706.562500000000000000
          664.104166666667000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape174: TQRShape
        Left = 89
        Top = 681
        Width = 251
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          235.479166666667000000
          1801.812500000000000000
          664.104166666667000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape175: TQRShape
        Left = 365
        Top = 608
        Width = 272
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          965.729166666667000000
          1608.666666666670000000
          719.666666666667000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape176: TQRShape
        Left = 365
        Top = 647
        Width = 271
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          965.729166666667000000
          1711.854166666670000000
          717.020833333333000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape177: TQRShape
        Left = 366
        Top = 681
        Width = 271
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          968.375000000000000000
          1801.812500000000000000
          717.020833333333000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel140: TQRLabel
        Left = 619
        Top = 541
        Width = 13
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1637.770833333333000000
          1431.395833333333000000
          34.395833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape178: TQRShape
        Left = 65
        Top = 753
        Width = 494
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          171.979166666667000000
          1992.312500000000000000
          1307.041666666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsHorLine
      end
      object QRShape179: TQRShape
        Left = 636
        Top = 535
        Width = 3
        Height = 421
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1113.895833333330000000
          1682.750000000000000000
          1415.520833333330000000
          7.937500000000000000)
        Pen.Color = clBlue
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape180: TQRShape
        Left = 63
        Top = 534
        Width = 574
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          166.687500000000000000
          1412.875000000000000000
          1518.708333333330000000)
        Pen.Color = clBlue
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRLabel141: TQRLabel
        Left = 92
        Top = 631
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          1669.520833333330000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#48277#51064#47749')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel142: TQRLabel
        Left = 92
        Top = 652
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          1725.083333333330000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49324#50629#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel143: TQRLabel
        Left = 92
        Top = 666
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          243.416666666667000000
          1762.125000000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51452'   '#49548
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel144: TQRLabel
        Left = 368
        Top = 590
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          973.666666666666900000
          1561.041666666667000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel145: TQRLabel
        Left = 368
        Top = 617
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          1632.479166666670000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49345'    '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel146: TQRLabel
        Left = 368
        Top = 631
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          1669.520833333330000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#48277#51064#47749')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel147: TQRLabel
        Left = 368
        Top = 652
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          1725.083333333330000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49324#50629#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel148: TQRLabel
        Left = 368
        Top = 666
        Width = 48
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          973.666666666667000000
          1762.125000000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51452'   '#49548
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel149: TQRLabel
        Left = 370
        Top = 693
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          978.958333333333000000
          1833.562500000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50629'   '#53468
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel150: TQRLabel
        Left = 475
        Top = 589
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1256.770833333330000000
          1558.395833333330000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel151: TQRLabel
        Left = 530
        Top = 589
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1402.291666666670000000
          1558.395833333330000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #12641
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape181: TQRShape
        Left = 267
        Top = 613
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          706.437500000000000000
          1621.895833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel152: TQRLabel
        Left = 317
        Top = 626
        Width = 20
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          838.729166666667000000
          1656.291666666670000000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape182: TQRShape
        Left = 544
        Top = 613
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1439.333333333330000000
          1621.895833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel153: TQRLabel
        Left = 548
        Top = 617
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1449.916666666670000000
          1632.479166666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49457' '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape183: TQRShape
        Left = 562
        Top = 613
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1486.958333333330000000
          1621.895833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel154: TQRLabel
        Left = 615
        Top = 626
        Width = 20
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1627.187500000000000000
          1656.291666666670000000
          52.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape184: TQRShape
        Left = 222
        Top = 682
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          587.375000000000000000
          1804.458333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel155: TQRLabel
        Left = 225
        Top = 688
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          595.312500000000000000
          1820.333333333330000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51333' '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape185: TQRShape
        Left = 240
        Top = 682
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          635.000000000000000000
          1804.458333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape186: TQRShape
        Left = 507
        Top = 682
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1341.437500000000000000
          1804.458333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRLabel156: TQRLabel
        Left = 510
        Top = 688
        Width = 14
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1349.375000000000000000
          1820.333333333330000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51333' '#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape187: TQRShape
        Left = 525
        Top = 682
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1389.062500000000000000
          1804.458333333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape188: TQRShape
        Left = 354
        Top = 735
        Width = 1
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          936.625000000000000000
          1944.687500000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object QRShape189: TQRShape
        Left = 479
        Top = 914
        Width = 2
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1267.354166666670000000
          2418.291666666670000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape190: TQRShape
        Left = 626
        Top = 913
        Width = 2
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          1656.291666666670000000
          2415.645833333330000000
          5.291666666666670000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape191: TQRShape
        Left = 73
        Top = 948
        Width = 554
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          193.145833333333000000
          2508.250000000000000000
          1465.791666666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape192: TQRShape
        Left = 64
        Top = 954
        Width = 573
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          169.333333333333000000
          2524.125000000000000000
          1516.062500000000000000)
        Pen.Color = clBlue
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object AA1: TQRLabel
        Left = 456
        Top = 541
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1206.500000000000000000
          1431.395833333330000000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'AA1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object AA2: TQRLabel
        Left = 552
        Top = 541
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1460.500000000000000000
          1431.395833333330000000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'AA2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object BB1: TQRLabel
        Left = 455
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1203.854166666670000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object BB2: TQRLabel
        Left = 476
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1259.416666666670000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object BB3: TQRLabel
        Left = 524
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1386.416666666670000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object BB4: TQRLabel
        Left = 548
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1449.916666666670000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object BB5: TQRLabel
        Left = 571
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1510.770833333330000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object BB6: TQRLabel
        Left = 595
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1574.270833333330000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC1: TQRLabel
        Left = 147
        Top = 588
        Width = 189
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          388.937500000000000000
          1555.750000000000000000
          500.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 13
      end
      object CC2: TQRLabel
        Left = 421
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1113.895833333330000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC3: TQRLabel
        Left = 439
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1161.520833333330000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC4: TQRLabel
        Left = 457
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1209.145833333330000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC5: TQRLabel
        Left = 493
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1304.395833333330000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC6: TQRLabel
        Left = 511
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1352.020833333330000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC7: TQRLabel
        Left = 548
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1449.916666666670000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC8: TQRLabel
        Left = 566
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1497.541666666670000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC9: TQRLabel
        Left = 585
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1547.812500000000000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC10: TQRLabel
        Left = 603
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1595.437500000000000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object CC11: TQRLabel
        Left = 621
        Top = 588
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1643.062500000000000000
          1555.750000000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object DD1: TQRLabel
        Left = 145
        Top = 614
        Width = 103
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          383.645833333333000000
          1624.541666666670000000
          272.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DD1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object DD3: TQRLabel
        Left = 271
        Top = 625
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          717.020833333333000000
          1653.645833333330000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DD3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DD4: TQRLabel
        Left = 422
        Top = 614
        Width = 120
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1116.541666666670000000
          1624.541666666670000000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DD4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object DD6: TQRLabel
        Left = 567
        Top = 625
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1500.187500000000000000
          1653.645833333330000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DD6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object EE1: TQRLabel
        Left = 145
        Top = 651
        Width = 193
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          383.645833333333000000
          1722.437500000000000000
          510.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'EE1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object EE2: TQRLabel
        Left = 424
        Top = 651
        Width = 208
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          1121.833333333330000000
          1722.437500000000000000
          550.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'EE2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object FF1: TQRLabel
        Left = 145
        Top = 687
        Width = 74
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          383.645833333333000000
          1817.687500000000000000
          195.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FF1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object FF2: TQRLabel
        Left = 245
        Top = 687
        Width = 93
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          648.229166666667000000
          1817.687500000000000000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FF2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object FF3: TQRLabel
        Left = 423
        Top = 687
        Width = 81
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1119.187500000000000000
          1817.687500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FF3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object FF4: TQRLabel
        Left = 529
        Top = 687
        Width = 103
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1399.645833333330000000
          1817.687500000000000000
          272.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FF4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object GG1: TQRLabel
        Left = 64
        Top = 760
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          169.333333333333000000
          2010.833333333330000000
          60.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG2: TQRLabel
        Left = 88
        Top = 760
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          232.833333333333000000
          2010.833333333330000000
          60.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG3: TQRLabel
        Left = 112
        Top = 760
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          296.333333333333000000
          2010.833333333330000000
          58.208333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG4: TQRLabel
        Left = 136
        Top = 760
        Width = 35
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          359.833333333333000000
          2010.833333333330000000
          92.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG5: TQRLabel
        Left = 174
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          460.375000000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG6: TQRLabel
        Left = 193
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          510.645833333333000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG7: TQRLabel
        Left = 212
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          560.916666666667000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG8: TQRLabel
        Left = 229
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          605.895833333333000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG9: TQRLabel
        Left = 248
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          656.166666666667000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG10: TQRLabel
        Left = 266
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          703.791666666667000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG11: TQRLabel
        Left = 284
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          751.416666666667000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG12: TQRLabel
        Left = 303
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          801.687500000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG13: TQRLabel
        Left = 321
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          849.312500000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG13'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG14: TQRLabel
        Left = 339
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          896.937500000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG14'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG15: TQRLabel
        Left = 357
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          944.562500000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG15'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG16: TQRLabel
        Left = 376
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          994.833333333333000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG16'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG17: TQRLabel
        Left = 394
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1042.458333333330000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG17'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG18: TQRLabel
        Left = 412
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1090.083333333330000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG18'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG19: TQRLabel
        Left = 431
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1140.354166666670000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG19'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG20: TQRLabel
        Left = 450
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1190.625000000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG20'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG21: TQRLabel
        Left = 468
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1238.250000000000000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG21'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG22: TQRLabel
        Left = 487
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1288.520833333330000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG23: TQRLabel
        Left = 505
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1336.145833333330000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG23'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG24: TQRLabel
        Left = 524
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1386.416666666670000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG24'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG25: TQRLabel
        Left = 542
        Top = 760
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1434.041666666670000000
          2010.833333333330000000
          34.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG25'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object GG26: TQRLabel
        Left = 562
        Top = 739
        Width = 71
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667000000
          1486.958333333330000000
          1955.270833333330000000
          187.854166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GG26'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object HH1: TQRLabel
        Left = 65
        Top = 809
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          2140.479166666670000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object KK1: TQRLabel
        Left = 65
        Top = 835
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          2209.270833333330000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object LL1: TQRLabel
        Left = 65
        Top = 860
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          2275.416666666670000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object MM1: TQRLabel
        Left = 65
        Top = 886
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          171.979166666667000000
          2344.208333333330000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object HH2: TQRLabel
        Left = 92
        Top = 809
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          2140.479166666670000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object KK2: TQRLabel
        Left = 92
        Top = 835
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          2209.270833333330000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object LL2: TQRLabel
        Left = 92
        Top = 860
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          2275.416666666670000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object MM2: TQRLabel
        Left = 92
        Top = 886
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          243.416666666667000000
          2344.208333333330000000
          66.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object HH3: TQRLabel
        Left = 122
        Top = 809
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          2140.479166666670000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object KK3: TQRLabel
        Left = 122
        Top = 835
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          2209.270833333330000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object LL3: TQRLabel
        Left = 122
        Top = 860
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          2275.416666666670000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object MM3: TQRLabel
        Left = 122
        Top = 886
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          2344.208333333330000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object HH4: TQRLabel
        Left = 267
        Top = 809
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          2140.479166666670000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object KK4: TQRLabel
        Left = 267
        Top = 835
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          2209.270833333330000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object LL4: TQRLabel
        Left = 267
        Top = 860
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          2275.416666666670000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object MM4: TQRLabel
        Left = 267
        Top = 886
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          706.437500000000000000
          2344.208333333330000000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object HH5: TQRLabel
        Left = 303
        Top = 811
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          2145.770833333330000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object KK5: TQRLabel
        Left = 303
        Top = 837
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          2214.562500000000000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LL5: TQRLabel
        Left = 303
        Top = 862
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          2280.708333333330000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MM5: TQRLabel
        Left = 303
        Top = 888
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          801.687500000000000000
          2349.500000000000000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object HH7: TQRLabel
        Left = 378
        Top = 811
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          2145.770833333330000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object KK7: TQRLabel
        Left = 378
        Top = 837
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          2214.562500000000000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LL7: TQRLabel
        Left = 378
        Top = 862
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          2280.708333333330000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MM7: TQRLabel
        Left = 378
        Top = 888
        Width = 98
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          2349.500000000000000000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object HH8: TQRLabel
        Left = 482
        Top = 811
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          2145.770833333330000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object KK8: TQRLabel
        Left = 482
        Top = 837
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          2214.562500000000000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LL8: TQRLabel
        Left = 482
        Top = 862
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          2280.708333333330000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MM8: TQRLabel
        Left = 482
        Top = 888
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1275.291666666670000000
          2349.500000000000000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object HH9: TQRLabel
        Left = 588
        Top = 811
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          2145.770833333330000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object KK9: TQRLabel
        Left = 588
        Top = 837
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          2214.562500000000000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LL9: TQRLabel
        Left = 588
        Top = 862
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          2280.708333333330000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MM9: TQRLabel
        Left = 588
        Top = 888
        Width = 46
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1555.750000000000000000
          2349.500000000000000000
          121.708333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object NN1: TQRLabel
        Left = 76
        Top = 934
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          201.083333333333000000
          2471.208333333330000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NN1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object NN2: TQRLabel
        Left = 156
        Top = 934
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          412.750000000000000000
          2471.208333333330000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NN2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object NN3: TQRLabel
        Left = 239
        Top = 934
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          632.354166666667000000
          2471.208333333330000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NN3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object NN4: TQRLabel
        Left = 322
        Top = 934
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          851.958333333333000000
          2471.208333333330000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NN4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object NN5: TQRLabel
        Left = 402
        Top = 934
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1063.625000000000000000
          2471.208333333330000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NN5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object HH6: TQRLabel
        Left = 340
        Top = 811
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          2145.770833333330000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'HH6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object KK6: TQRLabel
        Left = 340
        Top = 837
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          2214.562500000000000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KK6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LL6: TQRLabel
        Left = 340
        Top = 862
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          2280.708333333330000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LL6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MM6: TQRLabel
        Left = 340
        Top = 888
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          2349.500000000000000000
          89.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MM6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape193: TQRShape
        Left = 613
        Top = 25
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1621.895833333330000000
          66.145833333333300000
          2.645833333333330000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object B7: TQRLabel
        Left = 618
        Top = 27
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1635.125000000000000000
          71.437500000000000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape194: TQRShape
        Left = 613
        Top = 558
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1621.895833333330000000
          1476.375000000000000000
          2.645833333333330000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Shape = qrsVertLine
      end
      object BB7: TQRLabel
        Left = 618
        Top = 560
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1635.125000000000000000
          1481.666666666670000000
          37.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BB6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel134: TQRLabel
        Left = 553
        Top = 933
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1463.145833333330000000
          2468.562500000000000000
          97.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52397' '#44396
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel136: TQRLabel
        Left = 553
        Top = 917
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1463.145833333330000000
          2426.229166666670000000
          97.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50689' '#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object M6: TQRLabel
        Left = 340
        Top = 355
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          939.270833333333000000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L6: TQRLabel
        Left = 340
        Top = 329
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          870.479166666667000000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'L6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object K6: TQRLabel
        Left = 340
        Top = 304
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          804.333333333333000000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'K6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object H6: TQRLabel
        Left = 340
        Top = 278
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          899.583333333333000000
          735.541666666667000000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'H6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape199: TQRShape
        Left = 89
        Top = 41
        Width = 250
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          235.479166666667000000
          108.479166666667000000
          661.458333333333000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape200: TQRShape
        Left = 86
        Top = 44
        Width = 5
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          187.854166666667000000
          227.541666666667000000
          116.416666666667000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape201: TQRShape
        Left = 337
        Top = 44
        Width = 5
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          891.645833333333000000
          116.416666666667000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape203: TQRShape
        Left = 363
        Top = 45
        Width = 5
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          960.437500000000000000
          119.062500000000000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape202: TQRShape
        Left = 365
        Top = 42
        Width = 272
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          965.729166666667000000
          111.125000000000000000
          719.666666666667000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape204: TQRShape
        Left = 636
        Top = 45
        Width = 5
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          1682.750000000000000000
          119.062500000000000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape205: TQRShape
        Left = 64
        Top = 181
        Width = 495
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          169.333333333333000000
          478.895833333333000000
          1309.687500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape206: TQRShape
        Left = 63
        Top = 248
        Width = 495
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          166.687500000000000000
          656.166666666667000000
          1309.687500000000000000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape207: TQRShape
        Left = 556
        Top = 184
        Width = 5
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          1471.083333333330000000
          486.833333333333000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape208: TQRShape
        Left = 89
        Top = 576
        Width = 251
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          235.479166666667000000
          1524.000000000000000000
          664.104166666667000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape209: TQRShape
        Left = 337
        Top = 579
        Width = 5
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667000000
          891.645833333333000000
          1531.937500000000000000
          13.229166666666700000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape210: TQRShape
        Left = 87
        Top = 579
        Width = 5
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667000000
          230.187500000000000000
          1531.937500000000000000
          13.229166666666700000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape211: TQRShape
        Left = 365
        Top = 576
        Width = 273
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          965.729166666667000000
          1524.000000000000000000
          722.312500000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape212: TQRShape
        Left = 363
        Top = 578
        Width = 5
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          960.437500000000000000
          1529.291666666670000000
          13.229166666666700000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape213: TQRShape
        Left = 635
        Top = 578
        Width = 4
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          1680.104166666670000000
          1529.291666666670000000
          10.583333333333300000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 4
        Shape = qrsVertLine
      end
      object QRShape214: TQRShape
        Left = 62
        Top = 714
        Width = 497
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          164.041666666667000000
          1889.125000000000000000
          1314.979166666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape215: TQRShape
        Left = 62
        Top = 781
        Width = 497
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666700000
          164.041666666667000000
          2066.395833333330000000
          1314.979166666670000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsHorLine
      end
      object QRShape216: TQRShape
        Left = 556
        Top = 716
        Width = 5
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667000000
          1471.083333333330000000
          1894.416666666670000000
          13.229166666666700000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape218: TQRShape
        Left = 61
        Top = 184
        Width = 5
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          161.395833333333000000
          486.833333333333000000
          13.229166666666700000)
        Pen.Color = clRed
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape219: TQRShape
        Left = 635
        Top = 578
        Width = 5
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333300000
          1680.104166666670000000
          1529.291666666670000000
          13.229166666666700000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRShape217: TQRShape
        Left = 59
        Top = 716
        Width = 6
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667000000
          156.104166666667000000
          1894.416666666670000000
          15.875000000000000000)
        Pen.Color = clBlue
        Pen.Mode = pmMask
        Pen.Width = 5
        Shape = qrsVertLine
      end
      object QRLabel3: TQRLabel
        Left = 343
        Top = 79
        Width = 19
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          182.562500000000000000
          907.520833333333000000
          209.020833333333000000
          50.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #44277' '#44553' '#48155' '#45716' '#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 96
        Top = 10
        Width = 162
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          254.000000000000000000
          26.458333333333330000
          428.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464' '#44552' '#44228' '#49328' '#49436
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object D3: TQRLabel
        Left = 271
        Top = 92
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          717.020833333333000000
          243.416666666667000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'D3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 62
        Top = 2
        Width = 3
        Height = 421
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1113.895833333330000000
          164.041666666667000000
          5.291666666666670000
          7.937500000000000000)
        Pen.Color = clRed
        Pen.Width = 3
        Shape = qrsVertLine
      end
    end
  end
end
