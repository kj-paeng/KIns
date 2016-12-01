object frmQryRptPart: TfrmQryRptPart
  Left = 382
  Top = 179
  BorderStyle = bsSingle
  Caption = #48512#54408#50896#51109#52636#47141
  ClientHeight = 422
  ClientWidth = 403
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 17
    Top = 16
    Width = 72
    Height = 13
    AutoSize = False
    Caption = #48512#54408#47749
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 360
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 0
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 360
    Width = 94
    Height = 25
    Caption = #48120#47532#48372#44592
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 12
    Width = 225
    Height = 21
    ImeName = #54620#44397#50612'('#54620#44544')'
    TabOrder = 2
  end
  object BitBtn4: TBitBtn
    Left = 308
    Top = 11
    Width = 75
    Height = 25
    Caption = #51312#54924
    TabOrder = 3
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 396
    Width = 403
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 463
    Height = 296
    DataSource = DataSource1
    ImeName = #54620#44397#50612'('#54620#44544')'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PART_ID'
        Title.Caption = #50672#49885
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PART_NAME'
        Title.Caption = #48512#54408#47749
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PART_GET_PRICE'
        Title.Alignment = taCenter
        Title.Caption = #44396#51077#44032#44201
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PART_PRICE'
        Title.Alignment = taCenter
        Title.Caption = #54032#47588#44032#44201
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOCK'
        Title.Caption = #51116#44256#47049
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT * from part')
    Left = 12
    Top = 364
    object Query1PART_ID: TStringField
      FieldName = 'PART_ID'
      Origin = 'KORINSDB."part.DB".PART_ID'
      Size = 255
    end
    object Query1PART_NAME: TStringField
      FieldName = 'PART_NAME'
      Origin = 'KORINSDB."part.DB".PART_NAME'
      Size = 255
    end
    object Query1PART_PRICE: TFloatField
      FieldName = 'PART_PRICE'
      Origin = 'KORINSDB."part.DB".PART_PRICE'
      currency = True
    end
    object Query1PART_GET_PRICE: TFloatField
      FieldName = 'PART_GET_PRICE'
      Origin = 'KORINSDB."part.DB".PART_GET_PRICE'
      currency = True
    end
    object Query1PART_PHOTO1: TGraphicField
      FieldName = 'PART_PHOTO1'
      Origin = 'KORINSDB."part.DB".PART_PHOTO1'
      BlobType = ftGraphic
    end
    object Query1PART_PHOTO2: TGraphicField
      FieldName = 'PART_PHOTO2'
      Origin = 'KORINSDB."part.DB".PART_PHOTO2'
      BlobType = ftGraphic
    end
    object Query1STOCK: TFloatField
      FieldName = 'STOCK'
      Origin = 'KORINSDB."part.DB".STOCK'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 364
  end
end
