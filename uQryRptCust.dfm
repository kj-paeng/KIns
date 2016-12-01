object frmQryRptCust: TfrmQryRptCust
  Left = 197
  Top = 112
  BorderStyle = bsSingle
  Caption = #44256#44061#52636#47141#44288#47532
  ClientHeight = 504
  ClientWidth = 622
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
    Width = 622
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
    Width = 622
    Height = 44
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 526
      Top = 11
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 272
      Top = 12
      Width = 75
      Height = 25
      Caption = #48120#47532#48372#44592
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Tag = 1
      Left = 348
      Top = 12
      Width = 75
      Height = 25
      Caption = #52636#47141
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 196
      Top = 12
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 169
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 439
      Top = 60
      Width = 14
      Height = 13
      AutoSize = False
      Caption = #49464
      Visible = False
    end
    object edtName: TEdit
      Left = 107
      Top = 55
      Width = 158
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
    end
    object rgType: TRadioGroup
      Left = 108
      Top = 121
      Width = 413
      Height = 32
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #44256#44061#47749#45800
        #44256#44061#52852#46300'('#49345#49464')'
        #50864#54200#48393#53804)
      TabOrder = 1
    end
    object Panel9: TPanel
      Left = 8
      Top = 54
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
      Left = 8
      Top = 129
      Width = 98
      Height = 23
      Caption = #52636#47141#54805#53468
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object rgCategory: TRadioGroup
      Left = 108
      Top = 6
      Width = 497
      Height = 35
      Color = clBtnFace
      Columns = 2
      Ctl3D = True
      ItemIndex = 0
      Items.Strings = (
        #51204#52404
        #48276#50948#51648#51221)
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      OnClick = rgCategoryClick
    end
    object Panel5: TPanel
      Left = 8
      Top = 13
      Width = 98
      Height = 23
      Caption = #52636#47141#48276#50948#49444#51221
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Panel6: TPanel
      Left = 8
      Top = 103
      Width = 98
      Height = 23
      Caption = #45812#45817#51088#48324
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel7: TPanel
      Left = 296
      Top = 55
      Width = 98
      Height = 23
      Caption = #50672' '#47161' '#48324
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object Panel8: TPanel
      Left = 8
      Top = 79
      Width = 98
      Height = 23
      Caption = #51452#49548'('#49884#44400#44396')'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtAddr: TEdit
      Left = 107
      Top = 80
      Width = 497
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 9
    end
    object cboEmp: TComboBox
      Left = 108
      Top = 104
      Width = 157
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        #51204#52404)
    end
    object cboEqual: TComboBox
      Left = 472
      Top = 56
      Width = 132
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = '= ('#54644#45817#50672#47161#47564')'
      Visible = False
      Items.Strings = (
        '= ('#54644#45817#50672#47161#47564')'
        '>= ('#49464' '#51060#49345')'
        '<= ('#49464' '#51060#54616')')
    end
    object edtAge: TMaskEdit
      Left = 396
      Top = 56
      Width = 29
      Height = 21
      EditMask = '00'
      ImeName = 'Microsoft IME 2003'
      MaxLength = 2
      TabOrder = 12
      Text = '  '
      Visible = False
    end
    object cboAttach: TComboBox
      Left = 525
      Top = 129
      Width = 79
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 13
      Text = #44480#54616
      Items.Strings = (
        #44480#54616
        #44480#51473
        #45784#44760
        #44256#44061#45784#44760
        #49440#49373#45784
        #49324#51109#45784
        #48512#51109#45784
        #44368#49688#45784)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 169
    Width = 622
    Height = 265
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 620
      Height = 263
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
      Columns = <
        item
          Expanded = False
          FieldName = 'CUSTOMER_ID'
          Title.Caption = #50672#49885
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CUSTOMER_NAME'
          Title.Caption = #44256#44061#51060#47492
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUMIN_NO'
          Title.Alignment = taCenter
          Title.Caption = #51452#48124#48264#54840
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEL_NO'
          Title.Caption = #51204#54868#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS_SIGUN'
          Title.Caption = #51452#49548'('#49884#44400#44396')'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS_DETAIL'
          Title.Caption = #49345#49464#51452#49548
          Width = 214
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUSINESS_NO'
          Title.Caption = #49324#50629#51088#46321#47197#48264#54840
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUS_TYPE'
          Title.Caption = #50629#53468
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUS_JONG'
          Title.Caption = #50629#51333
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMP_CHARGE'
          Title.Caption = #45812#45817#51649#50896
          Width = 70
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT * from customer')
    Left = 12
    Top = 364
    object Query1JUMIN_NO: TStringField
      FieldName = 'JUMIN_NO'
      Origin = 'KORINSDB."customer.DB".JUMIN_NO'
      Size = 14
    end
    object Query1CUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object Query1COMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'KORINSDB."customer.DB".COMPANY_NAME'
      Size = 255
    end
    object Query1TEL_NO: TStringField
      FieldName = 'TEL_NO'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object Query1CELL_NO: TStringField
      FieldName = 'CELL_NO'
      Origin = 'KORINSDB."customer.DB".CELL_NO'
      Size = 50
    end
    object Query1ZIP_CODE: TStringField
      FieldName = 'ZIP_CODE'
      Origin = 'KORINSDB."customer.DB".ZIP_CODE'
      Size = 50
    end
    object Query1ADDRESS_DETAIL: TStringField
      FieldName = 'ADDRESS_DETAIL'
      Origin = 'KORINSDB."customer.DB".ADDRESS_DETAIL'
      Size = 255
    end
    object Query1ADDRESS_SIGUN: TStringField
      FieldName = 'ADDRESS_SIGUN'
      Origin = 'KORINSDB."customer.DB".ADDRESS_SIGUN'
      Size = 255
    end
    object Query1FAX_NO: TStringField
      FieldName = 'FAX_NO'
      Origin = 'KORINSDB."customer.DB".FAX_NO'
      Size = 50
    end
    object Query1EMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'KORINSDB."customer.DB".EMAIL'
      Size = 100
    end
    object Query1HOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'KORINSDB."customer.DB".HOMEPAGE'
      Size = 255
    end
    object Query1EMP_CHARGE: TStringField
      FieldName = 'EMP_CHARGE'
      Origin = 'KORINSDB."customer.DB".EMP_CHARGE'
      Size = 255
    end
    object Query1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query1BUSINESS_NO: TStringField
      FieldName = 'BUSINESS_NO'
      Origin = 'KORINSDB."customer.DB".BUSINESS_NO'
      Size = 50
    end
    object Query1BUS_TYPE: TStringField
      FieldName = 'BUS_TYPE'
      Origin = 'KORINSDB."customer.DB".BUS_TYPE'
      Size = 50
    end
    object Query1BUS_JONG: TStringField
      FieldName = 'BUS_JONG'
      Origin = 'KORINSDB."customer.DB".BUS_JONG'
      Size = 50
    end
    object Query1CUSTOMER_TYPE: TIntegerField
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_TYPE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 364
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT distinct emp_charge from customer')
    Left = 12
    Top = 100
    object Query2emp_charge: TStringField
      FieldName = 'emp_charge'
      Origin = 'KORINSDB."customer.DB".EMP_CHARGE'
      Size = 255
    end
  end
end
