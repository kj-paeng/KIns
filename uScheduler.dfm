object frmScheduler: TfrmScheduler
  Left = 247
  Top = 140
  BorderStyle = bsSingle
  Caption = #51068#51221#54364
  ClientHeight = 377
  ClientWidth = 786
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
  object pControl: TPageControl
    Left = 144
    Top = 8
    Width = 633
    Height = 313
    ActivePage = TS
    TabOrder = 0
    object TS: TTabSheet
      Caption = #51068#48324' '#49828#52992#51572
      object sgDay: TStringGrid
        Left = 0
        Top = 0
        Width = 625
        Height = 286
        Align = alClient
        ColCount = 10
        DefaultRowHeight = 21
        RowCount = 49
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        PopupMenu = pm
        ScrollBars = ssVertical
        TabOrder = 0
        OnDblClick = sgDayDblClick
        OnDrawCell = sgDayDrawCell
        OnMouseMove = sgDayMouseMove
        ColWidths = (
          64
          539
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21
          21)
      end
    end
  end
  object Edit1: TEdit
    Left = 16
    Top = 320
    Width = 73
    Height = 20
    ImeName = 'Microsoft IME 2003'
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 96
    Top = 320
    Width = 65
    Height = 20
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
    Text = 'Edit2'
    Visible = False
  end
  object btnClose: TBitBtn
    Left = 695
    Top = 332
    Width = 83
    Height = 28
    Caption = #45803#44592'(&C)'
    TabOrder = 3
    OnClick = btnCloseClick
    Kind = bkClose
  end
  object Panel1: TPanel
    Left = 2
    Top = 8
    Width = 139
    Height = 158
    BevelInner = bvLowered
    TabOrder = 4
    object mdPick: TMonthDatePicker
      Left = 2
      Top = 2
      Width = 135
      Height = 154
      Align = alClient
      Date = 41223.937237291670000000
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      OnClick = mdPickClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'KorInsDB'
    Left = 160
    Top = 320
  end
  object pm: TPopupMenu
    Left = 240
    Top = 135
    object mnuAdd: TMenuItem
      Caption = #51068#51221#52628#44032
      OnClick = mnuAddClick
    end
    object mnuModify: TMenuItem
      Caption = #51068#51221#49688#51221
      OnClick = mnuModifyClick
    end
    object mnuDelete: TMenuItem
      Caption = #51068#51221#49325#51228
      OnClick = mnuDeleteClick
    end
  end
  object qryAdd: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'INSERT INTO SCHEDULER (SDATE, STIME, EDATE, ETIME, '
      'ALARM_1DAY, ALARM_1HOUR, ALARM_30MIN, STITLE, SMEMO)'
      'VALUES'
      '(:SDATE, :STIME, :EDATE, :ETIME, '
      ':ALARM_1DAY, :ALARM_1HOUR, :ALARM_30MIN, :STITLE, :SMEMO)'
      '')
    Left = 192
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STIME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ETIME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_1DAY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_1HOUR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_30MIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STITLE'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'SMEMO'
        ParamType = ptInput
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'UPDATE SCHEDULER SET'
      'SDATE = :SDATE, '
      'STIME = :STIME, '
      'EDATE = :EDATE, '
      'ETIME = :ETIME, '
      'ALARM_1DAY = :ALARM_1DAY, '
      'ALARM_1HOUR = :ALARM_1HOUR, '
      'ALARM_30MIN = :ALARM_30MIN, '
      'STITLE = :STITLE, '
      'SMEMO = :SMEMO'
      'WHERE '
      'SDATE = :SOLDDATE'
      'AND STIME = :SOLDTIME'
      '')
    Left = 224
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STIME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ETIME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_1DAY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_1HOUR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALARM_30MIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STITLE'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'SMEMO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SOLDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SOLDTIME'
        ParamType = ptInput
      end>
  end
  object qryDelete: TQuery
    DatabaseName = 'KorInsDB'
    SQL.Strings = (
      'DELETE FROM SCHEDULER'
      'WHERE '
      'SDATE = :SDATE'
      'AND STIME = :STIME'
      '')
    Left = 256
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STIME'
        ParamType = ptInput
      end>
  end
end
