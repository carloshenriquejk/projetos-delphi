object Main: TMain
  Left = 0
  Top = 0
  Width = 598
  Height = 365
  VertScrollBar.Position = 228
  AutoScroll = True
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = -52
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 24
    Top = -4
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object LAbels: TLabel
    Left = 24
    Top = 44
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = -228
    Width = 479
    Height = 153
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Codigo: TMaskEdit
    Left = 24
    Top = -33
    Width = 89
    Height = 21
    TabOrder = 1
    Text = ''
  end
  object Nome: TMaskEdit
    Left = 24
    Top = 15
    Width = 361
    Height = 21
    TabOrder = 2
    Text = ''
  end
  object UF: TMaskEdit
    Left = 24
    Top = 63
    Width = 137
    Height = 21
    TabOrder = 3
    Text = ''
  end
  object Button1: TButton
    Left = 39
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 120
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 208
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
  end
  object Button4: TButton
    Left = 304
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
  end
  object Button5: TButton
    Left = 393
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = -40
    Width = 240
    Height = 33
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 9
  end
  object Memo1: TMemo
    Left = 8
    Top = 168
    Width = 241
    Height = 357
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
  end
  object ScrollBox1: TScrollBox
    Left = 264
    Top = 168
    Width = 257
    Height = 121
    VertScrollBar.Position = 180
    TabOrder = 11
    object Memo2: TMemo
      Left = 3
      Top = -215
      Width = 294
      Height = 357
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
  end
end
