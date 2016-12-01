object Form1: TForm1
  Left = 215
  Top = 200
  Width = 849
  Height = 555
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 48
    Width = 17
    Height = 13
    Caption = 'LIG'
  end
  object Label2: TLabel
    Left = 26
    Top = 196
    Width = 44
    Height = 13
    Caption = 'Samsung'
  end
  object Label3: TLabel
    Left = 26
    Top = 340
    Width = 28
    Height = 13
    Caption = 'Meritz'
  end
  object Memo1: TMemo
    Left = 24
    Top = 64
    Width = 401
    Height = 122
    ImeName = 'Microsoft IME 2003'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    Enabled = False
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
    Text = 'Edit1'
    Visible = False
  end
  object Button2: TButton
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 488
    Top = 8
    Width = 25
    Height = 33
    DataSource = DataSource1
    ImeName = 'Microsoft IME 2003'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Button3: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button3'
    Enabled = False
    TabOrder = 5
    Visible = False
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 264
    Top = 8
    Width = 145
    Height = 21
    Style = csDropDownList
    ImeName = 'Microsoft IME 2003'
    ItemHeight = 13
    TabOrder = 6
    Visible = False
    Items.Strings = (
      #49849#51064
      #52712#49548
      #51473#51648)
  end
  object Button4: TButton
    Left = 168
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button4'
    Enabled = False
    TabOrder = 7
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 248
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button5'
    Enabled = False
    TabOrder = 8
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 328
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button6'
    Enabled = False
    TabOrder = 9
    Visible = False
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 408
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button7'
    Enabled = False
    TabOrder = 10
    Visible = False
    OnClick = Button7Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 8
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 11
    Text = 'Edit2'
    Visible = False
  end
  object Button8: TButton
    Left = 408
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button8'
    Enabled = False
    TabOrder = 12
    Visible = False
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 328
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button9'
    Enabled = False
    TabOrder = 13
    Visible = False
    OnClick = Button9Click
  end
  object Memo2: TMemo
    Left = 24
    Top = 208
    Width = 401
    Height = 122
    ImeName = 'Microsoft IME 2003'
    TabOrder = 14
  end
  object Memo3: TMemo
    Left = 24
    Top = 352
    Width = 401
    Height = 122
    ImeName = 'Microsoft IME 2003'
    TabOrder = 15
  end
  object Button10: TButton
    Left = 432
    Top = 64
    Width = 75
    Height = 25
    Caption = 'ExecSQL'
    TabOrder = 16
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 432
    Top = 208
    Width = 75
    Height = 25
    Caption = 'ExecSQL'
    TabOrder = 17
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 432
    Top = 352
    Width = 75
    Height = 25
    Caption = 'ExecSQL'
    TabOrder = 18
    OnClick = Button12Click
  end
  object Memo4: TMemo
    Left = 512
    Top = 64
    Width = 313
    Height = 410
    ImeName = 'Microsoft IME 2003'
    Lines.Strings = (
      'Memo4')
    TabOrder = 19
  end
  object Button13: TButton
    Left = 64
    Top = 488
    Width = 75
    Height = 25
    Caption = 'zip'
    TabOrder = 20
    OnClick = Button13Click
  end
  object ezipcode: TEdit
    Left = 144
    Top = 488
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 21
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
    Left = 520
    Top = 8
  end
  object XD: TXMLDocument
    Left = 544
    Top = 8
    DOMVendorDesc = 'MSXML'
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = 'C:\Work\KorIns\Source\ccc.xml'
    FieldDefs = <
      item
        Name = 'uid'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'id'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'name'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 22
        Size = 4
      end
      item
        Name = 'jumin1'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 14
        Size = 4
      end
      item
        Name = 'jumin2'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'carno'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'sou'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'zipcode'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 7
        Size = 4
      end
      item
        Name = 'juso1'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 47
        Size = 4
      end
      item
        Name = 'phone'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 13
        Size = 4
      end
      item
        Name = 'email'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 17
        Size = 4
      end
      item
        Name = 'in_ip'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'in_date'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 19
        Size = 4
      end
      item
        Name = 'status'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'usermemo'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 215
        Size = 4
      end
      item
        Name = 'memo'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 6
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 592
    Top = 8
    object ClientDataSet1uid: TStringField
      FieldName = 'uid'
      Size = 2
    end
    object ClientDataSet1id: TBCDField
      FieldName = 'id'
      Precision = 1
      Size = 0
    end
    object ClientDataSet1name: TBCDField
      FieldName = 'name'
      Precision = 22
      Size = 0
    end
    object ClientDataSet1jumin1: TBCDField
      FieldName = 'jumin1'
      Precision = 14
      Size = 0
    end
    object ClientDataSet1jumin2: TBCDField
      FieldName = 'jumin2'
      Precision = 1
      Size = 0
    end
    object ClientDataSet1carno: TBCDField
      FieldName = 'carno'
      Precision = 12
      Size = 0
    end
    object ClientDataSet1sou: TBCDField
      FieldName = 'sou'
      Precision = 1
      Size = 0
    end
    object ClientDataSet1zipcode: TBCDField
      FieldName = 'zipcode'
      Precision = 7
      Size = 0
    end
    object ClientDataSet1juso1: TBCDField
      FieldName = 'juso1'
      Precision = 32
      Size = 0
    end
    object ClientDataSet1phone: TBCDField
      FieldName = 'phone'
      Precision = 13
      Size = 0
    end
    object ClientDataSet1email: TBCDField
      FieldName = 'email'
      Precision = 17
      Size = 0
    end
    object ClientDataSet1in_ip: TBCDField
      FieldName = 'in_ip'
      Precision = 12
      Size = 0
    end
    object ClientDataSet1in_date: TBCDField
      FieldName = 'in_date'
      Precision = 19
      Size = 0
    end
    object ClientDataSet1status: TBCDField
      FieldName = 'status'
      Precision = 8
      Size = 0
    end
    object ClientDataSet1usermemo: TBCDField
      FieldName = 'usermemo'
      Precision = 32
      Size = 0
    end
    object ClientDataSet1memo: TBCDField
      FieldName = 'memo'
      Precision = 6
      Size = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 624
    Top = 8
  end
  object Thread1: TIdThreadComponent
    OnRun = Thread1Run
    Left = 568
    Top = 8
  end
  object IdHTTP1: TIdHTTP
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
    Left = 24
    Top = 488
  end
end
