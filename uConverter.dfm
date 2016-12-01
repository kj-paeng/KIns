object frmConverter: TfrmConverter
  Left = 399
  Top = 290
  BorderStyle = bsSingle
  Caption = #48512#54408#53076#46300#46321#47197'('#50641#49472')'
  ClientHeight = 140
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 140
    Align = alClient
    TabOrder = 0
    object Label10: TLabel
      Left = 17
      Top = 23
      Width = 368
      Height = 12
      Caption = #48512#54408#53076#46300#44032' '#51200#51109#46108' '#50641#49472' '#54028#51068#51012' '#49440#53469#54616#49901#49884#50836'.                              '
    end
    object eFileName: TEdit
      Left = 91
      Top = 40
      Width = 358
      Height = 20
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object btnFChoose: TButton
      Left = 19
      Top = 39
      Width = 70
      Height = 23
      Caption = #50641#49472#54028#51068
      TabOrder = 1
      OnClick = btnFChooseClick
    end
    object Button7: TButton
      Left = 19
      Top = 63
      Width = 70
      Height = 22
      Caption = #51089#50629#49884#51089
      TabOrder = 2
      OnClick = Button7Click
    end
    object PB: TProgressBar
      Left = 92
      Top = 65
      Width = 357
      Height = 17
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 276
      Top = 16
      Width = 61
      Height = 20
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 4
      Visible = False
    end
    object BitBtn8: TBitBtn
      Left = 366
      Top = 104
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 5
      Kind = bkClose
    end
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 100
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 76
    Top = 100
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 148
    Top = 100
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\!Gajba\About\Qui' +
      'ckiesContest.mdb;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 12
    Top = 100
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 44
    Top = 100
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'INSERT INTO PART (CATEGORY,MODEL_NAME,PART_NAME,'
      'PART_NUMBER,BARCODE,STOCK, SIZE,UNIT,PURCHASE_PRICE,'
      'SELL_PRICE,LABOUR_CHARGE,TAXIBLE,LOCATION,MEMO)'
      'VALUES ('
      ':CATEGORY,:MODEL_NAME,:PART_NAME,'
      ':PART_NUMBER,:BARCODE,'
      ':STOCK, :SIZE,:UNIT,:PURCHASE_PRICE,'
      ':SELL_PRICE,:LABOUR_CHARGE,:TAXIBLE,:LOCATION,:MEMO)')
    Left = 410
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CATEGORY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODEL_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PART_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PART_NUMBER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BARCODE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCK'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SIZE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PURCHASE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LABOUR_CHARGE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TAXIBLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCATION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MEMO'
        ParamType = ptUnknown
      end>
  end
  object OpenDialog1: TOpenDialog
    Filter = 'xls(*.xls)|*.xls|xlsx(*.xlsx)|*.xlsx'
    Left = 380
    Top = 41
  end
  object qryMaxSeq: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT MAX(SEQ)+1 AS NSEQ FROM PART')
    Left = 328
    Top = 104
  end
end
