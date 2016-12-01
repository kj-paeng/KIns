object frmDBBackup: TfrmDBBackup
  Left = 371
  Top = 278
  BorderStyle = bsDialog
  Caption = #51088#47308#48177#50629
  ClientHeight = 269
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 1
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 99
      Height = 13
      Caption = #51088#47308#48177#50629' '#48143' '#48373#44396
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 1
    Width = 438
    Height = 227
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 438
      Height = 227
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #48177#50629#49444#51221
        object GBox0: TRadioGroup
          Left = 8
          Top = 10
          Width = 409
          Height = 44
          Caption = #51088#46041#48177#50629#49444#51221
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #49324#50857#50504#54632'('#49688#46041#51089#50629')'
            #51088#46041#48177#50629#49444#51221)
          TabOrder = 0
          OnClick = GBox0Click
        end
        object GBox1: TRadioGroup
          Left = 8
          Top = 64
          Width = 409
          Height = 121
          Caption = #51088#46041#48177#50629#51452#44592
          ItemIndex = 1
          Items.Strings = (
            #47588#51068
            #51068#51452#51068
            #54620#45804
            #51076#51032#44592#44036)
          TabOrder = 1
        end
        object edtDays: TEdit
          Left = 104
          Top = 154
          Width = 49
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object Panel4: TPanel
          Left = 156
          Top = 151
          Width = 67
          Height = 25
          BevelOuter = bvNone
          Caption = #51068' '#51648#45212#54980
          TabOrder = 3
        end
        object Button1: TButton
          Left = 288
          Top = 150
          Width = 113
          Height = 25
          Caption = #51648#44552' '#48177#50629#54616#44592
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = #48373#44396#51221#48372
        ImageIndex = 1
        object Button2: TButton
          Left = 342
          Top = 162
          Width = 75
          Height = 25
          Caption = #48373#44396#50696#50557
          TabOrder = 0
          OnClick = Button2Click
        end
        object Panel5: TPanel
          Left = 8
          Top = 8
          Width = 409
          Height = 25
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = #48373#44396#49884' '#49324#50857#54624' '#48177#50629#51012' '#51648#51221#54616#49901#49884#50836'.'
          TabOrder = 1
        end
        object LB: TListBox
          Left = 8
          Top = 40
          Width = 401
          Height = 49
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          TabOrder = 2
        end
        object LV: TListView
          Left = 8
          Top = 96
          Width = 329
          Height = 97
          Columns = <
            item
              Caption = 'Backup'
              Width = 100
            end
            item
              Caption = 'Location'
              Width = 200
            end>
          RowSelect = True
          TabOrder = 3
          ViewStyle = vsReport
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 228
    Width = 438
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button3: TButton
      Left = 350
      Top = 8
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 271
      Top = 9
      Width = 75
      Height = 25
      Caption = #49444#51221#51200#51109
      TabOrder = 1
      OnClick = Button4Click
    end
  end
end
