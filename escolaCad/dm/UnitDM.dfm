object dm: Tdm
  OldCreateOrder = False
  Height = 319
  Width = 396
  object BD: TFDConnection
    Params.Strings = (
      'Database=escolamodelo'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object tbResponsaveis: TFDTable
    IndexFieldNames = 'id'
    Connection = BD
    UpdateOptions.UpdateTableName = 'escolamodelo.responsaveis'
    TableName = 'escolamodelo.responsaveis'
    Left = 96
    Top = 72
    object tbResponsaveisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbResponsaveisnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tbResponsaveisrg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
    end
    object tbResponsaveiscpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbResponsaveiscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##) ####-####;1;_'
      Size = 16
    end
    object tbResponsaveisoperadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operadora'
      Origin = 'operadora'
    end
    object tbResponsaveisparentesco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentesco'
      Origin = 'parentesco'
    end
  end
  object dsResponsaveis: TDataSource
    DataSet = tbResponsaveis
    Left = 96
    Top = 136
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\libmysql.dll'
    Left = 200
    Top = 56
  end
end
