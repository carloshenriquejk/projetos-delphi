object FcadFPgto: TFcadFPgto
  Left = 439
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FORMA DE PAGAMENTO'
  ClientHeight = 189
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 148
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 56
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object edDescricao: TDBEdit
      Left = 24
      Top = 40
      Width = 185
      Height = 23
      Cursor = crDrag
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsFpgamento
      TabOrder = 0
    end
  end
  object P2: TPanel
    Left = 0
    Top = 148
    Width = 228
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
  object dsFpgamento: TDataSource
    DataSet = dm.cdsFpgpo
    Left = 8
    Top = 80
  end
end
