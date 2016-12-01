object frmPartOut: TfrmPartOut
  Left = 207
  Top = 121
  Width = 870
  Height = 616
  Caption = #48512#54408#52636#44256#46321#47197
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
  object Label10: TLabel
    Left = 24
    Top = 20
    Width = 71
    Height = 13
    AutoSize = False
    Caption = #52636#44256#52376#47532#51068
  end
  object Label11: TLabel
    Left = 24
    Top = 57
    Width = 153
    Height = 13
    AutoSize = False
    Caption = #48512#54408#53076#46300#48143#51060#47492
  end
  object dtTrade: TDateTimePicker
    Left = 96
    Top = 16
    Width = 105
    Height = 21
    Date = 41125.753385046290000000
    Time = 41125.753385046290000000
    ImeName = 'Microsoft IME 2003'
    TabOrder = 0
  end
  object TDBGrid
    Left = 25
    Top = 101
    Width = 265
    Height = 428
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'part_id'
        Title.Caption = #48512#54408#53076#46300
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'part_name'
        Title.Caption = #48512#54408#47749
        Width = 155
        Visible = True
      end>
  end
  object DBEdit10: TDBEdit
    Left = 25
    Top = 77
    Width = 89
    Height = 21
    DataField = 'part_id'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
  end
  object DBEdit11: TDBEdit
    Left = 113
    Top = 77
    Width = 177
    Height = 21
    DataField = 'part_name'
    DataSource = DataSource2
    ImeName = 'Microsoft IME 2003'
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 304
    Top = 72
    Width = 249
    Height = 457
    Caption = #52636#44256#51221#48372
    TabOrder = 4
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #52636#44256#44079#49688
    end
    object Label5: TLabel
      Left = 24
      Top = 56
      Width = 65
      Height = 13
      AutoSize = False
      Caption = #54032#47588#50896#44552
    end
    object Label1: TLabel
      Left = 24
      Top = 80
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #54032#47588#52376#53076#46300
    end
    object Label2: TLabel
      Left = 24
      Top = 136
      Width = 65
      Height = 13
      AutoSize = False
      Caption = #48155#51008#44552#50529
    end
    object Label3: TLabel
      Left = 24
      Top = 160
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #48120#49688#44552#50529
    end
    object Label6: TLabel
      Left = 24
      Top = 184
      Width = 65
      Height = 13
      AutoSize = False
      Caption = #44592#53440
    end
    object Label7: TLabel
      Left = 24
      Top = 104
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #54032#47588#52376#51060#47492
    end
    object Edit2: TEdit
      Left = 104
      Top = 52
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      Text = '0'
    end
    object Edit3: TEdit
      Left = 104
      Top = 76
      Width = 73
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 104
      Top = 132
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = '0'
    end
    object Edit5: TEdit
      Left = 104
      Top = 156
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = '0'
    end
    object Edit6: TEdit
      Left = 104
      Top = 180
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object maskCnt: TMaskEdit
      Left = 104
      Top = 29
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
      OnExit = maskCntExit
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 216
      Width = 121
      Height = 25
      Caption = #52636#44256#52376#47532
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        777777C77777777700007777777777CC7777777700007777777777CCC7777777
        00007777777777CCCC7777770000777CCCCCCCCCCCC777770000777CCCCCCCCC
        CCCC77770000777CCCCCCCCCCCCCC7770000777CCCCCCCCCCCCCF7770000777C
        CCCCCCCCCCCF77770000777FFFFFFFCCCCF7777700007777777777CCCF777777
        00007777777777CCF777777700007777777777CF7777777700007777777777F7
        7777777700007777777777777777777700007777777777777777777700007777
        77777777777777770000}
    end
    object Button1: TButton
      Left = 180
      Top = 75
      Width = 45
      Height = 23
      Caption = #51312#54924
      TabOrder = 7
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 104
      Top = 100
      Width = 121
      Height = 21
      Color = clYellow
      ImeName = 'Microsoft IME 2003'
      ReadOnly = True
      TabOrder = 8
    end
  end
  object GroupBox2: TGroupBox
    Left = 568
    Top = 72
    Width = 273
    Height = 457
    Caption = #52376#47532#44208#44284
    TabOrder = 5
    object DBGrid2: TDBGrid
      Left = 16
      Top = 24
      Width = 241
      Height = 417
      DataSource = dsResult
      ImeName = 'Microsoft IME 2003'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #44404#47548
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'part_id'
          Title.Caption = #48512#54408#53076#46300
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'out_seq'
          Title.Caption = #52636#44256#49692#48264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'out_cnt'
          Title.Caption = #52636#44256#49688#47049
          Visible = True
        end>
    end
  end
  object BitBtn2: TBitBtn
    Left = 760
    Top = 546
    Width = 81
    Height = 26
    Caption = #45803#44592'(&C)'
    TabOrder = 6
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    TableName = 'PARTOUT.DB'
    Left = 792
    Top = 8
    object Table1PART_ID: TStringField
      FieldName = 'PART_ID'
      Size = 255
    end
    object Table1OUT_DATE: TDateField
      FieldName = 'OUT_DATE'
    end
    object Table1OUT_SEQ: TFloatField
      FieldName = 'OUT_SEQ'
    end
    object Table1OUT_CNT: TFloatField
      FieldName = 'OUT_CNT'
    end
    object Table1OUT_AMT: TFloatField
      FieldName = 'OUT_AMT'
    end
    object Table1GET_AMT: TFloatField
      FieldName = 'GET_AMT'
    end
    object Table1NO_GET_AMT: TFloatField
      FieldName = 'NO_GET_AMT'
    end
    object Table1ETC: TStringField
      FieldName = 'ETC'
      Size = 255
    end
    object Table1STOCK: TFloatField
      FieldName = 'STOCK'
    end
    object Table1BUYER_ID: TStringField
      FieldName = 'BUYER_ID'
      Size = 255
    end
  end
  object Query2: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select part_id, part_name, part_price from part')
    Left = 200
    Top = 40
    object Query2part_id: TStringField
      FieldName = 'part_id'
      Origin = 'KORINSDB."part.DB".PART_ID'
      Size = 255
    end
    object Query2part_name: TStringField
      FieldName = 'part_name'
      Origin = 'KORINSDB."part.DB".PART_NAME'
      Size = 255
    end
    object Query2part_price: TFloatField
      FieldName = 'part_price'
      Origin = 'KORINSDB."PART.DB".PART_PRICE'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    OnDataChange = DataSource2DataChange
    Left = 232
    Top = 40
  end
  object qrySeq: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select max(out_seq) +1 as nextseq from partout'
      'where part_id = :part_id'
      'and out_date = :out_date')
    Left = 528
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'part_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'out_date'
        ParamType = ptInput
      end>
    object qrySeqnextseq: TFloatField
      FieldName = 'nextseq'
      Origin = 'KORINSDB."partin.DB".IN_SEQ'
    end
  end
  object qryResult: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select part_id, out_date, out_seq, out_cnt'
      'from partout'
      'where part_id = :part_id'
      'and out_date = :out_date')
    Left = 632
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'part_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'out_date'
        ParamType = ptInput
      end>
    object qryResultpart_id: TStringField
      FieldName = 'part_id'
      Origin = 'KORINSDB."PARTIN.DB".PART_ID'
      Size = 255
    end
    object qryResultout_date: TDateField
      FieldName = 'out_date'
      Origin = 'KORINSDB."partout.DB".OUT_DATE'
    end
    object qryResultout_seq: TFloatField
      FieldName = 'out_seq'
      Origin = 'KORINSDB."partout.DB".OUT_SEQ'
    end
    object qryResultout_cnt: TFloatField
      FieldName = 'out_cnt'
      Origin = 'KORINSDB."partout.DB".OUT_CNT'
    end
  end
  object dsResult: TDataSource
    DataSet = qryResult
    Left = 664
    Top = 48
  end
  object qry00: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'select part_id, stock from part '
      'where part_id = :part_id')
    Left = 368
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'part_id'
        ParamType = ptInput
      end>
  end
  object qry11: TQuery
    DatabaseName = 'KorInsDB'
    Left = 368
    Top = 424
  end
end
