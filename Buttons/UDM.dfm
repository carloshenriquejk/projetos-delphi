object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 323
  Width = 406
  object BD: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 56
  end
  object tfCadastro: TFDTable
    IndexFieldNames = 'id'
    Connection = BD
    TableName = 'cadastro.usuario'
    Left = 192
    Top = 112
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
    Left = 192
    Top = 176
  end
end
