object frmRepairCustList: TfrmRepairCustList
  Left = 377
  Top = 177
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #44256#44061#48324' '#51221#48708' '#47785#47197' '#44160#49353
  ClientHeight = 532
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 506
    Width = 587
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
    Width = 587
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 16
      Width = 42
      Height = 13
      AutoSize = False
      Caption = #44256#44061#47749
    end
    object Edit1: TEdit
      Left = 80
      Top = 12
      Width = 345
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 428
      Top = 12
      Width = 75
      Height = 25
      Caption = #52286#44592
      Default = True
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 587
    Height = 457
    Align = alClient
    TabOrder = 2
    object DBGrid3: TDBGrid
      Left = 1
      Top = 280
      Width = 585
      Height = 136
      DataSource = DataSource3
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
          FieldName = 'customer_id'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061'ID'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seq'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'repair_desc'
          Title.Alignment = taCenter
          Title.Caption = #51221#48708#45236#50669
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'technician'
          Title.Alignment = taCenter
          Title.Caption = #45812#45817#44592#49324
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'repair_amt'
          Title.Alignment = taCenter
          Title.Caption = #49688#47532#44552#50529
          Width = 95
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 513
      Top = 423
      Width = 65
      Height = 26
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 585
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '     '#44256#44061#47785#47197
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 1
      Top = 260
      Width = 585
      Height = 19
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '     '#51221#48708#47785#47197
      TabOrder = 3
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 153
      Width = 585
      Height = 103
      Align = alTop
      DataSource = DataSource2
      ImeName = #54620#44397#50612'('#54620#44544')'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = HANGEUL_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548#52404
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'seq'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_number'
          Title.Alignment = taCenter
          Title.Caption = #52264#47049#48264#54840
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_vin'
          Title.Caption = #52264#45824#48264#54840
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bike_year'
          Title.Caption = #50672#49885
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'engine_size'
          Title.Caption = #50644#51652#53356#44592
          Width = 83
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 26
      Width = 585
      Height = 102
      Align = alTop
      DataSource = DataSource1
      ImeName = #54620#44397#50612'('#54620#44544')'
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = HANGEUL_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548#52404
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'customer_id'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061'ID'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'customer_name'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#47749
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jumin_no'
          Title.Caption = #51452#48124#48264#54840
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tel_no'
          Title.Caption = #51204#54868#48264#54840
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address_detail'
          Title.Caption = #49345#49464#51452#49548
          Width = 181
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 128
      Width = 585
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '     '#52264#47049#47785#47197
      TabOrder = 6
    end
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT customer_id, jumin_no, customer_name, tel_no, '
      'address_detail '
      'FROM customer')
    Left = 524
    Top = 60
    object Query1jumin_no: TStringField
      FieldName = 'jumin_no'
      Origin = 'KORINSDB."customer.DB".JUMIN_NO'
      Size = 14
    end
    object Query1customer_name: TStringField
      FieldName = 'customer_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object Query1tel_no: TStringField
      FieldName = 'tel_no'
      Origin = 'KORINSDB."customer.DB".TEL_NO'
      Size = 50
    end
    object Query1address_detail: TStringField
      FieldName = 'address_detail'
      Origin = 'KORINSDB."customer.DB".ADDRESS_DETAIL'
      Size = 255
    end
    object Query1customer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_ID'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 552
    Top = 60
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 552
    Top = 364
  end
  object Query3: TQuery
    AutoRefresh = True
    DatabaseName = 'KorInsDB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select customer_id, seq, repair_date, repair_desc, repair_amt, t' +
        'echnician '
      
        'from repairs where customer_id = :customer_id and bike_number = ' +
        ':bike_number')
    Left = 524
    Top = 364
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptUnknown
        Size = 256
      end
      item
        DataType = ftString
        Name = 'bike_number'
        ParamType = ptInput
      end>
    object Query3customer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."repairs.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query3seq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."repairs.DB".SEQ'
    end
    object Query3repair_date: TStringField
      FieldName = 'repair_date'
      Origin = 'KORINSDB."repairs.DB".REPAIR_DATE'
      Size = 8
    end
    object Query3repair_desc: TStringField
      FieldName = 'repair_desc'
      Origin = 'KORINSDB."repairs.DB".REPAIR_DESC'
      Size = 255
    end
    object Query3repair_amt: TFloatField
      FieldName = 'repair_amt'
      Origin = 'KORINSDB."repairs.DB".REPAIR_AMT'
    end
    object Query3technician: TStringField
      FieldName = 'technician'
      Origin = 'KORINSDB."repairs.DB".TECHNICIAN'
      Size = 100
    end
  end
  object Query2: TQuery
    AfterScroll = Query2AfterScroll
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'SELECT customer_id, seq, bike_number, bike_vin, bike_year, engin' +
        'e_size '
      'FROM cust_bikes'
      'where customer_id = :customer_id')
    Left = 524
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_id'
        ParamType = ptInput
      end>
    object Query2customer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."cust_bikes.DB".CUSTOMER_ID'
      Size = 255
    end
    object Query2seq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."cust_bikes.DB".SEQ'
    end
    object Query2bike_number: TStringField
      FieldName = 'bike_number'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_NUMBER'
      Size = 255
    end
    object Query2bike_vin: TStringField
      FieldName = 'bike_vin'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_VIN'
      Size = 100
    end
    object Query2bike_year: TStringField
      FieldName = 'bike_year'
      Origin = 'KORINSDB."cust_bikes.DB".BIKE_YEAR'
      Size = 4
    end
    object Query2engine_size: TStringField
      FieldName = 'engine_size'
      Origin = 'KORINSDB."cust_bikes.DB".ENGINE_SIZE'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 552
    Top = 220
  end
end
