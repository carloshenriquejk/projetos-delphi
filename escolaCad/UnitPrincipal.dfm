object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 409
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 344
    Top = 120
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Responsaveis1: TMenuItem
        Caption = 'Responsaveis'
        OnClick = Responsaveis1Click
      end
    end
  end
end
