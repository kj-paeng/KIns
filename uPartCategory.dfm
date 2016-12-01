object frmPartCategory: TfrmPartCategory
  Left = 422
  Top = 303
  BorderStyle = bsSingle
  Caption = #48512#54408#48516#47448#46321#47197
  ClientHeight = 290
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 220
    Width = 65
    Height = 13
    AutoSize = False
    Caption = #48516#47448#47749
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 288
    Height = 200
    TabStop = False
    DataSource = DataSource1
    ImeName = #54620#44397#50612'('#54620#44544')'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQ'
        Title.Alignment = taCenter
        Title.Caption = #49692#48264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORYNAME'
        Title.Alignment = taCenter
        Title.Caption = #48516#47448#47749
        Width = 190
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 14
    Top = 248
    Width = 60
    Height = 25
    Caption = #52628#44032
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 248
    Width = 60
    Height = 25
    Caption = #49325#51228
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 222
    Top = 248
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 75
    Top = 248
    Width = 60
    Height = 25
    Caption = #51200#51109
    TabOrder = 4
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 115
    Top = 216
    Width = 180
    Height = 21
    DataField = 'CATEGORYNAME'
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    TabOrder = 5
  end
  object Table1: TTable
    DatabaseName = 'KorInsDB'
    DefaultIndex = False
    IndexFieldNames = 'SEQ'
    TableName = 'PARTCATEGORY.db'
    Left = 172
    Top = 92
    object Table1SEQ: TAutoIncField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object Table1CATEGORYNAME: TStringField
      FieldName = 'CATEGORYNAME'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 200
    Top = 92
  end
end
