object frmPopupCust: TfrmPopupCust
  Left = 391
  Top = 203
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #44256#44061#44160#49353
  ClientHeight = 411
  ClientWidth = 513
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
    Top = 385
    Width = 513
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
    Width = 513
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
    Width = 513
    Height = 336
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 511
      Height = 288
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
          Width = 105
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 375
      Top = 298
      Width = 65
      Height = 26
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 1
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
    object BitBtn2: TBitBtn
      Left = 440
      Top = 298
      Width = 65
      Height = 26
      Cancel = True
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'SELECT customer_id, jumin_no, customer_name, tel_no, '
      'address_detail '
      'FROM customer')
    Left = 20
    Top = 348
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
    Left = 48
    Top = 348
  end
end
