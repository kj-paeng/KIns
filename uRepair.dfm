object frmRepair: TfrmRepair
  Left = 200
  Top = 58
  Width = 890
  Height = 674
  Caption = 'AS'#44288#47532
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #44256#44061#47785#47197
  end
  object Label2: TLabel
    Left = 352
    Top = 16
    Width = 73
    Height = 13
    AutoSize = False
    Caption = 'AS'#44592#47197
  end
  object Label3: TLabel
    Left = 344
    Top = 320
    Width = 113
    Height = 13
    AutoSize = False
    Caption = #49324#50857#46108' '#48512#54408#45236#50669
  end
  object Label4: TLabel
    Left = 134
    Top = 16
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49440#53469' '#44256#44061
  end
  object Label5: TLabel
    Left = 352
    Top = 157
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49688#47532#51068#51088
  end
  object Label6: TLabel
    Left = 352
    Top = 181
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49688#47532#44552#50529
  end
  object Label7: TLabel
    Left = 352
    Top = 205
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49688#44552#50529
  end
  object Label8: TLabel
    Left = 352
    Top = 229
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #48120#49688#44552
  end
  object Label9: TLabel
    Left = 576
    Top = 157
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49688#47532#45236#50669
  end
  object Label10: TLabel
    Left = 352
    Top = 493
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #48512#54408#53076#46300
  end
  object Label11: TLabel
    Left = 352
    Top = 517
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #48512#54408#47749
  end
  object Label12: TLabel
    Left = 352
    Top = 541
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #49688#47049
  end
  object Label13: TLabel
    Left = 352
    Top = 565
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #54032#47588#45800#44032
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 321
    Height = 593
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CUSTOMER_ID'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOMER_NAME'
        Title.Caption = #44256#44061#47749
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUMIN_NO'
        Title.Caption = #51452#48124#48264#54840
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_NO'
        Title.Caption = #51204#54868#48264#54840
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELL_NO'
        Title.Caption = #55092#45824#54256
        Width = 70
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 352
    Top = 32
    Width = 513
    Height = 113
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CUSTOMER_ID'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPAIR_DATE'
        Title.Caption = #49688#47532#51068#51088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPAIR_AMT'
        Title.Caption = #49688#47532#44552#50529
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEIVED_AMT'
        Title.Caption = #49688#44552#50529
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NO_RECEIVED_AMT'
        Title.Caption = #48120#49688#44552
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPAIR_DESC'
        Title.Caption = #49688#47532#45236#50669
        Visible = False
      end>
  end
  object DBGrid3: TDBGrid
    Left = 344
    Top = 336
    Width = 513
    Height = 145
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PART_ID'
        Title.Caption = #48512#54408#53076#46300
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARTNAME'
        Title.Caption = #48512#54408#47749
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PART_COUNT'
        Title.Caption = #49688#47049
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNITPRICE'
        Title.Caption = #54032#47588#45800#44032
        Width = 100
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 209
    Top = 9
    Width = 121
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 3
  end
  object Button1: TButton
    Left = 456
    Top = 256
    Width = 75
    Height = 25
    Caption = 'AS'#52628#44032
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 531
    Top = 256
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 606
    Top = 256
    Width = 75
    Height = 25
    Caption = 'AS'#51648#50864#44592
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 456
    Top = 600
    Width = 75
    Height = 25
    Caption = #48512#54408#52628#44032
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 606
    Top = 600
    Width = 75
    Height = 25
    Caption = #48512#54408#51648#50864#44592
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button8: TButton
    Left = 530
    Top = 600
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 9
    OnClick = Button8Click
  end
  object BitBtn1: TBitBtn
    Left = 800
    Top = 600
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  object DBMemo1: TDBMemo
    Left = 656
    Top = 152
    Width = 209
    Height = 97
    DataField = 'USED_PARTS_DESC'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 328
    Top = 152
    Width = 22
    Height = 21
    DataField = 'REPAIR_DATE'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 12
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 432
    Top = 176
    Width = 134
    Height = 21
    DataField = 'REPAIR_AMT'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 13
  end
  object DBEdit3: TDBEdit
    Left = 432
    Top = 200
    Width = 134
    Height = 21
    DataField = 'RECEIVED_AMT'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 14
  end
  object DBEdit4: TDBEdit
    Left = 432
    Top = 224
    Width = 134
    Height = 21
    DataField = 'NO_RECEIVED_AMT'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 15
  end
  object dtRepairDate: TDateTimePicker
    Left = 432
    Top = 152
    Width = 137
    Height = 21
    Date = 41122.731208043980000000
    Time = 41122.731208043980000000
    ImeName = 'Microsoft IME 2003'
    TabOrder = 16
  end
  object DBEdit5: TDBEdit
    Left = 432
    Top = 488
    Width = 100
    Height = 21
    DataField = 'PART_ID'
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    TabOrder = 17
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 432
    Top = 512
    Width = 200
    Height = 21
    Color = clYellow
    DataField = 'PARTNAME'
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 18
  end
  object DBEdit6: TDBEdit
    Left = 432
    Top = 536
    Width = 134
    Height = 21
    DataField = 'PART_COUNT'
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    TabOrder = 19
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 432
    Top = 560
    Width = 144
    Height = 21
    Color = clYellow
    DataField = 'UNITPRICE'
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 20
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnDataChange = DataSource1DataChange
    Left = 136
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = Table2
    OnDataChange = DataSource2DataChange
    Left = 832
    Top = 8
  end
  object Table2: TTable
    BeforePost = Table2BeforePost
    DatabaseName = 'KorInsDB'
    IndexFieldNames = 'CUSTOMER_ID'
    MasterFields = 'CUSTOMER_ID'
    MasterSource = DataSource1
    TableName = 'REPAIRS.db'
    Left = 800
    Top = 8
    object Table2CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table2REPAIR_DATE: TDateField
      FieldName = 'REPAIR_DATE'
    end
    object Table2REPAIR_DESC: TMemoField
      FieldName = 'REPAIR_DESC'
      BlobType = ftMemo
      Size = 240
    end
    object Table2REPAIR_AMT: TCurrencyField
      FieldName = 'REPAIR_AMT'
    end
    object Table2NO_RECEIVED_AMT: TCurrencyField
      FieldName = 'NO_RECEIVED_AMT'
    end
    object Table2RECEIVED_AMT: TCurrencyField
      FieldName = 'RECEIVED_AMT'
    end
    object Table2USED_PARTS_DESC: TMemoField
      FieldName = 'USED_PARTS_DESC'
      BlobType = ftMemo
      Size = 240
    end
  end
  object Table3: TTable
    BeforePost = Table3BeforePost
    OnCalcFields = Table3CalcFields
    DatabaseName = 'KorInsDB'
    IndexFieldNames = 'CUSTOMER_ID;REPAIR_DATE'
    MasterFields = 'CUSTOMER_ID;REPAIR_DATE'
    MasterSource = DataSource2
    TableName = 'REPAIRPARTS.DB'
    Left = 792
    Top = 328
    object Table3CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table3REPAIR_DATE: TDateField
      FieldName = 'REPAIR_DATE'
    end
    object Table3PART_ID: TStringField
      FieldName = 'PART_ID'
      Size = 255
    end
    object Table3PART_COUNT: TFloatField
      FieldName = 'PART_COUNT'
    end
    object Table3PARTNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PARTNAME'
      LookupDataSet = Query4
      LookupKeyFields = 'part_id'
      LookupResultField = 'part_name'
      KeyFields = 'PART_ID'
      Size = 255
      Lookup = True
    end
    object Table3UNITPRICE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'UNITPRICE'
      LookupDataSet = Query4
      LookupKeyFields = 'part_id'
      LookupResultField = 'part_price'
      KeyFields = 'PART_ID'
      Lookup = True
    end
    object Table3TUNITAMT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TUNITAMT'
      Calculated = True
    end
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 824
    Top = 328
  end
  object DataSource4: TDataSource
    Left = 824
    Top = 360
  end
  object Query4: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select part_id, part_name, part_price, part_get_price'
      'from part')
    Left = 792
    Top = 360
    object Query4part_id: TStringField
      FieldName = 'part_id'
      Origin = 'KORINSDB."part.DB".PART_ID'
      Size = 255
    end
    object Query4part_name: TStringField
      FieldName = 'part_name'
      Origin = 'KORINSDB."part.DB".PART_NAME'
      Size = 255
    end
    object Query4part_price: TFloatField
      FieldName = 'part_price'
      Origin = 'KORINSDB."part.DB".PART_PRICE'
      currency = True
    end
    object Query4part_get_price: TFloatField
      FieldName = 'part_get_price'
      Origin = 'KORINSDB."part.DB".PART_GET_PRICE'
      currency = True
    end
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'CUSTOMER.db'
    Left = 104
    Top = 8
  end
end
