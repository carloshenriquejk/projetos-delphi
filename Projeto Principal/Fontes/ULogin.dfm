object FLogin: TFLogin
  Left = 588
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'LOGIN'
  ClientHeight = 225
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMinimized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 277
    Height = 225
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 44
      Height = 15
      Caption = 'Usu'#225'rio'
    end
    object Label2: TLabel
      Left = 12
      Top = 80
      Width = 36
      Height = 15
      Caption = 'Senha'
    end
    object lkUsuario: TDBLookupComboBox
      Left = 12
      Top = 40
      Width = 253
      Height = 23
      Color = clMenuBar
      KeyField = 'ID_USUARIO'
      ListField = 'LOGIN'
      ListSource = dsUsuarios
      TabOrder = 0
    end
    object edSenha: TEdit
      Left = 12
      Top = 101
      Width = 245
      Height = 23
      CharCase = ecUpperCase
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object P2: TPanel
    Left = 0
    Top = 168
    Width = 277
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = 10206463
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BTConfirmar: TBitBtn
      Left = 80
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = BTConfirmarClick
    end
    object BTCancelar: TBitBtn
      Left = 184
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BTCancelarClick
    end
  end
  object dsUsuarios: TDataSource
    DataSet = dm.csdUsuarios
    Left = 40
    Top = 132
  end
end