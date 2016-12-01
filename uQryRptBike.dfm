object frmQryRptBike: TfrmQryRptBike
  Left = 416
  Top = 240
  BorderStyle = bsSingle
  Caption = #52264#47049#50896#51109#52636#47141
  ClientHeight = 422
  ClientWidth = 463
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 17
    Top = 16
    Width = 120
    Height = 13
    AutoSize = False
    Caption = #52264#47049#47784#45944#47749
  end
  object Label1: TLabel
    Left = 17
    Top = 40
    Width = 80
    Height = 13
    AutoSize = False
    Caption = #50672#49885
  end
  object Label3: TLabel
    Left = 17
    Top = 64
    Width = 112
    Height = 13
    AutoSize = False
    Caption = #51228#51312#54924#49324
  end
  object Label4: TLabel
    Left = 245
    Top = 38
    Width = 16
    Height = 13
    AutoSize = False
    Caption = '~'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 360
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 0
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 360
    Width = 94
    Height = 25
    Caption = #48120#47532#48372#44592
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object cbYear: TComboBox
    Left = 136
    Top = 36
    Width = 97
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbYearChange
  end
  object cbMF: TComboBox
    Left = 136
    Top = 60
    Width = 225
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 136
    Top = 12
    Width = 225
    Height = 21
    ImeName = #54620#44397#50612'('#54620#44544')'
    TabOrder = 4
  end
  object BitBtn4: TBitBtn
    Left = 364
    Top = 11
    Width = 75
    Height = 25
    Caption = #51312#54924
    TabOrder = 5
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
  object cbYear2: TComboBox
    Left = 264
    Top = 36
    Width = 97
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 6
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 396
    Width = 463
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
    Top = 104
    Width = 463
    Height = 248
    DataSource = DataSource1
    ImeName = #54620#44397#50612'('#54620#44544')'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BUILT_YEAR'
        Title.Caption = #50672#49885
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BUILT_COMPANY'
        Title.Caption = #51228#51089#54924#49324
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODEL'
        Title.Alignment = taCenter
        Title.Caption = #47784#45944#47749
        Width = 200
        Visible = True
      end>
  end
  object qry00: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select distinct built_company from bike')
    Left = 364
    Top = 60
    object qry00built_company: TStringField
      FieldName = 'built_company'
      Origin = 'KORINSDB."BIKE.DB".BUILT_COMPANY'
      Size = 30
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT * from bike')
    Left = 12
    Top = 364
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'KORINSDB."bike.DB".SEQ'
    end
    object Query1VIN: TStringField
      FieldName = 'VIN'
      Origin = 'KORINSDB."bike.DB".VIN'
      Size = 100
    end
    object Query1ENGINE_ID: TStringField
      FieldName = 'ENGINE_ID'
      Origin = 'KORINSDB."bike.DB".ENGINE_ID'
      Size = 100
    end
    object Query1PLATE_NO: TStringField
      FieldName = 'PLATE_NO'
      Origin = 'KORINSDB."bike.DB".PLATE_NO'
      Size = 100
    end
    object Query1BUILT_YEAR: TStringField
      FieldName = 'BUILT_YEAR'
      Origin = 'KORINSDB."bike.DB".BUILT_YEAR'
      Size = 4
    end
    object Query1ENGINE_SIZE: TStringField
      FieldName = 'ENGINE_SIZE'
      Origin = 'KORINSDB."bike.DB".ENGINE_SIZE'
    end
    object Query1BUILT_COUNTRY: TStringField
      FieldName = 'BUILT_COUNTRY'
      Origin = 'KORINSDB."bike.DB".BUILT_COUNTRY'
    end
    object Query1BUILT_COMPANY: TStringField
      FieldName = 'BUILT_COMPANY'
      Origin = 'KORINSDB."bike.DB".BUILT_COMPANY'
      Size = 30
    end
    object Query1MODEL: TStringField
      FieldName = 'MODEL'
      Origin = 'KORINSDB."bike.DB".MODEL'
      Size = 50
    end
    object Query1SELL_PRICE: TIntegerField
      FieldName = 'SELL_PRICE'
      Origin = 'KORINSDB."bike.DB".SELL_PRICE'
    end
    object Query1PURCHASE_PRICE: TIntegerField
      FieldName = 'PURCHASE_PRICE'
      Origin = 'KORINSDB."bike.DB".PURCHASE_PRICE'
    end
    object Query1PHOTO1: TGraphicField
      FieldName = 'PHOTO1'
      Origin = 'KORINSDB."bike.DB".PHOTO1'
      BlobType = ftGraphic
    end
    object Query1PHOTO2: TGraphicField
      FieldName = 'PHOTO2'
      Origin = 'KORINSDB."bike.DB".PHOTO2'
      BlobType = ftGraphic
    end
    object Query1STATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'KORINSDB."bike.DB".STATUS'
    end
    object Query1STOCK: TIntegerField
      FieldName = 'STOCK'
      Origin = 'KORINSDB."bike.DB".STOCK'
    end
    object Query1MEMO: TMemoField
      FieldName = 'MEMO'
      Origin = 'KORINSDB."bike.DB".MEMO'
      BlobType = ftMemo
      Size = 240
    end
    object Query1BIKE_CODE: TStringField
      FieldName = 'BIKE_CODE'
      Origin = 'KORINSDB."bike.DB".BIKE_CODE'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 364
  end
end
