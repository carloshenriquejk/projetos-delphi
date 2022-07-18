object FTitem: TFTitem
  Left = 447
  Top = 138
  Width = 345
  Height = 244
  Caption = 'LAN'#199'AMENTO DE ITEM'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial Narrow'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 12
    Top = 24
    Width = 31
    Height = 16
    Caption = 'codigo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 87
    Width = 25
    Height = 16
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object P2: TPanel
    Left = 0
    Top = 153
    Width = 312
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btSalvar: TBitBtn
      Left = 70
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancalar: TBitBtn
      Left = 166
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancalarClick
    end
  end
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 116
      Top = 24
      Width = 47
      Height = 16
      Caption = 'Descri'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 24
      Width = 31
      Height = 16
      Caption = 'codigo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 87
      Width = 25
      Height = 16
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 116
      Top = 87
      Width = 54
      Height = 16
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 212
      Top = 87
      Width = 23
      Height = 16
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object edCodigo: TEdit
      Left = 12
      Top = 40
      Width = 77
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 0
      OnKeyPress = edCodigoKeyPress
    end
    object btTabela: TBitBtn
      Left = 216
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Tabela'
      TabOrder = 1
      OnClick = btTabelaClick
    end
    object edValor: TEdit
      Left = 16
      Top = 104
      Width = 73
      Height = 24
      ReadOnly = True
      TabOrder = 2
    end
  end
  object edDescricao: TEdit
    Left = 116
    Top = 40
    Width = 173
    Height = 24
    CharCase = ecUpperCase
    Color = clWhite
    ReadOnly = True
    TabOrder = 2
  end
  object edQuamtidade: TEdit
    Left = 116
    Top = 104
    Width = 69
    Height = 24
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 3
    Text = '0'
    OnChange = edQuamtidadeChange
    OnKeyPress = edQuamtidadeKeyPress
  end
  object edTotal: TEdit
    Left = 212
    Top = 104
    Width = 77
    Height = 24
    CharCase = ecUpperCase
    Color = clWhite
    ReadOnly = True
    TabOrder = 4
    Text = '0,00'
  end
  object qryCodigo: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS WHERE '
      ''
      'ID_PRODUTO =:ID_PRODUTO AND'
      ''
      '(ID_PESSOA=:ID_PESSOA OR 0=:ID_PESSOA)')
    SQLConnection = dm.BDCurso
    Left = 24
    Top = 136
    object qryCodigoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qryCodigoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object qryCodigoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object qryCodigoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qryCodigoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryCodigoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
