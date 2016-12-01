object frmSchedulerDetail: TfrmSchedulerDetail
  Left = 358
  Top = 300
  BorderStyle = bsDialog
  Caption = #51068#51221#49345#49464
  ClientHeight = 426
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 23
    Width = 88
    Height = 12
    AutoSize = False
    Caption = #51068#51221#49884#51089#49884#44033
  end
  object Label2: TLabel
    Left = 296
    Top = 23
    Width = 41
    Height = 12
    AutoSize = False
    Caption = #49884
  end
  object Label4: TLabel
    Left = 14
    Top = 68
    Width = 82
    Height = 12
    AutoSize = False
    Caption = #51068#51221#51333#47308#49884#44033
  end
  object Label5: TLabel
    Left = 296
    Top = 69
    Width = 35
    Height = 12
    AutoSize = False
    Caption = #49884
  end
  object Label6: TLabel
    Left = 365
    Top = 67
    Width = 35
    Height = 12
    AutoSize = False
    Caption = #48516
  end
  object Label7: TLabel
    Left = 19
    Top = 188
    Width = 88
    Height = 12
    AutoSize = False
    Caption = #51068#51221#51228#47785
  end
  object Label8: TLabel
    Left = 19
    Top = 217
    Width = 53
    Height = 12
    AutoSize = False
    Caption = #45236'    '#50857
  end
  object Label3: TLabel
    Left = 365
    Top = 23
    Width = 35
    Height = 12
    AutoSize = False
    Caption = #48516
  end
  object rgAMPM: TRadioGroup
    Left = 96
    Top = 7
    Width = 110
    Height = 41
    Caption = #50724#51204#50724#54980
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'AM'
      'PM')
    TabOrder = 0
  end
  object rgAMPM2: TRadioGroup
    Left = 96
    Top = 52
    Width = 110
    Height = 41
    Caption = #50724#51204#50724#54980
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'AM'
      'PM')
    TabOrder = 1
  end
  object eSTITLE: TEdit
    Left = 99
    Top = 184
    Width = 577
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
  end
  object mSMEMO: TMemo
    Left = 99
    Top = 213
    Width = 577
    Height = 169
    ImeName = 'Microsoft IME 2003'
    TabOrder = 3
  end
  object chALARM_1HOUR: TCheckBox
    Left = 98
    Top = 131
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = #50508#47548'(1'#49884#44036#51204')'
    TabOrder = 4
  end
  object chALARM_30MIN: TCheckBox
    Left = 98
    Top = 155
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = #50508#47548'(30'#48516#51204')'
    TabOrder = 5
  end
  object chALARM_1DAY: TCheckBox
    Left = 98
    Top = 108
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = #50508#47548'(1'#51068#51204')'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 528
    Top = 392
    Width = 75
    Height = 25
    Caption = #51200#51109
    ModalResult = 1
    TabOrder = 7
  end
  object Button2: TButton
    Left = 608
    Top = 392
    Width = 75
    Height = 25
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 8
  end
  object cSHOUR: TComboBox
    Left = 237
    Top = 19
    Width = 52
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '12'
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11')
  end
  object cSMIN: TComboBox
    Left = 313
    Top = 19
    Width = 46
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      '00'
      '30')
  end
  object cEHOUR: TComboBox
    Left = 237
    Top = 64
    Width = 52
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      '12'
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11')
  end
  object cEMIN: TComboBox
    Left = 313
    Top = 64
    Width = 46
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      '00'
      '30')
  end
end
