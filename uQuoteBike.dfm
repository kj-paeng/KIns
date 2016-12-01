object frmQuoteBike: TfrmQuoteBike
  Left = 170
  Top = 146
  Width = 764
  Height = 617
  Caption = #51060#47452#52264#48708#44368#44204#51201
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 756
    Height = 537
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    OnChanging = PageControl1Changing
    object TabSheet2: TTabSheet
      Caption = #48372#51109#49440#53469'/'#52572#51200#44032#48372#54744#47308#49328#52636
      ImageIndex = 1
      object Label10: TLabel
        Left = 136
        Top = 350
        Width = 274
        Height = 11
        Caption = #50500#47000' '#48372#54744#44204#51201#51008' '#49345#54889#50640' '#46384#46972' '#48320#44221#46112' '#49688' '#51080#49845#45768#45796'.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 8
        Top = 3
        Width = 727
        Height = 177
        TabOrder = 5
        object Label1: TLabel
          Left = 17
          Top = 15
          Width = 39
          Height = 13
          Caption = #44256#44061#47749
        end
        object Label8: TLabel
          Left = 512
          Top = 16
          Width = 75
          Height = 13
          Caption = #48372#54744'('#49884#51089')'#51068
        end
        object Label9: TLabel
          Left = 16
          Top = 80
          Width = 52
          Height = 13
          Caption = #50857#46020#49440#53469
        end
        object Label4: TLabel
          Left = 193
          Top = 55
          Width = 39
          Height = 13
          Caption = #48176#44592#47049
        end
        object Label5: TLabel
          Left = 16
          Top = 55
          Width = 52
          Height = 13
          Caption = #50672#47161#53945#50557
        end
        object Label7: TLabel
          Left = 453
          Top = 60
          Width = 52
          Height = 13
          Caption = #54624#51613#54624#51064
        end
        object Label6: TLabel
          Left = 192
          Top = 80
          Width = 52
          Height = 13
          Caption = #48372#54744#44221#47141
        end
        object Label2: TLabel
          Left = 192
          Top = 14
          Width = 78
          Height = 13
          Caption = #51452#48124#46321#47197#48264#54840
        end
        object Label3: TLabel
          Left = 340
          Top = 13
          Width = 10
          Height = 13
          Caption = '~'
        end
        object Label11: TLabel
          Left = 462
          Top = 14
          Width = 13
          Height = 13
          Caption = #49464
        end
        object Label13: TLabel
          Left = 306
          Top = 57
          Width = 26
          Height = 13
          Caption = '(cc)'
        end
        object dtINSU_SDATE: TDateTimePicker
          Left = 591
          Top = 11
          Width = 112
          Height = 21
          Date = 41146.349485671300000000
          Time = 41146.349485671300000000
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object edtUNAME: TEdit
          Left = 73
          Top = 10
          Width = 96
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object rdoYONGDO: TRadioGroup
          Left = 74
          Top = 72
          Width = 97
          Height = 72
          ItemIndex = 0
          Items.Strings = (
            #44032#51221#50857
            #48176#45804#50857
            #53301'/'#47116#53944#50857)
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = rdoYONGDOClick
        end
        object rdoBAEGIRYANG01: TRadioGroup
          Left = 704
          Top = 152
          Width = 25
          Height = 25
          ItemIndex = 2
          Items.Strings = (
            '49cc '#51060#54616
            '50cc~100cc'
            '101cc~250cc'
            '250cc '#52488#44284)
          TabOrder = 3
          Visible = False
        end
        object cboAgeCondition: TComboBox
          Left = 73
          Top = 51
          Width = 97
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            #51204#50672#47161
            '20'#49464#51060#49345
            '21'#49464#51060#49345
            '24'#49464#51060#49345
            '26'#49464#51060#49345
            '30'#49464#51060#49345
            '35'#49464#51060#49345
            '43'#49464#51060#49345
            '48'#49464#51060#49345
            '')
        end
        object rdoRENEW: TRadioGroup
          Left = 512
          Top = 52
          Width = 190
          Height = 117
          ItemIndex = 0
          Items.Strings = (
            #52572#52488#44032#51077
            #44081#49888'('#47924#49324#44256'1'#45380')'
            #44081#49888'('#47924#49324#44256'2'#45380')'
            #44081#49888'('#47924#49324#44256'3'#45380')'
            #44081#49888'('#47924#49324#44256'4'#45380#51060#49345')')
          TabOrder = 6
        end
        object rdoCAREER: TRadioGroup
          Left = 271
          Top = 73
          Width = 97
          Height = 94
          ItemIndex = 0
          Items.Strings = (
            '1'#45380#48120#47564
            '1'#45380#51060#49345
            '2'#45380#51060#49345
            '3'#45380#51060#49345)
          TabOrder = 7
        end
        object edtJUMIN01: TEdit
          Left = 270
          Top = 10
          Width = 65
          Height = 21
          ImeName = 'Microsoft IME 2003'
          MaxLength = 6
          TabOrder = 8
          OnExit = edtJUMIN01Exit
          OnKeyUp = edtJUMIN01KeyUp
        end
        object edtJUMIN02: TEdit
          Left = 352
          Top = 10
          Width = 73
          Height = 21
          ImeName = 'Microsoft IME 2003'
          MaxLength = 7
          TabOrder = 9
          OnExit = edtJUMIN02Exit
        end
        object edtAge: TEdit
          Left = 425
          Top = 10
          Width = 33
          Height = 21
          Color = 11922943
          ImeName = 'Microsoft IME 2003'
          ReadOnly = True
          TabOrder = 10
        end
        object meBAEGIRYANG: TMaskEdit
          Left = 270
          Top = 51
          Width = 35
          Height = 21
          EditMask = '9999'
          ImeName = 'Microsoft IME 2003'
          MaxLength = 4
          TabOrder = 5
          Text = '    '
        end
      end
      object BitBtn4: TBitBtn
        Left = 283
        Top = 464
        Width = 81
        Height = 25
        Caption = '<   '#51060#51204' '
        Enabled = False
        TabOrder = 0
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 368
        Top = 464
        Width = 81
        Height = 25
        Caption = #45796#51020'   >'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object SGrid: TStringGrid
        Left = 8
        Top = 365
        Width = 727
        Height = 87
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        TabOrder = 2
        ColWidths = (
          103
          296
          94
          100
          80)
      end
      object BitBtn10: TBitBtn
        Left = 8
        Top = 340
        Width = 121
        Height = 25
        Caption = '>>'#48372#54744#47308' '#49328#52636
        TabOrder = 3
        OnClick = BitBtn10Click
      end
      object Panel3: TPanel
        Left = 8
        Top = 183
        Width = 727
        Height = 154
        TabOrder = 4
        object Label12: TLabel
          Left = 18
          Top = 35
          Width = 60
          Height = 13
          Caption = #45824#47932#48176#49345'  '
        end
        object Label15: TLabel
          Left = 19
          Top = 87
          Width = 70
          Height = 13
          Caption = #51333#54633#48372#54744'II   '
        end
        object rgDaemul: TRadioGroup
          Left = 97
          Top = 27
          Width = 607
          Height = 54
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            #45824#47932'1'#52380#47564#50896
            #45824#47932'2'#52380#47564#50896
            #45824#47932'3'#52380#47564#50896
            #45824#47932'5'#52380#47564#50896
            #45824#47932'7'#52380#47564#50896
            #45824#47932'1'#50613#50896)
          TabOrder = 0
        end
        object ckDaein02: TCheckBox
          Left = 152
          Top = 9
          Width = 98
          Height = 17
          Alignment = taLeftJustify
          Caption = #45824#51064#48176#49345'II'
          TabOrder = 1
        end
        object rgJasin: TRadioGroup
          Left = 97
          Top = 81
          Width = 607
          Height = 57
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            #49440#53469#50504#54632
            #51088#44592#49888#52404'1,500'#47564#50896
            #51088#44592#49888#52404'3,000'#47564#50896
            #51088#44592#49888#52404'5,000'#47564#50896
            #51088#44592#49888#52404'1'#50613#50896)
          TabOrder = 2
        end
        object Panel5: TPanel
          Left = 2
          Top = 3
          Width = 147
          Height = 25
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 3
          object ckDaein01: TCheckBox
            Left = 15
            Top = 4
            Width = 93
            Height = 17
            Alignment = taLeftJustify
            Caption = #45824#51064#48176#49345' I'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
      end
      object chkConsent: TCheckBox
        Left = 497
        Top = 344
        Width = 131
        Height = 17
        Alignment = taLeftJustify
        Caption = #44060#51064#51221#48372' '#46041#51032#50668#48512
        TabOrder = 6
      end
      object Button1: TButton
        Left = 632
        Top = 339
        Width = 103
        Height = 25
        Caption = #46041#51032#49324#54637' '#48372#44592
        TabOrder = 7
        OnClick = Button1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #44032#51077'/'#49345#45812#49888#52397#49436' '#51089#49457
      ImageIndex = 2
      object BitBtn6: TBitBtn
        Left = 224
        Top = 464
        Width = 140
        Height = 25
        Caption = '<   '#48708#44368#44204#51201' '#45796#49884#54616#44592
        TabOrder = 0
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 368
        Top = 464
        Width = 137
        Height = 25
        Caption = #44032#51077#49888#52397#49436#48372#45236#44592'   >'
        TabOrder = 1
        OnClick = BitBtn7Click
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 96
        Width = 353
        Height = 361
        Caption = #44592#48376#51221#48372
        TabOrder = 2
        object Label19: TLabel
          Left = 13
          Top = 356
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #44032#51077#51221#48372
          Visible = False
        end
        object Label20: TLabel
          Left = 13
          Top = 196
          Width = 87
          Height = 13
          AutoSize = False
          Caption = #52264#47049'/'#52264#45824#48264#54840
        end
        object Label21: TLabel
          Left = 14
          Top = 108
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #55092#45824#51204#54868
        end
        object Label25: TLabel
          Left = 14
          Top = 65
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #49345#49464#51452#49548
        end
        object Label24: TLabel
          Left = 14
          Top = 20
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #50864#54200#48264#54840
        end
        object Label26: TLabel
          Left = 14
          Top = 42
          Width = 88
          Height = 13
          AutoSize = False
          Caption = #51452#49548'('#49884#44400#44396')'
        end
        object Label28: TLabel
          Left = 13
          Top = 315
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #52264#45824#48264#54840
          Visible = False
        end
        object Label34: TLabel
          Left = 13
          Top = 355
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #51228#51089#54924#49324
          Visible = False
        end
        object Label29: TLabel
          Left = 15
          Top = 152
          Width = 82
          Height = 13
          AutoSize = False
          Caption = #51060#47700#51068#51452#49548
        end
        object Label27: TLabel
          Left = 15
          Top = 131
          Width = 69
          Height = 13
          AutoSize = False
          Caption = 'FAX '#48264#54840
        end
        object Label23: TLabel
          Left = 15
          Top = 87
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #51204#54868#48264#54840
        end
        object Label30: TLabel
          Left = 14
          Top = 219
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #47784#45944#47749
        end
        object Label22: TLabel
          Left = 14
          Top = 239
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #50672#49885
        end
        object Label32: TLabel
          Left = 14
          Top = 260
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #52264#47049#51333#47448
        end
        object Button2: TButton
          Left = 268
          Top = 15
          Width = 69
          Height = 20
          Caption = #50864#54200#48264#54840
          TabOrder = 0
          OnClick = Button2Click
        end
        object edtUCARNO: TEdit
          Left = 104
          Top = 191
          Width = 233
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object edtUHP: TEdit
          Left = 104
          Top = 102
          Width = 153
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
        end
        object edtUZIPCODE: TEdit
          Left = 104
          Top = 14
          Width = 161
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object edtUJUSO1: TEdit
          Left = 104
          Top = 36
          Width = 233
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
        end
        object edtUJUSO2: TEdit
          Left = 104
          Top = 58
          Width = 233
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 5
        end
        object RadioGroup1: TRadioGroup
          Left = 104
          Top = 340
          Width = 233
          Height = 57
          ItemIndex = 1
          Items.Strings = (
            #48372#54744#48148#47196#44032#51077
            #49345#45812#50896#44284' '#53685#54868#54980' '#44032#51077' '#44208#51221)
          TabOrder = 6
          Visible = False
        end
        object Edit1: TEdit
          Left = 104
          Top = 309
          Width = 233
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
          Visible = False
        end
        object edtBIKECOMPANY: TEdit
          Left = 104
          Top = 349
          Width = 233
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
          Visible = False
        end
        object Edit9: TEdit
          Left = 104
          Top = 146
          Width = 153
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
        end
        object Edit8: TEdit
          Left = 104
          Top = 124
          Width = 153
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
        end
        object edtUTEL: TEdit
          Left = 104
          Top = 80
          Width = 153
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 11
        end
        object cboBIKE_TYPE: TComboBox
          Left = 104
          Top = 258
          Width = 153
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 12
          Text = #51060#47452
          Items.Strings = (
            #51060#47452
            #49340#47452
            #49324#47452
            #52629#52264)
        end
        object cboUYEAR: TComboBox
          Left = 104
          Top = 236
          Width = 153
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 0
          TabOrder = 13
        end
        object edtBIKEMODEL: TEdit
          Left = 104
          Top = 214
          Width = 153
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 14
        end
      end
      object GroupBox2: TGroupBox
        Left = 375
        Top = 97
        Width = 361
        Height = 360
        Caption = #52628#44032#51221#48372
        TabOrder = 3
        object Label31: TLabel
          Left = 16
          Top = 27
          Width = 70
          Height = 13
          AutoSize = False
          Caption = #44208#51228#48169#48277
        end
        object Label33: TLabel
          Left = 18
          Top = 199
          Width = 95
          Height = 13
          AutoSize = False
          Caption = #50836#52397#49324#54637'('#48708#44256')'
        end
        object Label16: TLabel
          Left = 17
          Top = 101
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #54624#48512#44060#50900
        end
        object Label35: TLabel
          Left = 17
          Top = 78
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #52852#46300#48264#54840
        end
        object Label37: TLabel
          Left = 17
          Top = 124
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #50976#54952#44592#44036
        end
        object Label39: TLabel
          Left = 16
          Top = 148
          Width = 89
          Height = 13
          AutoSize = False
          Caption = #52852#46300#49548#50976#51088
        end
        object Label40: TLabel
          Left = 16
          Top = 171
          Width = 100
          Height = 13
          AutoSize = False
          Caption = #49548#50976#51088#51452#48124#48264#54840
        end
        object mmMEMO: TMemo
          Left = 120
          Top = 195
          Width = 233
          Height = 124
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object rdoPAYTYPE: TRadioGroup
          Left = 120
          Top = 9
          Width = 233
          Height = 61
          ItemIndex = 0
          Items.Strings = (
            #54788#44552'('#44032#49345#44228#51340')'
            #52852#46300)
          TabOrder = 1
          OnClick = rdoPAYTYPEClick
        end
        object edtCARDKIND: TEdit
          Left = 120
          Top = 329
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 2
          Visible = False
        end
        object edtCARDNO: TEdit
          Left = 120
          Top = 72
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object edtCARDDATE: TEdit
          Left = 120
          Top = 118
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
        end
        object edtRELATIONSHIP: TEdit
          Left = 120
          Top = 329
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 5
          Visible = False
        end
        object edtCNAME: TEdit
          Left = 120
          Top = 141
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 6
        end
        object edtUJUMINCARD: TEdit
          Left = 120
          Top = 165
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 7
        end
        object edtBNAME: TEdit
          Left = 120
          Top = 329
          Width = 145
          Height = 21
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
          Visible = False
        end
        object chkLAW_YN: TCheckBox
          Left = 8
          Top = 327
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = #48277#44508#50948#48152' '#50668#48512
          TabOrder = 9
          Visible = False
        end
        object pnlNotify: TPanel
          Left = 23
          Top = 108
          Width = 325
          Height = 84
          BevelOuter = bvNone
          TabOrder = 10
          object Label42: TLabel
            Left = 64
            Top = 16
            Width = 254
            Height = 13
            Caption = #50504#51204#54616#44256' '#54200#47532#54620' '#48376#51064' '#44032#49345#44228#51340#47484' '#48156#44553#54616#50668' '
          end
          object Label43: TLabel
            Left = 80
            Top = 36
            Width = 86
            Height = 13
            Caption = #47928#51088' '#51204#49569#54616#50668' '
          end
          object Label44: TLabel
            Left = 168
            Top = 36
            Width = 60
            Height = 13
            Caption = #46300#47549#45768#45796'. '
          end
        end
        object cboINSTALLMENT: TComboBox
          Left = 120
          Top = 95
          Width = 145
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 11
          Text = #51068#49884#48520
          Items.Strings = (
            #51068#49884#48520
            '3'#44060#50900
            '6'#44060#50900
            '12'#44060#50900)
        end
      end
      object pnlParent01: TPanel
        Left = 8
        Top = 5
        Width = 729
        Height = 82
        BevelOuter = bvNone
        TabOrder = 4
        object pnlShowInsuredInfo: TPanel
          Left = 0
          Top = 0
          Width = 729
          Height = 82
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label18: TLabel
            Left = 462
            Top = 57
            Width = 39
            Height = 13
            Caption = #48372#54744#47308
          end
          object Label45: TLabel
            Left = 14
            Top = 14
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #44032#51077#51088#51060#47492
          end
          object Label46: TLabel
            Left = 14
            Top = 36
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #49373#45380#50900#51068
          end
          object Label47: TLabel
            Left = 14
            Top = 58
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #52264#47049#50857#46020
          end
          object Label48: TLabel
            Left = 222
            Top = 60
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #52572#49548#50868#51204#50672#47161
          end
          object Label49: TLabel
            Left = 222
            Top = 36
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #44032#51077#44221#47141
          end
          object Label50: TLabel
            Left = 222
            Top = 14
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #48176#44592#47049
          end
          object Label51: TLabel
            Left = 462
            Top = 14
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #47932#51201#49324#44256#54624#51613
          end
          object Label52: TLabel
            Left = 462
            Top = 36
            Width = 88
            Height = 13
            AutoSize = False
            Caption = #48372#54744#44592#44036
          end
          object edtPremium: TEdit
            Left = 552
            Top = 53
            Width = 168
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
          object edtINSURED_NAME: TEdit
            Left = 104
            Top = 8
            Width = 96
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
          end
          object edtDOB: TEdit
            Left = 104
            Top = 30
            Width = 96
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 2
          end
          object edtYONGDO: TEdit
            Left = 104
            Top = 52
            Width = 96
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 3
          end
          object edtAGELIMIT: TEdit
            Left = 312
            Top = 52
            Width = 124
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 4
          end
          object edtCAREER: TEdit
            Left = 312
            Top = 30
            Width = 124
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 5
          end
          object edtBAEGI: TEdit
            Left = 312
            Top = 8
            Width = 124
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 6
          end
          object edtPLUSCHARGE: TEdit
            Left = 552
            Top = 8
            Width = 168
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 7
          end
          object edtPOLICY_PERIOD: TEdit
            Left = 552
            Top = 30
            Width = 168
            Height = 21
            Color = 11922943
            Enabled = False
            ImeName = 'Microsoft IME 2003'
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 8
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #50756#47308'/'#49888#52397#49436' '#54869#51064
      ImageIndex = 3
      object Label36: TLabel
        Left = 340
        Top = 95
        Width = 220
        Height = 13
        Caption = #45784#51032' '#48372#54744#44032#51077#49888#52397#51060' '#50756#47308#46104#50632#49845#45768#45796'.'
      end
      object BitBtn8: TBitBtn
        Left = 283
        Top = 463
        Width = 81
        Height = 25
        Caption = '<   '#51060#51204' '
        TabOrder = 0
        OnClick = BitBtn8Click
      end
      object BitBtn9: TBitBtn
        Left = 368
        Top = 463
        Width = 81
        Height = 25
        Caption = #45796#51020'   >'
        Enabled = False
        TabOrder = 1
      end
      object pnlApplicantName: TPanel
        Left = 151
        Top = 88
        Width = 185
        Height = 25
        Alignment = taRightJustify
        BevelOuter = bvNone
        TabOrder = 2
      end
      object pnlParent02: TPanel
        Left = 6
        Top = 125
        Width = 734
        Height = 120
        BevelOuter = bvNone
        TabOrder = 3
      end
      object Button3: TButton
        Left = 576
        Top = 88
        Width = 103
        Height = 25
        Caption = #45812#48372#45236#50669#48372#44592
        TabOrder = 4
        Visible = False
        OnClick = Button1Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 537
    Width = 756
    Height = 46
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 656
      Top = 6
      Width = 83
      Height = 28
      Caption = #45803#44592'(&C)'
      TabOrder = 0
      Kind = bkClose
    end
    object Panel2: TPanel
      Left = 0
      Top = 1
      Width = 457
      Height = 41
      BevelOuter = bvNone
      Caption = #48372#54744#49345#45812' : 1566-4976, 02-6091-4977    '#54057#49828': 0303-0647-8250'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object IH: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 8
    Top = 520
  end
  object XD: TXMLDocument
    Left = 480
    Top = 528
    DOMVendorDesc = 'MSXML'
  end
  object XDSS: TXMLDocument
    Left = 512
    Top = 528
    DOMVendorDesc = 'MSXML'
  end
  object XDME: TXMLDocument
    Left = 544
    Top = 528
    DOMVendorDesc = 'MSXML'
  end
end
