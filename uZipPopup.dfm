object frmZipPopup: TfrmZipPopup
  Left = 413
  Top = 191
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #51452#49548#44160#49353
  ClientHeight = 441
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 415
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
    Height = 50
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 16
      Width = 152
      Height = 13
      AutoSize = False
      Caption = #46041#51060#47492'  ('#50696':'#50669#49340#46041')'
    end
    object Edit1: TEdit
      Left = 168
      Top = 12
      Width = 257
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 428
      Top = 11
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
    Top = 50
    Width = 513
    Height = 365
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 270
      Width = 123
      Height = 13
      AutoSize = False
      Caption = #49884#44400#44396
    end
    object Label3: TLabel
      Left = 14
      Top = 294
      Width = 123
      Height = 13
      AutoSize = False
      Caption = #49345#49464#51452#49548
    end
    object Label4: TLabel
      Left = 14
      Top = 246
      Width = 123
      Height = 13
      AutoSize = False
      Caption = #50864#54200#48264#54840
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 511
      Height = 0
      Align = alTop
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
          FieldName = 'zipcode'
          Title.Alignment = taCenter
          Title.Caption = #50864#54200#48264#54840
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address'
          Title.Alignment = taCenter
          Title.Caption = #51452#49548
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dong'
          Title.Caption = #46041#51060#47492
          Width = 87
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 367
      Top = 322
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
      Top = 322
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
    object Edit2: TEdit
      Left = 144
      Top = 264
      Width = 337
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 144
      Top = 288
      Width = 337
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object SGrid: TStringGrid
      Left = 1
      Top = 1
      Width = 511
      Height = 232
      ColCount = 7
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ScrollBars = ssVertical
      TabOrder = 5
      OnSelectCell = SGridSelectCell
      ColWidths = (
        113
        291
        81
        2
        3
        2
        2)
    end
    object BitBtn4: TBitBtn
      Left = 148
      Top = 330
      Width = 75
      Height = 25
      Caption = 'DB'#52286#44592
      Default = True
      TabOrder = 6
      Visible = False
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
    object edtZipCode: TEdit
      Left = 144
      Top = 240
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
    end
  end
  object XD: TXMLDocument
    Left = 224
    Top = 376
    DOMVendorDesc = 'MSXML'
  end
end
