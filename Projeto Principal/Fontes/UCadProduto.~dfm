object FCadProduto: TFCadProduto
  Left = 590
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE PRODUTO'
  ClientHeight = 285
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object Label4: TLabel
    Left = 40
    Top = 16
    Width = 34
    Height = 15
    Caption = 'Nome'
  end
  object Label6: TLabel
    Left = 40
    Top = 176
    Width = 22
    Height = 15
    Caption = 'Qtd.'
  end
  object Label7: TLabel
    Left = 200
    Top = 72
    Width = 24
    Height = 15
    Caption = 'Tipo'
  end
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 244
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 16
      Width = 34
      Height = 15
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 30
      Top = 80
      Width = 22
      Height = 15
      Caption = 'Qtd.'
    end
    object Label3: TLabel
      Left = 128
      Top = 80
      Width = 24
      Height = 15
      Caption = 'Tipo'
    end
    object Label5: TLabel
      Left = 264
      Top = 80
      Width = 27
      Height = 15
      Caption = 'Valor'
    end
    object lbFornecedor: TLabel
      Left = 30
      Top = 136
      Width = 63
      Height = 15
      Caption = 'Fornecedor'
    end
    object edNome: TDBEdit
      Left = 30
      Top = 40
      Width = 339
      Height = 23
      Cursor = crDrag
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsProdutos
      TabOrder = 0
    end
    object edQtd: TDBEdit
      Left = 30
      Top = 96
      Width = 67
      Height = 23
      CharCase = ecUpperCase
      DataField = 'QUANTIDADE'
      DataSource = dsProdutos
      TabOrder = 1
    end
    object cbTipo: TComboBox
      Left = 128
      Top = 96
      Width = 113
      Height = 23
      Cursor = crHandPoint
      Style = csDropDownList
      ItemHeight = 15
      ItemIndex = 2
      TabOrder = 2
      Text = 'Todos'
      OnClick = cbTipoClick
      Items.Strings = (
        'Compra'
        'Venda'
        'Todos')
    end
    object lkfornecedor: TDBLookupComboBox
      Left = 30
      Top = 160
      Width = 331
      Height = 23
      Color = clCream
      DataField = 'ID_PESSOA'
      DataSource = dsProdutos
      KeyField = 'ID_PESSOA'
      ListField = 'NOME'
      ListSource = dsPessoas
      TabOrder = 3
    end
  end
  object P2: TPanel
    Left = 0
    Top = 244
    Width = 384
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    TabOrder = 1
    object btSalvar: TBitBtn
      Left = 100
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 196
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object edValor: TDBEdit
    Left = 262
    Top = 96
    Width = 99
    Height = 23
    Cursor = crDrag
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = dsProdutos
    TabOrder = 2
  end
  object dsProdutos: TDataSource
    DataSet = dm.csdProdutos
    Left = 184
    Top = 200
  end
  object dsPessoas: TDataSource
    DataSet = dm.csdPessoas
    Left = 120
    Top = 200
  end
end
