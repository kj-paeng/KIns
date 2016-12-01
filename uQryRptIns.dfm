object frmQryRptIns: TfrmQryRptIns
  Left = 335
  Top = 226
  BorderStyle = bsSingle
  Caption = #48372#54744#47564#44592#51312#54924
  ClientHeight = 504
  ClientWidth = 674
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 478
    Width = 674
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
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 674
    Height = 44
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 582
      Top = 11
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 429
      Top = 11
      Width = 75
      Height = 25
      Caption = #48120#47532#48372#44592
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Tag = 1
      Left = 505
      Top = 11
      Width = 75
      Height = 25
      Caption = #52636#47141
      TabOrder = 2
      Visible = False
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 674
    Height = 97
    Align = alTop
    TabOrder = 2
    object edtName: TEdit
      Left = 115
      Top = 15
      Width = 158
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
    end
    object rgType: TRadioGroup
      Left = 117
      Top = 37
      Width = 372
      Height = 36
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #47564#44592'30'#51068#51204
        #47564#44592'15'#51068#51204
        #47564#44592'7'#51068#51204)
      TabOrder = 1
    end
    object Panel9: TPanel
      Left = 16
      Top = 14
      Width = 98
      Height = 23
      Caption = #44256#44061#51060#47492
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 16
      Top = 44
      Width = 98
      Height = 23
      Caption = #47564#44592#44396#48516
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 580
      Top = 44
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 4
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 97
    Width = 674
    Height = 337
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 672
      Height = 335
      Align = alClient
      DataSource = DataSource1
      ImeName = #54620#44397#50612'('#54620#44544')'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548#52404
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'customer_name'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#51060#47492
          Width = 100
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
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIKE_NUMBER'
          Title.Alignment = taCenter
          Title.Caption = #52264#47049#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIKE_VIN'
          Title.Alignment = taCenter
          Title.Caption = #52264#45824#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIKE_INSURER'
          Title.Alignment = taCenter
          Title.Caption = #48372#54744#49324
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INS_END'
          Title.Alignment = taCenter
          Title.Caption = #48372#54744#47564#44592#51068
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTOMER_ID'
          Visible = False
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT a.*, b.customer_name from cust_bikes as a, customer as b '
      'WHERE a.customer_id = b.customer_id')
    Left = 12
    Top = 364
    object Query1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Origin = 'KORINSDB."cust_bikes.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'KORINSDB."cust_bikes.DB".SEQ'
    end
    object Query1BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_NUMBER'
      Size = 255
    end
    object Query1BIKE_TYPE: TStringField
      FieldName = 'BIKE_TYPE'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_TYPE'
      Size = 255
    end
    object Query1BIKE_VIN: TStringField
      FieldName = 'BIKE_VIN'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_VIN'
      Size = 100
    end
    object Query1ENGINE_SIZE: TStringField
      FieldName = 'ENGINE_SIZE'
      Origin = 'KORINSDB."cust_bikes.DB".ENGINE_SIZE'
      Size = 50
    end
    object Query1BIKE_YEAR: TStringField
      FieldName = 'BIKE_YEAR'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_YEAR'
      Size = 4
    end
    object Query1BIKE_OIL_TYPE: TStringField
      FieldName = 'BIKE_OIL_TYPE'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_OIL_TYPE'
      Size = 100
    end
    object Query1BIKE_COLOR: TStringField
      FieldName = 'BIKE_COLOR'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_COLOR'
      Size = 100
    end
    object Query1BIKE_INSURER: TStringField
      FieldName = 'BIKE_INSURER'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_INSURER'
      Size = 100
    end
    object Query1BIKE_PHOTO: TGraphicField
      FieldName = 'BIKE_PHOTO'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_PHOTO'
      BlobType = ftGraphic
    end
    object Query1INS_START: TStringField
      FieldName = 'INS_START'
      Origin = 'KORINSDB."cust_bikes.DB".INS_START'
      Size = 8
    end
    object Query1INS_END: TStringField
      FieldName = 'INS_END'
      Origin = 'KORINSDB."cust_bikes.DB".INS_END'
      Size = 8
    end
    object Query1BIKE_REG_DATE: TStringField
      FieldName = 'BIKE_REG_DATE'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_REG_DATE'
      Size = 8
    end
    object Query1BIKE_MODEL_NAME: TStringField
      FieldName = 'BIKE_MODEL_NAME'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_MODEL_NAME'
      Size = 100
    end
    object Query1MILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Origin = 'KORINSDB."cust_bikes.DB".MILEAGE'
    end
    object Query1customer_name: TStringField
      FieldName = 'customer_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 364
  end
end
