object frmBikeTrade: TfrmBikeTrade
  Left = 385
  Top = 268
  Width = 752
  Height = 659
  Caption = #51473#44256#52264#44144#47000#44288#47532
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
    Top = 400
    Width = 49
    Height = 13
    AutoSize = False
    Caption = #47588#46020#51088
  end
  object Label2: TLabel
    Left = 384
    Top = 402
    Width = 57
    Height = 13
    AutoSize = False
    Caption = #47588#49688#51088
  end
  object Label3: TLabel
    Left = 16
    Top = 197
    Width = 73
    Height = 13
    AutoSize = False
    Caption = #45824#49345#52264#47049
  end
  object Label11: TLabel
    Left = 448
    Top = 245
    Width = 56
    Height = 13
    AutoSize = False
    Caption = #44144#47000#44552#50529
  end
  object Label12: TLabel
    Left = 448
    Top = 221
    Width = 56
    Height = 13
    AutoSize = False
    Caption = #44144#47000#51068#51088
  end
  object Label13: TLabel
    Left = 450
    Top = 269
    Width = 46
    Height = 13
    AutoSize = False
    Caption = #48120#49688#44552
  end
  object Label14: TLabel
    Left = 448
    Top = 293
    Width = 58
    Height = 13
    AutoSize = False
    Caption = #44144#47000#51312#44148
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 424
    Width = 337
    Height = 145
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'customer_id'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_name'
        Title.Caption = #44256#44061#51060#47492
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumin_no'
        Title.Caption = #51452#48124#48264#54840
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Caption = #51452#49548
        Width = 200
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 384
    Top = 424
    Width = 337
    Height = 145
    DataSource = DataSource3
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'customer_id'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_name'
        Title.Caption = #44256#44061#51060#47492
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumin_no'
        Title.Caption = #51452#48124#48264#54840
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Caption = #51452#49548
        Width = 200
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 16
    Top = 224
    Width = 417
    Height = 153
    DataSource = DataSource4
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bike_id'
        Title.Caption = #52264#47049'ID'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = #52264#47049#47784#45944
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vin'
        Title.Caption = #52264#45824#48264#54840
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plate_no'
        Title.Caption = #48264#54840#54032
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 664
    Top = 216
    Width = 67
    Height = 25
    Caption = #44144#47000#46321#47197
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 640
    Top = 584
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 4
    Kind = bkClose
  end
  object DBGrid4: TDBGrid
    Left = 16
    Top = 16
    Width = 713
    Height = 145
    DataSource = DataSource0
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'auto_no'
        Title.Caption = #52264#47049'ID'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = #47784#45944#47749
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buy_date'
        Title.Caption = #44144#47000#51068#51088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buyer_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'buyer_name'
        Title.Caption = #44396#47588#51088#51060#47492
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buy_price'
        Title.Caption = #44396#51077#44552#50529
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seller_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'seller_name'
        Title.Caption = #54032#47588#51088#51060#47492
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_get_amt'
        Title.Caption = #48120#49688#44552
        Width = 100
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 80
    Top = 396
    Width = 105
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 189
    Top = 396
    Width = 121
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 448
    Top = 397
    Width = 102
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 554
    Top = 397
    Width = 121
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 9
  end
  object dtTrade: TDateTimePicker
    Left = 509
    Top = 218
    Width = 116
    Height = 21
    Date = 41116.952728043980000000
    Time = 41116.952728043980000000
    ImeName = 'Microsoft IME 2003'
    TabOrder = 10
  end
  object maskAmt: TMaskEdit
    Left = 510
    Top = 242
    Width = 146
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 11
  end
  object maskNoGetAmt: TMaskEdit
    Left = 510
    Top = 265
    Width = 147
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 12
  end
  object mmCondition: TMemo
    Left = 510
    Top = 288
    Width = 218
    Height = 89
    ImeName = 'Microsoft IME 2003'
    TabOrder = 13
  end
  object Edit5: TEdit
    Left = 104
    Top = 196
    Width = 105
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 14
  end
  object Edit6: TEdit
    Left = 213
    Top = 196
    Width = 121
    Height = 21
    Color = clYellow
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 15
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'select customer_id, jumin_no, customer_name, address_sigun + '#39' '#39 +
        ' + address_detail as address from customer')
    Left = 16
    Top = 576
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
    object Query1address: TStringField
      FieldName = 'address'
      Origin = 'KORINSDB."customer.DB".ADDRESS_SIGUN'
      Size = 255
    end
    object Query1customer_id: TStringField
      FieldName = 'customer_id'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_ID'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = Query1
    OnDataChange = DataSource2DataChange
    Left = 48
    Top = 576
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select customer_id, jumin_no, '
      'customer_name, address_sigun + '#39' '#39' + address_detail as address '
      'from customer'
      '')
    Left = 384
    Top = 576
  end
  object DataSource3: TDataSource
    DataSet = Query2
    OnDataChange = DataSource3DataChange
    Left = 416
    Top = 576
  end
  object Query3: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select bike_id, vin, '
      'built_year +'#39' '#39' + Built_company + '#39' '#39' + model as model,'
      'plate_no '
      'from bike')
    Left = 384
    Top = 192
    object Query3bike_id: TStringField
      FieldName = 'bike_id'
      Origin = 'KORINSDB."bike.DB".BIKE_ID'
      Size = 255
    end
    object Query3vin: TStringField
      FieldName = 'vin'
      Origin = 'KORINSDB."bike.DB".VIN'
      Size = 100
    end
    object Query3model: TStringField
      FieldName = 'model'
      Origin = 'KORINSDB."bike.DB".BUILT_YEAR'
      Size = 86
    end
    object Query3plate_no: TStringField
      FieldName = 'plate_no'
      Origin = 'KORINSDB."bike.DB".PLATE_NO'
      Size = 100
    end
  end
  object DataSource4: TDataSource
    DataSet = Query3
    OnDataChange = DataSource4DataChange
    Left = 416
    Top = 192
  end
  object Query0: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      
        'select a.auto_no, d.built_year + '#39' '#39' + d.model as model, a.buy_d' +
        'ate, a.buyer_id, b.customer_name as buyer_name, '
      
        'a.buy_price, a.no_get_amt, a.seller_id, c.customer_name as selle' +
        'r_name'
      'from tradebike a, customer b, customer c, bike d '
      'where a.buyer_id = b.customer_id and a.seller_id = c.customer_id'
      'and a.auto_no = d.bike_id'
      'and d.status != '#39#49888#52264#39)
    Left = 664
    Top = 8
    object Query0auto_no: TStringField
      FieldName = 'auto_no'
      Origin = 'KORINSDB."tradebike.DB".AUTO_NO'
      Size = 255
    end
    object Query0buy_date: TDateField
      FieldName = 'buy_date'
      Origin = 'KORINSDB."tradebike.DB".BUY_DATE'
    end
    object Query0buyer_name: TStringField
      FieldName = 'buyer_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object Query0buy_price: TFloatField
      FieldName = 'buy_price'
      Origin = 'KORINSDB."tradebike.DB".BUY_PRICE'
    end
    object Query0no_get_amt: TFloatField
      FieldName = 'no_get_amt'
      Origin = 'KORINSDB."tradebike.DB".NO_GET_AMT'
    end
    object Query0seller_name: TStringField
      FieldName = 'seller_name'
      Origin = 'KORINSDB."customer.DB".CUSTOMER_NAME'
      Size = 255
    end
    object Query0model: TStringField
      FieldName = 'model'
      Origin = 'KORINSDB."bike.DB".BUILT_YEAR'
      Size = 55
    end
    object Query0buyer_id: TStringField
      FieldName = 'buyer_id'
      Origin = 'KORINSDB."tradebike.DB".BUYER_ID'
      Size = 255
    end
    object Query0seller_id: TStringField
      FieldName = 'seller_id'
      Origin = 'KORINSDB."tradebike.DB".SELLER_ID'
      Size = 255
    end
  end
  object DataSource0: TDataSource
    DataSet = Query0
    Left = 664
    Top = 40
  end
  object qryTemp: TQuery
    DatabaseName = 'KorInsDB'
    Left = 664
    Top = 184
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'TRADEBIKE.db'
    Left = 696
    Top = 184
  end
end
