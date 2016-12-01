object frmInitSetting: TfrmInitSetting
  Left = 544
  Top = 250
  BorderStyle = bsSingle
  Caption = #44288#47532#49884#49828#53596' '#49444#51221' '#49324#54637
  ClientHeight = 294
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 292
    Top = 266
    Width = 75
    Height = 25
    Caption = #49444#51221
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 368
    Top = 266
    Width = 75
    Height = 25
    Caption = #52712#49548
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl
    Left = 3
    Top = 4
    Width = 441
    Height = 257
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'CMate'#49436#48260#49444#51221
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 99
          Top = 164
          Width = 26
          Height = 13
          Caption = #54252#53944
        end
        object Label2: TLabel
          Left = 100
          Top = 136
          Width = 42
          Height = 13
          Caption = 'IP '#51452#49548
        end
        object edtIpAddress: TEdit
          Left = 156
          Top = 132
          Width = 141
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 0
          Text = '210.109.151.1'
        end
        object edtPort: TSpinEdit
          Left = 156
          Top = 160
          Width = 119
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object Panel5: TPanel
          Left = 4
          Top = 8
          Width = 428
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object Label16: TLabel
            Left = 12
            Top = 80
            Width = 228
            Height = 13
            Caption = #51060' '#51221#48372#47484' '#51221#54869#55176' '#49444#51221#54616#49884#44592' '#48148#46989#45768#45796'.'
          end
          object Label15: TLabel
            Left = 12
            Top = 64
            Width = 379
            Height = 13
            Caption = #51217#49549#44256#44061#49688', '#45824#44592#44256#44061#49688', '#44552#51068#51217#49549#44256#44061#49688' '#46321#51032' '#51221#48372#47484' '#49688#49888#54616#47140#47732
          end
          object Label14: TLabel
            Left = 12
            Top = 48
            Width = 340
            Height = 13
            Caption = #49345#45812#50896' '#49436#48708#49828#54788#54889', '#44536#47353#48324' '#45824#44592#44256#44061#54788#54889' '#48143' '#51217#49549#49345#45812#50896#49688','
          end
          object Label13: TLabel
            Left = 12
            Top = 32
            Width = 383
            Height = 13
            Caption = #54532#47196#44536#47016#51012' '#52572#52488#47196' '#49892#54665#54664#51012' '#46412#45716' '#49444#51221#51060' '#50504#46104#50612#51080#51012' '#49688' '#51080#49845#45768#45796'.'
          end
          object Label5: TLabel
            Left = 12
            Top = 16
            Width = 223
            Height = 13
            Caption = #53084#49436#48260#51032' IP'#51452#49548#50752' '#54252#53944#47484' '#49444#51221#54633#45768#45796'.'
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #44288#47532#51088#49444#51221
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 99
          Top = 164
          Width = 26
          Height = 13
          Caption = #54252#53944
        end
        object Label4: TLabel
          Left = 100
          Top = 136
          Width = 42
          Height = 13
          Caption = 'IP '#51452#49548
        end
        object edtMngIpAddress: TEdit
          Left = 156
          Top = 132
          Width = 141
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 0
          Text = '210.109.151.32'
        end
        object edtMngPort: TSpinEdit
          Left = 156
          Top = 160
          Width = 119
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object Panel6: TPanel
          Left = 4
          Top = 8
          Width = 428
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object Label25: TLabel
            Left = 12
            Top = 16
            Width = 266
            Height = 13
            Caption = #44288#47532#51088' '#52980#54504#53552#51032' IP'#51452#49548#50752' '#54252#53944#47484' '#49444#51221#54633#45768#45796'.'
          end
          object Label26: TLabel
            Left = 12
            Top = 32
            Width = 383
            Height = 13
            Caption = #54532#47196#44536#47016#51012' '#52572#52488#47196' '#49892#54665#54664#51012' '#46412#45716' '#49444#51221#51060' '#50504#46104#50612#51080#51012' '#49688' '#51080#49845#45768#45796'.'
          end
          object Label27: TLabel
            Left = 12
            Top = 48
            Width = 288
            Height = 13
            Caption = #53084#49436#48260' '#46608#45716', '#44033' '#49345#45812#50896' '#52980#54504#53552#50640#49436' '#48372#45236#45716' '#51221#48372#47484
          end
          object Label28: TLabel
            Left = 12
            Top = 64
            Width = 202
            Height = 13
            Caption = #48155#44592' '#50948#54644' '#51060' '#54596#46300#44050#51012' '#51060#50857#54633#45768#45796'.'
          end
          object Label29: TLabel
            Left = 12
            Top = 80
            Width = 228
            Height = 13
            Caption = #51060' '#51221#48372#47484' '#51221#54869#55176' '#49444#51221#54616#49884#44592' '#48148#46989#45768#45796'.'
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #47700#51068#49436#48260#49444#51221
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          Left = 99
          Top = 164
          Width = 26
          Height = 13
          Caption = #54252#53944
        end
        object Label8: TLabel
          Left = 100
          Top = 136
          Width = 42
          Height = 13
          Caption = 'IP '#51452#49548
        end
        object edtMailAddress: TEdit
          Left = 156
          Top = 132
          Width = 141
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 0
          Text = '210.109.151.32'
        end
        object edtMailPort: TSpinEdit
          Left = 156
          Top = 160
          Width = 119
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object Panel7: TPanel
          Left = 4
          Top = 8
          Width = 428
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object Label9: TLabel
            Left = 12
            Top = 16
            Width = 293
            Height = 13
            Caption = #44288#47532#51088' '#54532#47196#44536#47016#50640#49436' '#53945#51221' '#51312#44148#50640' '#54644#45817#54616#45716' '#51221#48372#47484
          end
          object Label21: TLabel
            Left = 12
            Top = 32
            Width = 370
            Height = 13
            Caption = #51648#51221#54620' '#49324#46988#50640#44172' '#47700#51068#47196' '#51204#45804#54624' '#46412' '#49324#50857#54624' '#47700#51068#49436#48260' '#51452#49548#51077#45768#45796'.'
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'DB'#49324#50857#51088#49444#51221
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label10: TLabel
          Left = 51
          Top = 160
          Width = 113
          Height = 13
          Caption = 'DB'#49324#50857#51088' '#48708#48128#48264#54840
        end
        object Label11: TLabel
          Left = 60
          Top = 132
          Width = 69
          Height = 13
          Caption = 'DB'#49324#50857#51088'ID'
        end
        object edtUserID: TEdit
          Left = 172
          Top = 129
          Width = 141
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 0
        end
        object edtUserPasswd: TEdit
          Left = 172
          Top = 156
          Width = 141
          Height = 21
          ImeName = #54620#44397#50612'('#54620#44544')'
          TabOrder = 1
        end
        object Panel8: TPanel
          Left = 4
          Top = 8
          Width = 428
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object Label12: TLabel
            Left = 12
            Top = 16
            Width = 203
            Height = 13
            Caption = #45936#51060#53440#48288#51060#49828' USER'#47484' '#49444#51221#54633#45768#45796'.'
          end
          object Label22: TLabel
            Left = 12
            Top = 32
            Width = 383
            Height = 13
            Caption = #54532#47196#44536#47016#51012' '#52572#52488#47196' '#49892#54665#54664#51012' '#46412#45716' '#49444#51221#51060' '#50504#46104#50612#51080#51012' '#49688' '#51080#49845#45768#45796'.'
          end
          object Label23: TLabel
            Left = 12
            Top = 48
            Width = 331
            Height = 13
            Caption = #45936#51060#53440#48288#51060#49828' '#51217#49549#50640' '#54596#50836#54620' '#49324#50857#51088'ID'#50752' '#48708#48128#48264#54840#47484' '#47676#51200
          end
          object Label24: TLabel
            Left = 12
            Top = 64
            Width = 357
            Height = 13
            Caption = #49444#51221#54616#49492#50556' '#51060' '#54980#51032' '#54532#47196#44536#47016#46308#51060' '#51221#54869#55176' '#49688#54665#46112' '#49688' '#51080#49845#45768#45796'.'
          end
        end
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 12
    Top = 270
    Width = 233
    Height = 17
    Caption = #45796#51020#48512#53552#45716' '#51060' '#54868#47732#51012' '#54364#49884#54616#51648' '#50506#51020
    TabOrder = 3
  end
end
