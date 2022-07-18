object FPessoas: TFPessoas
  Left = 199
  Top = 103
  BorderStyle = bsDialog
  Caption = 'CLIENTES/FORNECEDORES'
  ClientHeight = 544
  ClientWidth = 831
  Color = clSilver
  TransparentColorValue = clNavy
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial Narrow'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 8
      Width = 42
      Height = 16
      Caption = 'Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object edLocalizar: TEdit
      Left = 12
      Top = 24
      Width = 805
      Height = 24
      CharCase = ecUpperCase
      Color = 16245236
      TabOrder = 0
      OnKeyPress = edLocalizarKeyPress
    end
  end
  object P2: TPanel
    Left = 0
    Top = 497
    Width = 831
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btIncluir: TBitBtn
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btIncluirClick
    end
    object btAlterar: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btAlterarClick
    end
    object btExcluir: TBitBtn
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btExcluirClick
    end
  end
  object G1: TDBGrid
    Left = 0
    Top = 60
    Width = 831
    Height = 437
    Cursor = crHandPoint
    Align = alClient
    BorderStyle = bsNone
    Color = clBtnHighlight
    DataSource = dsPessoas
    FixedColor = clCream
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnDblClick = G1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 352
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CPF/CNPJ'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 191
        Visible = True
      end>
  end
  object dsPessoas: TDataSource
    DataSet = dm.csdPessoas
    Left = 128
    Top = 192
  end
end