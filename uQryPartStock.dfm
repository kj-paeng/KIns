object frmQryPartStock: TfrmQryPartStock
  Left = 330
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #48512#54408#51116#44256#51312#54924#52636#47141
  ClientHeight = 537
  ClientWidth = 630
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 511
    Width = 630
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
    Width = 630
    Height = 103
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object pgcType: TPageControl
      Left = 0
      Top = 0
      Width = 630
      Height = 103
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = pgcTypeChange
      object TabSheet1: TTabSheet
        Caption = #48512#54408#51116#44256#51312#54924
        object Label2: TLabel
          Left = 17
          Top = 16
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #48512#54408#47749
        end
        object Label1: TLabel
          Left = 17
          Top = 43
          Width = 80
          Height = 13
          AutoSize = False
          Caption = #51116#44256#44592#51456
        end
        object Label8: TLabel
          Left = 181
          Top = 43
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #44060
        end
        object Edit2: TEdit
          Left = 96
          Top = 39
          Width = 81
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
          Text = '0'
        end
        object Edit1: TEdit
          Left = 96
          Top = 12
          Width = 225
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 1
          OnKeyDown = Edit1KeyDown
        end
        object cbStock: TComboBox
          Left = 208
          Top = 39
          Width = 113
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = #51060#54616' [<=]'
          Items.Strings = (
            #51060#54616' [<=]'
            #46041#51068' [ = ]'
            #51060#49345' [>=]')
        end
        object BitBtn3: TBitBtn
          Left = 334
          Top = 11
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 3
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
      end
      object TabSheet2: TTabSheet
        Caption = #48512#54408#50896#51109#52636#47141
        ImageIndex = 1
        object Label9: TLabel
          Left = 17
          Top = 16
          Width = 120
          Height = 13
          AutoSize = False
          Caption = #48512#54408#47749
        end
        object Edit3: TEdit
          Left = 96
          Top = 12
          Width = 225
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 0
          OnKeyDown = Edit1KeyDown
        end
        object BitBtn1: TBitBtn
          Left = 334
          Top = 11
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 1
          OnClick = BitBtn1Click
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
  object Panel2: TPanel
    Left = 0
    Top = 103
    Width = 630
    Height = 363
    Align = alClient
    TabOrder = 2
    object Label3: TLabel
      Left = 10
      Top = 236
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #48516#47448#47749
    end
    object Label4: TLabel
      Left = 10
      Top = 260
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #47784#45944#47749
    end
    object Label5: TLabel
      Left = 10
      Top = 284
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #48512#54408#47749
    end
    object Label6: TLabel
      Left = 10
      Top = 308
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #48512#54408#48264#54840
    end
    object Label7: TLabel
      Left = 10
      Top = 332
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #51116#44256#49688#47049
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 628
      Height = 224
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
          FieldName = 'category'
          Title.Alignment = taCenter
          Title.Caption = #48516#47448#47749
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'model_name'
          Title.Alignment = taCenter
          Title.Caption = #47784#45944#47749
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'part_name'
          Title.Alignment = taCenter
          Title.Caption = #48512#54408#47749
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'part_number'
          Title.Alignment = taCenter
          Title.Caption = #48512#54408#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stock'
          Title.Alignment = taCenter
          Title.Caption = #51116#44256#49688#47049
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 232
      Width = 121
      Height = 21
      DataField = 'category'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 256
      Width = 225
      Height = 21
      DataField = 'model_name'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 280
      Width = 121
      Height = 21
      DataField = 'part_name'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 304
      Width = 121
      Height = 21
      DataField = 'part_number'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 328
      Width = 121
      Height = 21
      DataField = 'stock'
      DataSource = DataSource1
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 466
    Width = 630
    Height = 45
    Align = alBottom
    TabOrder = 3
    object BitBtn2: TBitBtn
      Left = 536
      Top = 11
      Width = 81
      Height = 26
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object pnlPrintPanel: TPanel
      Left = 344
      Top = 7
      Width = 185
      Height = 32
      TabOrder = 1
      object btnPreview: TBitBtn
        Left = 14
        Top = 5
        Width = 81
        Height = 25
        Caption = #48120#47532#48372#44592
        TabOrder = 0
        OnClick = btnPreviewClick
      end
      object btnPrint: TBitBtn
        Left = 96
        Top = 5
        Width = 81
        Height = 25
        Caption = #52636#47141
        TabOrder = 1
        OnClick = btnPrintClick
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT seq, part_name, model_name, category, '
      'part_number, sell_price, '
      'purchase_price, stock from part ')
    Left = 4
    Top = 468
    object Query1seq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."part.DB".SEQ'
    end
    object Query1part_name: TStringField
      FieldName = 'part_name'
      Origin = 'KORINSDB."part.DB".PART_NAME'
      Size = 255
    end
    object Query1model_name: TStringField
      FieldName = 'model_name'
      Origin = 'KORINSDB."part.DB".MODEL_NAME'
      Size = 255
    end
    object Query1category: TStringField
      FieldName = 'category'
      Origin = 'KORINSDB."part.DB".CATEGORY'
      Size = 255
    end
    object Query1part_number: TStringField
      FieldName = 'part_number'
      Origin = 'KORINSDB."part.DB".PART_NUMBER'
      Size = 255
    end
    object Query1sell_price: TIntegerField
      FieldName = 'sell_price'
      Origin = 'KORINSDB."part.DB".SELL_PRICE'
    end
    object Query1purchase_price: TIntegerField
      FieldName = 'purchase_price'
      Origin = 'KORINSDB."part.DB".PURCHASE_PRICE'
    end
    object Query1stock: TIntegerField
      FieldName = 'stock'
      Origin = 'KORINSDB."part.DB".STOCK'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 32
    Top = 468
  end
end
