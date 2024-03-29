object FCadPessoas: TFCadPessoas
  Left = 492
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 229
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 312
    Top = 16
    Width = 59
    Height = 15
    Caption = 'CPF/CNPJ'
  end
  object Label4: TLabel
    Left = 40
    Top = 88
    Width = 59
    Height = 15
    Caption = 'CPF/CNPJ'
  end
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 188
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 34
      Height = 15
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 368
      Top = 16
      Width = 59
      Height = 15
      Caption = 'CPF/CNPJ'
    end
    object Label5: TLabel
      Left = 40
      Top = 80
      Width = 47
      Height = 15
      Caption = 'Telefone'
    end
    object Label6: TLabel
      Left = 216
      Top = 80
      Width = 25
      Height = 15
      Caption = 'Pais'
    end
    object edNome: TDBEdit
      Left = 38
      Top = 40
      Width = 299
      Height = 23
      Cursor = crDrag
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsPessoas
      TabOrder = 0
    end
    object lkPais: TDBLookupComboBox
      Left = 216
      Top = 104
      Width = 129
      Height = 23
      Color = clWhite
      DataField = 'ID_PAISES'
      DataSource = dsPessoas
      KeyField = 'ID_PAISES'
      ListField = 'NOME'
      ListSource = dsPaises
      TabOrder = 1
    end
    object RgTipo: TDBRadioGroup
      Left = 368
      Top = 80
      Width = 185
      Height = 49
      Caption = 'Tipo'
      Columns = 2
      DataField = 'TIPO'
      DataSource = dsPessoas
      Enabled = False
      Items.Strings = (
        'Cliente'
        'Fornecedor')
      TabOrder = 2
      Values.Strings = (
        'C'
        'F')
    end
    object mkDocumento: TMaskEdit
      Left = 362
      Top = 40
      Width = 143
      Height = 24
      TabOrder = 3
    end
  end
  object P2: TPanel
    Left = 0
    Top = 188
    Width = 583
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    TabOrder = 1
    object btSalvar: TBitBtn
      Left = 28
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 124
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object edTelefone: TDBEdit
    Left = 38
    Top = 104
    Width = 150
    Height = 23
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = dsPessoas
    MaxLength = 14
    TabOrder = 2
  end
  object dsPessoas: TDataSource
    DataSet = dm.csdPessoas
    Left = 336
    Top = 160
  end
  object dsPaises: TDataSource
    DataSet = dm.cdsPais
    Left = 232
    Top = 152
  end
end
