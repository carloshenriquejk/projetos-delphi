object FcadUsuario: TFcadUsuario
  Left = 439
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 296
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
    Height = 255
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 31
      Height = 15
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 40
      Top = 72
      Width = 36
      Height = 15
      Caption = 'Senha'
    end
    object edLogin: TDBEdit
      Left = 38
      Top = 40
      Width = 150
      Height = 23
      Cursor = crDrag
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = dsUsuarios
      TabOrder = 0
    end
    object ckMaster: TDBCheckBox
      Left = 38
      Top = 128
      Width = 150
      Height = 17
      Caption = 'Master'
      DataField = 'MASTER'
      DataSource = dsUsuarios
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object edSenha: TDBEdit
      Left = 38
      Top = 96
      Width = 150
      Height = 23
      CharCase = ecUpperCase
      DataField = 'SENHA'
      DataSource = dsUsuarios
      TabOrder = 1
    end
  end
  object P2: TPanel
    Left = 0
    Top = 255
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
  object dsUsuarios: TDataSource
    DataSet = dm.csdUsuarios
    Left = 152
    Top = 136
  end
end
