object frmCadResponsaveis: TfrmCadResponsaveis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro De Responsaveis'
  ClientHeight = 458
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 120
    Top = 136
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 192
    Top = 189
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label1: TLabel
    Left = 217
    Top = 16
    Width = 304
    Height = 58
    Caption = 'Registro de Respons'#225'veis'#13#10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 136
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 32
    Top = 192
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object Label6: TLabel
    Left = 192
    Top = 253
    Width = 52
    Height = 13
    Caption = 'Operadora'
  end
  object Label7: TLabel
    Left = 32
    Top = 256
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label8: TLabel
    Left = 359
    Top = 130
    Width = 105
    Height = 13
    Caption = 'Localizar Responsavel'
  end
  object tdNome: TDBEdit
    Left = 120
    Top = 155
    Width = 185
    Height = 21
    DataField = 'nome'
    DataSource = dm.dsResponsaveis
    TabOrder = 0
  end
  object tdCpf: TDBEdit
    Left = 192
    Top = 208
    Width = 113
    Height = 21
    DataField = 'cpf'
    DataSource = dm.dsResponsaveis
    MaxLength = 14
    TabOrder = 1
  end
  object tdId: TDBEdit
    Left = 32
    Top = 155
    Width = 65
    Height = 21
    DataField = 'id'
    DataSource = dm.dsResponsaveis
    TabOrder = 2
  end
  object tdRg: TDBEdit
    Left = 32
    Top = 211
    Width = 129
    Height = 21
    DataField = 'rg'
    DataSource = dm.dsResponsaveis
    TabOrder = 3
  end
  object tdoperadora: TDBEdit
    Left = 192
    Top = 275
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    DataField = 'operadora'
    DataSource = dm.dsResponsaveis
    TabOrder = 4
  end
  object tdCelular: TDBEdit
    Left = 32
    Top = 275
    Width = 129
    Height = 21
    DataField = 'celular'
    DataSource = dm.dsResponsaveis
    MaxLength = 14
    TabOrder = 5
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 40
    Top = 336
    Width = 265
    Height = 73
    Caption = 'Parentesco'
    Columns = 3
    DataField = 'parentesco'
    DataSource = dm.dsResponsaveis
    Items.Strings = (
      'Pai'
      'M'#227'e'
      'Respons'#225'vel')
    TabOrder = 6
    Values.Strings = (
      'Pai'
      'M'#227'e'
      'Responsavel')
  end
  object DBNavigator1: TDBNavigator
    Left = 249
    Top = 91
    Width = 232
    Height = 25
    DataSource = dm.dsResponsaveis
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 359
    Top = 176
    Width = 268
    Height = 220
    DataSource = dm.dsResponsaveis
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 86
        Visible = True
      end>
  end
  object edLocalizar: TEdit
    Left = 359
    Top = 149
    Width = 268
    Height = 21
    TabOrder = 9
    OnChange = edLocalizarChange
  end
end
