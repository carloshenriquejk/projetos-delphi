object Udm: TUdm
  OldCreateOrder = False
  Height = 296
  Width = 460
  object Base: TFDConnection
    Left = 112
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = #8234'C:\libmysql.dll'
    Left = 264
    Top = 72
  end
  object FDCidade: TFDQuery
    Connection = Base
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.UpdateTableName = 'CIDADE'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select * from cidade')
    Left = 112
    Top = 160
  end
end
