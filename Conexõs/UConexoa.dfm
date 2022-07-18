object BtnSend: TBtnSend
  Left = 445
  Top = 118
  Width = 702
  Height = 516
  Caption = 'Calculadora'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 40
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 40
    Top = 184
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object BtnSomar: TBitBtn
    Left = 56
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Somar'
    PopupMenu = PopupMenu
    TabOrder = 3
    OnClick = BtnSomarClick
  end
  object Valor1: TEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PMLabel
    TabOrder = 0
  end
  object Valor2: TEdit
    Left = 40
    Top = 136
    Width = 121
    Height = 21
    PopupMenu = PMLabel
    TabOrder = 1
  end
  object ValResult: TEdit
    Left = 40
    Top = 200
    Width = 121
    Height = 21
    PopupMenu = PMLabel
    TabOrder = 2
  end
  object MainMenu: TMainMenu
    Left = 296
    Top = 144
    object DataModule11: TMenuItem
      Caption = 'Arquivo'
      object Novo1: TMenuItem
        Caption = 'Novo'
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Usuario1: TMenuItem
        Caption = 'Usuario'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object PopupMenu: TPopupMenu
    Left = 360
    Top = 144
    object este1: TMenuItem
      Caption = 'Teste'
    end
    object este2: TMenuItem
      Caption = 'Teste'
    end
    object este3: TMenuItem
      Caption = 'Teste'
    end
  end
  object PMLabel: TPopupMenu
    Left = 432
    Top = 144
    object Negrito1: TMenuItem
      Caption = 'Negrito'
      OnClick = Negrito1Click
    end
    object Normal1: TMenuItem
      Caption = 'Normal'
      OnClick = Normal1Click
    end
  end
end
