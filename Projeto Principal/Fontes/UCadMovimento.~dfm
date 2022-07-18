object FCadMovimento: TFCadMovimento
  Left = 404
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE MOVIMENTO'
  ClientHeight = 461
  ClientWidth = 682
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
  object Label4: TLabel
    Left = 280
    Top = 384
    Width = 105
    Height = 15
    Caption = 'Cliente/Fornecedor'
  end
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 15
      Caption = 'Data'
    end
    object lbPessoa: TLabel
      Left = 176
      Top = 8
      Width = 105
      Height = 15
      Caption = 'Cliente/Fornecedor'
    end
    object eddata: TDateTimePicker
      Left = 16
      Top = 24
      Width = 129
      Height = 23
      Date = 44671.552481192130000000
      Time = 44671.552481192130000000
      TabOrder = 0
    end
    object btTabela: TBitBtn
      Left = 448
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Tabela'
      TabOrder = 1
      OnClick = btTabelaClick
    end
    object lkPessoa: TDBLookupComboBox
      Left = 176
      Top = 24
      Width = 249
      Height = 23
      KeyField = 'ID_PESSOA'
      ListField = 'NOME'
      ListSource = dsPessoas
      TabOrder = 2
    end
  end
  object P3: TPanel
    Left = 0
    Top = 420
    Width = 682
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    TabOrder = 1
    object btCancelar: TBitBtn
      Left = 576
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 0
    end
    object btnSalvar: TBitBtn
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btExcluir: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btAlterar: TBitBtn
      Left = 104
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
      TabOrder = 3
    end
    object btAdicionar: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btAdicionarClick
    end
  end
  object P2: TPanel
    Left = 0
    Top = 57
    Width = 682
    Height = 363
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 320
      Width = 120
      Height = 15
      Caption = 'Forma de Pagamento'
    end
    object Label5: TLabel
      Left = 200
      Top = 320
      Width = 106
      Height = 15
      Caption = 'Meio de Transporte'
    end
    object dbTotal: TDBText
      Left = 568
      Top = 328
      Width = 65
      Height = 17
      Color = 16245236
      DataField = 'Soma'
      DataSource = dsCitens
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 682
      Height = 313
      Align = alTop
      BorderStyle = bsNone
      DataSource = dsCitens
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#211'DIGO'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Width = 305
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'QTD.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
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
      ListSource = dsFpgto
      TabOrder = 1
    end
    object lkTransporte: TDBLookupComboBox
      Left = 200
      Top = 332
      Width = 137
      Height = 23
      KeyField = 'ID_TRASPORTE'
      ListField = 'MEIO'
      ListSource = dsTransporte
      TabOrder = 2
    end
  end
  object dsPessoas: TDataSource
    DataSet = dm.csdPessoas
    Left = 104
    Top = 217
  end
  object dsFpgto: TDataSource
    DataSet = dm.cdsFpgpo
    Left = 184
    Top = 217
  end
  object dsTransporte: TDataSource
    DataSet = dm.cdsTransporte
    Left = 248
    Top = 217
  end
  object dsCitens: TDataSource
    DataSet = dm.CItens
    Left = 320
    Top = 225
  end
end
