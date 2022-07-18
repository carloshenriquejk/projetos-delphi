object FProdutos: TFProdutos
  Left = 728
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'TABELA DE PRODUTOS'
  ClientHeight = 430
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 542
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
      Width = 649
      Height = 23
      CharCase = ecUpperCase
      Color = 16245236
      TabOrder = 0
      OnChange = edLocalizarChange
    end
  end
  object P2: TPanel
    Left = 0
    Top = 383
    Width = 542
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
      Left = 144
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
      Left = 232
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
      Left = 320
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
    Width = 542
    Height = 323
    Cursor = crHandPoint
    Align = alClient
    BorderStyle = bsNone
    Color = clBtnHighlight
    DataSource = DSProdutos
    FixedColor = clCream
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
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
    OnKeyDown = G1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object lkFpgto: TDBLookupComboBox
    Left = 16
    Top = 336
    Width = 137
    Height = 23
    KeyField = 'ID_PGTO'
    ListField = 'DESCRICAO'
    TabOrder = 3
  end
  object DSProdutos: TDataSource
    DataSet = dm.csdProdutos
    Left = 128
    Top = 192
  end
  object dsFpgto: TDataSource
    DataSet = dm.cdsFpgpo
    Left = 176
    Top = 297
  end
end