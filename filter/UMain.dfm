object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 595
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 24
    Width = 483
    Height = 25
    Caption = 'filtrando dados e trasferindo para uma tabela '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 120
    Width = 745
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'observacoes'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 384
    Width = 761
    Height = 193
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'observacoes'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 357
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 168
    Top = 353
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 72
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'tipo'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dataHora'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'responsavel'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'observacoes'
        Attributes = [faRequired]
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 544
    Top = 336
    Content = {
      414442530F00000050020000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C006500310005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B040004000000690064
      00050004000000690064000C00010000000E000D000F00011000011100011200
      011300FFFFFFFF1400FFFFFFFF15000116000117000118000400000069006400
      FEFF0B0400080000007400690070006F000500080000007400690070006F000C
      00020000000E0019001A00140000000F00011200011B00011600011800080000
      007400690070006F001C0014000000FEFF0B0400100000006400610074006100
      48006F0072006100050010000000640061007400610048006F00720061000C00
      030000000E001D000F00011200011B0001160001180010000000640061007400
      610048006F0072006100FEFF0B04001600000072006500730070006F006E0073
      006100760065006C0005001600000072006500730070006F006E007300610076
      0065006C000C00040000000E0019001A001E0000000F00011200011B00011600
      0118001600000072006500730070006F006E0073006100760065006C001C001E
      000000FEFF0B0400160000006F0062007300650072007600610063006F006500
      73000500160000006F0062007300650072007600610063006F00650073000C00
      050000000E001E000F00011F00011200011B00011600011800160000006F0062
      007300650072007600610063006F0065007300FEFEFF20FEFF21FEFF22FEFEFE
      FF23FEFF24250002000000FF26FEFEFE0E004D0061006E006100670065007200
      1E00550070006400610074006500730052006500670069007300740072007900
      12005400610062006C0065004C006900730074000A005400610062006C006500
      08004E0061006D006500140053006F0075007200630065004E0061006D006500
      0A0054006100620049004400240045006E0066006F0072006300650043006F00
      6E00730074007200610069006E00740073001E004D0069006E0069006D007500
      6D0043006100700061006300690074007900180043006800650063006B004E00
      6F0074004E0075006C006C00140043006F006C0075006D006E004C0069007300
      74000C0043006F006C0075006D006E00100053006F0075007200630065004900
      44000E006400740049006E007400330032001000440061007400610054007900
      700065001400530065006100720063006800610062006C006500120041006C00
      6C006F0077004E0075006C006C000E004100750074006F0049006E0063000800
      420061007300650022004100750074006F0049006E006300720065006D006500
      6E007400530065006500640022004100750074006F0049006E00630072006500
      6D0065006E007400530074006500700014004F0041006C006C006F0077004E00
      75006C006C0010004F0049006E005700680065007200650020004F0041006600
      74006500720049006E0073004300680061006E006700650064001A004F007200
      6900670069006E0043006F006C004E0061006D00650018006400740041006E00
      7300690053007400720069006E0067000800530069007A00650012004F004900
      6E00550070006400610074006500140053006F00750072006300650053006900
      7A0065001400640074004400610074006500540069006D0065000C0064007400
      4D0065006D006F00100042006C006F00620044006100740061001C0043006F00
      6E00730074007200610069006E0074004C006900730074001000560069006500
      77004C006900730074000E0052006F0077004C00690073007400180052006500
      6C006100740069006F006E004C006900730074001C0055007000640061007400
      650073004A006F00750072006E0061006C001200530061007600650050006F00
      69006E0074000E004300680061006E00670065007300}
    object FDMemTable1id: TFDAutoIncField
      FieldName = 'id'
    end
    object FDMemTable1tipo: TStringField
      FieldName = 'tipo'
      Required = True
    end
    object FDMemTable1dataHora: TDateTimeField
      FieldName = 'dataHora'
      Required = True
    end
    object FDMemTable1responsavel: TStringField
      FieldName = 'responsavel'
      Required = True
      Size = 30
    end
    object FDMemTable1observacoes: TMemoField
      FieldName = 'observacoes'
      Required = True
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 272
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable1
    Left = 424
    Top = 336
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'movimentacoes'
    Left = 176
    Top = 72
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDTable1tipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object FDTable1dataHora: TDateTimeField
      FieldName = 'dataHora'
      Origin = 'dataHora'
      Required = True
    end
    object FDTable1responsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
      Size = 30
    end
    object FDTable1observacoes: TMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      BlobType = ftMemo
    end
  end
end
