object frmPrevention: TfrmPrevention
  Left = 162
  Top = 139
  BorderStyle = bsSingle
  Caption = #50696#48169#51221#48708#51068#51221#51089#49457
  ClientHeight = 520
  ClientWidth = 735
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 186
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 265
      Height = 170
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
          Title.Alignment = taCenter
          Title.Caption = #44256#44061'ID'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTOMER_NAME'
          Title.Alignment = taCenter
          Title.Caption = #44256#44061#47749
          Width = 141
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 296
      Top = 8
      Width = 425
      Height = 170
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
          Title.Alignment = taCenter
          Title.Caption = #44256#44061'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BIKE_NUMBER'
          Title.Alignment = taCenter
          Title.Caption = #52264#48264#54840
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIKE_YEAR'
          Title.Alignment = taCenter
          Title.Caption = #50672#49885
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIKE_MODEL_NAME'
          Title.Alignment = taCenter
          Title.Caption = #47784#45944#47749
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MILEAGE'
          Title.Alignment = taCenter
          Title.Caption = #50672#44036#50868#54665#44144#47532
          Width = 93
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 475
    Width = 735
    Height = 45
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 624
      Top = 10
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkClose
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 186
    Width = 735
    Height = 289
    Align = alClient
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 8
      Top = 8
      Width = 185
      Height = 25
      Caption = #44256#44061#48324' '#50696#48169#51221#48708#51068#51221#51089#49457
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object DBGrid3: TDBGrid
      Left = 8
      Top = 40
      Width = 265
      Height = 233
      DataSource = DataSource3
      ImeName = 'Microsoft IME 2003'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRNAME'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #50696#48169#51221#48708#45236#50669
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDATE'
          Title.Alignment = taCenter
          Title.Caption = #50696#48169#51221#48708#51068#51088
          Width = 96
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 296
      Top = 88
      Width = 425
      Height = 182
      BevelInner = bvLowered
      TabOrder = 2
      object Label2: TLabel
        Left = 27
        Top = 156
        Width = 78
        Height = 13
        Caption = #51204#52404#51652#54665#49345#54889
      end
      object Label1: TLabel
        Left = 26
        Top = 132
        Width = 104
        Height = 13
        Caption = #54788#51116#44256#44061#51652#54665#49345#54889
      end
      object pBar1: TProgressBar
        Left = 138
        Top = 152
        Width = 257
        Height = 17
        TabOrder = 0
      end
      object pBar2: TProgressBar
        Left = 138
        Top = 128
        Width = 257
        Height = 17
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 24
        Top = 16
        Width = 185
        Height = 25
        Caption = #51204#44256#44061' '#50696#48169#51221#48708#51068#51221#51089#49457
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object Memo1: TMemo
        Left = 24
        Top = 48
        Width = 369
        Height = 73
        Alignment = taCenter
        BevelInner = bvLowered
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = clBtnFace
        ImeName = 'Microsoft IME 2003'
        Lines.Strings = (
          ''
          #51204#44256#44061' '#50696#48169#51221#48708' '#51068#51221' '#51089#49457#51012' '#49892#54665#54616#47732
          #44592#51316' '#50696#48169#51221#48708' '#51068#51221' '#51088#47308#45716' '#47784#46160' '
          #51648#50892#51648#44256' '#49352#47196#50868' '#50696#48169#51221#48708' '#51068#51221' '#51088#47308#44032
          #49373#49457#46121#45768#45796'.')
        ReadOnly = True
        TabOrder = 3
      end
    end
    object Memo2: TMemo
      Left = 296
      Top = 10
      Width = 425
      Height = 64
      Alignment = taCenter
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      Lines.Strings = (
        '***** '#50696#48169#51221#48708#51068#51221#51089#49457#51012' '#50948#54644#49436#45716' *****'
        #44033' '#44256#44061#51032' '#52264#47049#48324' '#50672#44036#50868#54665#44144#47532', '#54788#51116#50868#54665#44144#47532', '
        #54788#51116#50868#54665#44144#47532' '#51089#49457#51068#51088#47484' '#44256#44061#44288#47532#51032' '#52264#47049#54637#47785#50640#49436' '
        #51077#47141#54644#50556' '#54633#45768#45796'.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'CUSTOMER.DB'
    Left = 208
    Top = 128
    object Table1CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table1CUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 240
    Top = 128
  end
  object qryRun: TQuery
    DatabaseName = 'KorInsDB'
    Left = 264
    Top = 192
  end
  object Table2: TTable
    DatabaseName = 'KorInsDB'
    IndexFieldNames = 'CUSTOMER_ID'
    MasterFields = 'CUSTOMER_ID'
    MasterSource = DataSource1
    TableName = 'CUST_BIKES.DB'
    Left = 648
    Top = 136
    object Table2CUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 255
    end
    object Table2BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
    object Table2BIKE_YEAR: TStringField
      FieldName = 'BIKE_YEAR'
      Size = 4
    end
    object Table2BIKE_MODEL_NAME: TStringField
      FieldName = 'BIKE_MODEL_NAME'
      Size = 100
    end
    object Table2MILEAGE: TIntegerField
      FieldName = 'MILEAGE'
    end
    object Table2CURMILE: TIntegerField
      FieldName = 'CURMILE'
    end
    object Table2CURMILE_DATE: TStringField
      FieldName = 'CURMILE_DATE'
      Size = 8
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 680
    Top = 136
  end
  object qryPRNAME: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select seq, prtype, prname, prduration from preventcode')
    Left = 16
    Top = 418
    object qryPRNAMEseq: TIntegerField
      FieldName = 'seq'
      Origin = 'KORINSDB."preventcode.DB".SEQ'
    end
    object qryPRNAMEprtype: TStringField
      FieldName = 'prtype'
      Origin = 'KORINSDB."preventcode.DB".PRTYPE'
      Size = 50
    end
    object qryPRNAMEprname: TStringField
      FieldName = 'prname'
      Origin = 'KORINSDB."preventcode.DB".PRNAME'
      Size = 255
    end
    object qryPRNAMEprduration: TIntegerField
      FieldName = 'prduration'
      Origin = 'KORINSDB."preventcode.DB".PRDURATION'
    end
  end
  object Table3: TTable
    DatabaseName = 'KorInsDB'
    IndexFieldNames = 'CUST_ID;BIKE_NUMBER'
    MasterFields = 'CUSTOMER_ID;BIKE_NUMBER'
    MasterSource = DataSource2
    TableName = 'PREVENTION.DB'
    Left = 16
    Top = 386
    object Table3CUST_ID: TStringField
      FieldName = 'CUST_ID'
      Required = True
      Size = 255
    end
    object Table3BIKE_NUMBER: TStringField
      FieldName = 'BIKE_NUMBER'
      Size = 255
    end
    object Table3PRCODE: TIntegerField
      FieldName = 'PRCODE'
    end
    object Table3PRDATE: TStringField
      FieldName = 'PRDATE'
      Size = 8
    end
    object Table3DESC: TStringField
      FieldName = 'DESC'
      Size = 255
    end
    object Table3PRNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PRNAME'
      LookupDataSet = qryPRNAME
      LookupKeyFields = 'seq'
      LookupResultField = 'prname'
      KeyFields = 'PRCODE'
      Size = 255
      Lookup = True
    end
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 48
    Top = 386
  end
  object qryGetPrCode: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select * from preventcode')
    Left = 232
    Top = 192
    object qryGetPrCodeSEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'KORINSDB."preventcode.DB".SEQ'
    end
    object qryGetPrCodePRTYPE: TStringField
      FieldName = 'PRTYPE'
      Origin = 'KORINSDB."preventcode.DB".PRTYPE'
      Size = 50
    end
    object qryGetPrCodePRNAME: TStringField
      FieldName = 'PRNAME'
      Origin = 'KORINSDB."preventcode.DB".PRNAME'
      Size = 255
    end
    object qryGetPrCodePRDURATION: TIntegerField
      FieldName = 'PRDURATION'
      Origin = 'KORINSDB."preventcode.DB".PRDURATION'
    end
    object qryGetPrCodeDESC: TStringField
      FieldName = 'DESC'
      Origin = 'KORINSDB."preventcode.DB".DESC'
      Size = 255
    end
  end
  object qryCustBikes: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select customer_id, bike_number, mileage, curmile, '
      'curmile_date from cust_bikes')
    Left = 512
    Top = 290
  end
end
