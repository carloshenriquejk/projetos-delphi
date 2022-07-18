object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 147
  Top = 109
  Height = 378
  Width = 1066
  object BDCurso: TSQLConnection
    ConnectionName = 'Curso'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:C:\Users\Administrador\Documents\projects\Pro' +
        'jeto Principal\Curso\BANCO_CURSO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 8
    Top = 40
  end
  object dtsUsuarios: TSQLDataSet
    GetMetadata = False
    CommandText = 'USUARIOS'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 80
    Top = 40
    object dtsUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object dtsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 10
    end
    object dtsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 6
    end
    object dtsUsuariosMASTER: TStringField
      FieldName = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dtsUsuarios
    Constraints = False
    Left = 80
    Top = 112
  end
  object csdUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 80
    Top = 176
    object csdUsuariosID_USUARIO: TIntegerField
      DisplayWidth = 16
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object csdUsuariosLOGIN: TStringField
      DisplayWidth = 13
      FieldName = 'LOGIN'
      Required = True
      Size = 10
    end
    object csdUsuariosSENHA: TStringField
      DisplayWidth = 10
      FieldName = 'SENHA'
      Required = True
      Size = 6
    end
    object csdUsuariosMASTER: TStringField
      DisplayWidth = 11
      FieldName = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QryGenIdUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_USUARIO,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 80
    Top = 248
    object QryGenIdUsuarioGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsProdutos: TSQLDataSet
    GetMetadata = False
    CommandText = 'PRODUTOS'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BDCurso
    Left = 200
    Top = 40
    object dtsProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object dtsProdutosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object dtsProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object dtsProdutosID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object dtsProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object dtsProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = dtsProdutos
    Constraints = False
    Left = 200
    Top = 112
  end
  object csdProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 200
    Top = 176
    object csdProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object csdProdutosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object csdProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object csdProdutosID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object csdProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object csdProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QryGenIdProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_PRODUTO,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 200
    Top = 248
    object QryGenIdProdutoGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsPessoas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT * FROM PESSOAS'#13#10#13#10'WHERE'#13#10#13#10'(TIPO=:TIPO OR '#39'T'#39'=:TIPO) AND(' +
      'NOME LIKE :NOME)'#13#10#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 304
    Top = 48
    object dtsPessoasID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object dtsPessoasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object dtsPessoasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 14
    end
    object dtsPessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 11
    end
    object dtsPessoasTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsPessoasID_PAISES: TIntegerField
      FieldName = 'ID_PAISES'
      Required = True
    end
  end
  object dspPessoas: TDataSetProvider
    DataSet = dtsPessoas
    Constraints = False
    Left = 304
    Top = 112
  end
  object csdPessoas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspPessoas'
    Left = 304
    Top = 176
    object csdPessoasID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object csdPessoasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object csdPessoasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 14
    end
    object csdPessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      EditMask = '(99) 9999-9999;0;_'
      Size = 11
    end
    object csdPessoasTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object csdPessoasID_PAISES: TIntegerField
      FieldName = 'ID_PAISES'
      Required = True
    end
  end
  object QryGenIdPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_PESSOA,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 304
    Top = 248
    object QryGenIdPessoaGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsFpgto: TSQLDataSet
    GetMetadata = False
    CommandText = 'FORMAS_PGTO'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 392
    Top = 48
    object dtsFpgtoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object dtsFpgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 15
    end
  end
  object dstFpgpo: TDataSetProvider
    DataSet = dtsFpgto
    Constraints = False
    Left = 392
    Top = 112
  end
  object cdsFpgpo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dstFpgpo'
    Left = 392
    Top = 176
    object cdsFpgpoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object cdsFpgpoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 15
    end
  end
  object QryGenIdFpgto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_PGTO,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 392
    Top = 248
    object QryGenIdFpgtoGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsTransporte: TSQLDataSet
    GetMetadata = False
    CommandText = 'MEIO_TRANSPORTE'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 504
    Top = 48
    object dtsTransporteID_TRASPORTE: TIntegerField
      FieldName = 'ID_TRASPORTE'
      Required = True
    end
    object dtsTransporteMEIO: TStringField
      FieldName = 'MEIO'
      Required = True
      Size = 40
    end
  end
  object dstTransporte: TDataSetProvider
    DataSet = dtsTransporte
    Constraints = False
    Left = 504
    Top = 112
  end
  object cdsTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dstTransporte'
    Left = 504
    Top = 176
    object cdsTransporteID_TRASPORTE: TIntegerField
      FieldName = 'ID_TRASPORTE'
      Required = True
    end
    object cdsTransporteMEIO: TStringField
      FieldName = 'MEIO'
      Required = True
      Size = 40
    end
  end
  object QryGenIdTransporte: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_TRANSPORTE,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 504
    Top = 248
    object QryGenIdTransporteGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsPais: TSQLDataSet
    GetMetadata = False
    CommandText = 'PAISES'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 592
    Top = 56
    object dtsPaisID_PAISES: TIntegerField
      FieldName = 'ID_PAISES'
      Required = True
    end
    object dtsPaisNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
  end
  object dstPais: TDataSetProvider
    DataSet = dtsPais
    Constraints = False
    Left = 592
    Top = 120
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dstPais'
    Left = 592
    Top = 184
    object cdsPaisID_PAISES: TIntegerField
      FieldName = 'ID_PAISES'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
  end
  object QryGenIdPais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_PAISES,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 592
    Top = 256
    object QryGenIdPaisGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsConsMovimento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT * FROM MOVIMENTO'#13#10#13#10'WHERE '#13#10#13#10'DATA BETWEEN :D1 AND :D2 AN' +
      'D TIPO =:TIPO'#13#10#13#10#13#10'ORDER BY DATA,ID_MOVIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 696
    Top = 48
    object dtsConsMovimentoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object dtsConsMovimentoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object dtsConsMovimentoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object dtsConsMovimentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object dtsConsMovimentoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object dtsConsMovimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
  end
  object dstConsMovimento: TDataSetProvider
    DataSet = dtsConsMovimento
    Constraints = False
    Left = 696
    Top = 112
  end
  object cdsConsMovimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    ProviderName = 'dstConsMovimento'
    Left = 696
    Top = 176
    object cdsConsMovimentoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object cdsConsMovimentoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsConsMovimentoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsConsMovimentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsConsMovimentoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object cdsConsMovimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object cdsConsMovimentoFormaPagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'FormaPagamento'
      Size = 15
      Calculated = True
    end
    object cdsConsMovimentoMeiosTransporte: TStringField
      FieldKind = fkCalculated
      FieldName = 'MeiosTransporte'
      Size = 40
      Calculated = True
    end
  end
  object QryGenIdCMovimento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_MOVIMENTO,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 696
    Top = 248
    object QryGenIdCMovimentoGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dtsMovimento: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM MOVIMENTO'#13#10#13#10'WHERE  ID_MOVIMENTO =:ID_MOVIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 800
    Top = 49
    object dtsMovimentoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object dtsMovimentoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object dtsMovimentoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object dtsMovimentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object dtsMovimentoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object dtsMovimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
  end
  object dstMovimento: TDataSetProvider
    DataSet = dtsMovimento
    Constraints = False
    Left = 800
    Top = 113
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dstMovimento'
    Left = 800
    Top = 177
    object cdsMovimentoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object cdsMovimentoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsMovimentoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsMovimentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsMovimentoID_PGTO: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object cdsMovimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
  end
  object dtsItnes: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM ITENS_MOVIMENTO'#13#10#13#10'WHERE ID_ITENS =:ID_ITENS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 872
    Top = 49
    object dtsItnesID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
      Required = True
    end
    object dtsItnesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object dtsItnesID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object dtsItnesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object dtsItnesTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object dtsItnesQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
  end
  object dstItens: TDataSetProvider
    DataSet = dtsItnes
    Constraints = False
    Left = 872
    Top = 113
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ITENS'
        ParamType = ptInput
      end>
    ProviderName = 'dstItens'
    Left = 872
    Top = 169
    object cdsItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object cdsItensID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
      Required = True
    end
    object cdsItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object cdsItensVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
  end
  object QryGenIdItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GEN_ID(ID_ITENS,1)FROM RDB$DATABASE')
    SQLConnection = BDCurso
    Left = 800
    Top = 256
    object QryGenIdItemGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object CItens: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'Soma'
        Expression = 'Sum(TOTAL)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'TOTAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'ID_ITENS'
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_MOVIMENTO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 880
    Top = 240
    Data = {
      D60000009619E0BD020000001800000007000000000003000000D60005544F54
      414C0A0012000000020008444543494D414C5302000200020005574944544802
      0002000F000A5155414E54494441444504000100000000000849445F4954454E
      5304000100000000000A49445F50524F4455544F04000100000000000C49445F
      4D4F56494D454E544F04000100000000000556414C4F520A0012000000020008
      444543494D414C53020002000200055749445448020002000F00094445534352
      4943414F0100490000000100055749445448020002003C000000}
    object CItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object CItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object CItensID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
    end
    object CItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object CItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object CItensVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object CItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CItensSoma: TAggregateField
      FieldName = 'Soma'
      Active = True
      currency = True
      DisplayFormat = '###,##0.00'
      Expression = 'Sum(TOTAL)'
    end
  end
  object dtsEstoque: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ID_PRODUTO, QUANTIDADE FROM PRODUTOS'#13#10#13#10'WHERE  ID_PRODUTO' +
      ' =:ID_PRODUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = BDCurso
    Left = 952
    Top = 49
    object IntegerField1: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = dtsEstoque
    Constraints = False
    Left = 952
    Top = 113
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dstMovimento'
    Left = 952
    Top = 177
    object IntegerField4: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object DateField2: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_PGTO'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
  end
end
