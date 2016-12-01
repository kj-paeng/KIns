object frmReq_Complain: TfrmReq_Complain
  Left = 419
  Top = 182
  BorderStyle = bsSingle
  Caption = #44148#51032#48143' '#49688#51221#50836#52397
  ClientHeight = 442
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 52
    Width = 54
    Height = 13
    AutoSize = False
    Caption = #51452#51228'       '
  end
  object Label2: TLabel
    Left = 16
    Top = 76
    Width = 217
    Height = 13
    AutoSize = False
    Caption = #44148#51032' '#48143' '#49688#51221#50836#52397' '#45236#50669
  end
  object Label4: TLabel
    Left = 16
    Top = 28
    Width = 54
    Height = 13
    AutoSize = False
    Caption = #51089#49457#51088
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 408
    Width = 75
    Height = 25
    Caption = #48372#45236#44592
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 592
    Top = 408
    Width = 75
    Height = 25
    Caption = #45803#44592'(&C)'
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object edtSubject: TEdit
    Left = 88
    Top = 48
    Width = 585
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
  end
  object mContent: TMemo
    Left = 88
    Top = 96
    Width = 585
    Height = 289
    ImeName = 'Microsoft IME 2003'
    TabOrder = 3
  end
  object edtWriter: TEdit
    Left = 88
    Top = 24
    Width = 129
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 4
  end
  object XD: TXMLDocument
    Left = 13
    Top = 400
    DOMVendorDesc = 'MSXML'
  end
end
