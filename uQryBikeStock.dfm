object frmQryBikeStock: TfrmQryBikeStock
  Left = 279
  Top = 133
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #52264#47049#47784#45944#48324#51116#44256#51312#54924
  ClientHeight = 537
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 511
    Width = 455
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
    Top = 0
    Width = 455
    Height = 105
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 24
      Width = 120
      Height = 13
      AutoSize = False
      Caption = #52264#47049#47784#45944#47749
    end
    object Label1: TLabel
      Left = 17
      Top = 48
      Width = 80
      Height = 13
      AutoSize = False
      Caption = #50672#49885
    end
    object Label3: TLabel
      Left = 17
      Top = 72
      Width = 112
      Height = 13
      AutoSize = False
      Caption = #51228#51312#54924#49324
    end
    object Edit1: TEdit
      Left = 136
      Top = 20
      Width = 225
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 364
      Top = 19
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 1
      OnClick = BitBtn3Click
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
    object cbMF: TComboBox
      Left = 136
      Top = 68
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 2
    end
    object cbYear: TComboBox
      Left = 136
      Top = 44
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 455
    Height = 406
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 453
      Height = 352
      Align = alTop
      DataSource = DataSource1
      ImeName = #54620#44397#50612'('#54620#44544')'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = HANGEUL_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548#52404
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'model'
          Title.Alignment = taCenter
          Title.Caption = #47784#45944#47749
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'model_stock'
          Title.Caption = #52264#47049#51116#44256#49688
          Width = 266
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 360
      Top = 362
      Width = 81
      Height = 26
      Caption = #45803#44592'(&C)'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT'
      'model,'
      'sum(stock) as model_stock'
      'from bike'
      'group by model')
    Left = 4
    Top = 468
    object Query1model: TStringField
      FieldName = 'model'
      Origin = 'KORINSDB."bike.DB".MODEL'
      Size = 50
    end
    object Query1model_stock: TFloatField
      FieldName = 'model_stock'
      Origin = 'KORINSDB."bike.DB".STOCK'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 32
    Top = 468
  end
  object qry00: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select distinct built_company from bike')
    Left = 284
    Top = 68
    object qry00built_company: TStringField
      FieldName = 'built_company'
      Origin = 'KORINSDB."BIKE.DB".BUILT_COMPANY'
      Size = 30
    end
  end
end
