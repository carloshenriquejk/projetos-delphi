object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 455
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gridUsuarios: TDBGrid
    Left = 32
    Top = 280
    Width = 465
    Height = 145
    DataSource = dsCadastro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Width = 113
        Visible = True
      end>
  end
  object btnOpen: TButton
    Left = 296
    Top = 88
    Width = 89
    Height = 33
    Caption = 'Abrir Tabela'
    TabOrder = 1
    OnClick = btnOpenClick
  end
  object Button1: TButton
    Left = 408
    Top = 88
    Width = 89
    Height = 33
    Caption = 'Fechar Tabela'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 216
    Width = 464
    Height = 42
    DataSource = dsCadastro
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 3
  end
  object btProximo: TButton
    Left = 87
    Top = 152
    Width = 49
    Height = 34
    Caption = '<'
    TabOrder = 4
    OnClick = btProximoClick
  end
  object btPrimeiro: TButton
    Left = 32
    Top = 152
    Width = 49
    Height = 34
    Caption = '<<'
    TabOrder = 5
    OnClick = btPrimeiroClick
  end
  object btAnterior: TButton
    Left = 142
    Top = 152
    Width = 49
    Height = 34
    Caption = '>'
    TabOrder = 6
    OnClick = btAnteriorClick
  end
  object btUltimo: TButton
    Left = 197
    Top = 152
    Width = 49
    Height = 34
    Caption = '>>'
    TabOrder = 7
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 252
    Top = 152
    Width = 53
    Height = 34
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = btInserirClick
  end
  object btDeletar: TButton
    Left = 311
    Top = 152
    Width = 53
    Height = 34
    Caption = 'Deletar'
    TabOrder = 9
    OnClick = btDeletarClick
  end
  object btSalvar: TButton
    Left = 370
    Top = 152
    Width = 55
    Height = 34
    Caption = 'salvar'
    Enabled = False
    TabOrder = 10
    OnClick = btSalvarClick
  end
  object btCancelar: TButton
    Left = 442
    Top = 152
    Width = 55
    Height = 34
    Caption = 'cancelar'
    Enabled = False
    TabOrder = 11
    OnClick = btCancelarClick
  end
  object BD: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object tfCadastro: TFDTable
    Active = True
    AfterScroll = tfCadastroAfterScroll
    IndexFieldNames = 'id'
    Connection = BD
    TableName = 'cadastro.usuario'
    Left = 88
    Top = 16
    object tfCadastroid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tfCadastronome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tfCadastrologin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
      Size = 30
    end
    object tfCadastrosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 30
    end
  end
  object dsCadastro: TDataSource
    DataSet = tfCadastro
    Left = 160
    Top = 13
  end
end
