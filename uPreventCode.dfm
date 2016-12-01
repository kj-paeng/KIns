object frmPreventCode: TfrmPreventCode
  Left = 279
  Top = 211
  BorderStyle = bsSingle
  Caption = #50696#48169#51221#48708#54637#47785#44288#47532
  ClientHeight = 417
  ClientWidth = 729
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
    Width = 729
    Height = 186
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 700
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
          FieldName = 'SEQ'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRTYPE'
          Title.Alignment = taCenter
          Title.Caption = #48516#47448#47749
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRNAME'
          Title.Alignment = taCenter
          Title.Caption = #50696#48169#51221#48708#49324#54637
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDURATION'
          Title.Alignment = taCenter
          Title.Caption = #44592#44036
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC'
          Title.Alignment = taCenter
          Title.Caption = #48708#44256
          Width = 182
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 372
    Width = 729
    Height = 45
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 624
      Top = 10
      Width = 75
      Height = 25
      Caption = #45803#44592'(&C)'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkClose
    end
    object Button3: TButton
      Left = 264
      Top = 10
      Width = 75
      Height = 25
      Caption = #54637#47785#52628#44032
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 339
      Top = 10
      Width = 75
      Height = 25
      Caption = #51200'    '#51109
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 414
      Top = 10
      Width = 75
      Height = 25
      Caption = #54637#47785#51648#50864#44592
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button1: TButton
      Left = 504
      Top = 10
      Width = 97
      Height = 25
      Caption = #52488#44592#51088#47308#47196#46300
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 186
    Width = 729
    Height = 186
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = ' '#44592#48376#51221#48372' '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 721
        Height = 158
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 256
          Top = 91
          Width = 43
          Height = 13
          Caption = '(km)    '
        end
        object DBEdit1: TDBEdit
          Left = 116
          Top = 15
          Width = 133
          Height = 21
          Hint = #51088#46041#51004#47196' '#48512#50668#46121#45768#45796
          DataField = 'SEQ'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 116
          Top = 62
          Width = 269
          Height = 21
          DataField = 'PRNAME'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 116
          Top = 87
          Width = 134
          Height = 21
          DataField = 'PRDURATION'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 115
          Top = 110
          Width = 270
          Height = 21
          DataField = 'DESC'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object Panel4: TPanel
          Left = 15
          Top = 39
          Width = 98
          Height = 21
          Caption = #48516#47448#47749
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Panel7: TPanel
          Left = 15
          Top = 86
          Width = 98
          Height = 21
          Caption = #44592#44036'('#47588'km)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Panel8: TPanel
          Left = 15
          Top = 62
          Width = 98
          Height = 21
          Caption = #50696#48169#51221#48708#49324#54637
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Panel9: TPanel
          Left = 15
          Top = 13
          Width = 98
          Height = 23
          Caption = #49692#48264'('#51088#46041#49444#51221')'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Panel12: TPanel
          Left = 15
          Top = 110
          Width = 98
          Height = 21
          Caption = #48708'    '#44256
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBComboBox1: TDBComboBox
          Left = 116
          Top = 38
          Width = 134
          Height = 21
          DataField = 'PRTYPE'
          DataSource = DataSource1
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          Items.Strings = (
            #44368#54872
            #51216#44160)
          TabOrder = 9
        end
      end
    end
  end
  object Table1: TTable
    BeforePost = Table1BeforePost
    DatabaseName = 'KorInsDB'
    TableName = 'PREVENTCODE.db'
    Left = 608
    Top = 104
    object Table1SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Table1PRTYPE: TStringField
      FieldName = 'PRTYPE'
      Size = 50
    end
    object Table1PRNAME: TStringField
      FieldName = 'PRNAME'
      Size = 255
    end
    object Table1PRDURATION: TIntegerField
      FieldName = 'PRDURATION'
    end
    object Table1DESC: TStringField
      FieldName = 'DESC'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 640
    Top = 104
  end
  object qryMaxSeq: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT MAX(SEQ)+1 AS NSEQ FROM PREVENTCODE')
    Left = 256
    Top = 224
    object qryMaxSeqNSEQ: TIntegerField
      FieldName = 'NSEQ'
      Origin = 'KORINSDB."PREVENTCODE.DB".SEQ'
    end
  end
  object qryInit: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'insert into preventcode'
      '(seq, prtype, prname, prduration) '
      'values '
      '(:seq, :prtype, :prname, :prduration)')
    Left = 232
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'seq'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'prtype'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'prname'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'prduration'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'NSEQ'
      Origin = 'KORINSDB."PREVENTCODE.DB".SEQ'
    end
  end
end
