object dm: Tdm
  OldCreateOrder = False
  Height = 394
  Width = 648
  object ConexaoLoja: TFDConnection
    Params.Strings = (
      'Database=C:\Loja\DB\DBLOJA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 336
    Top = 24
  end
  object tbClientes: TFDTable
    IndexFieldNames = 'CDCLIENTE'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'CLIENTES'
    TableName = 'CLIENTES'
    Left = 96
    Top = 88
    object tbClientesCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClientesDCCLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCCLIENTE'
      Origin = 'DCCLIENTE'
      Size = 30
    end
    object tbClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbClientesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\) 0000-0000;0;_'
      Size = 10
    end
    object tbClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = tbClientes
    Left = 96
    Top = 160
  end
  object tbFornec: TFDTable
    IndexFieldNames = 'CDFORNECEDOR'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'FORNECEDORES'
    TableName = 'FORNECEDORES'
    Left = 184
    Top = 88
    object tbFornecCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFornecDCFORNECEDOR: TStringField
      FieldName = 'DCFORNECEDOR'
      Origin = 'DCFORNECEDOR'
      Size = 30
    end
    object tbFornecENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbFornecBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbFornecTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\) 0000-0000;1;_'
      Size = 10
    end
    object tbFornecCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 8
    end
  end
  object dsFornec: TDataSource
    AutoEdit = False
    DataSet = tbFornec
    Left = 184
    Top = 160
  end
  object tbItens: TFDTable
    OnCalcFields = tbItensCalcFields
    IndexFieldNames = 'NRVENDA;NRITEM'
    MasterSource = dsVendas
    MasterFields = 'NRVENDA'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'ITENS'
    TableName = 'ITENS'
    Left = 520
    Top = 232
    object tbItensNRVENDA: TIntegerField
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensNRITEM: TIntegerField
      FieldName = 'NRITEM'
      Origin = 'NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      Required = True
    end
    object tbItensQTVENDA: TFMTBCDField
      FieldName = 'QTVENDA'
      Origin = 'QTVENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object tbItensVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object tbItensDCPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DCPRODUTO'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'CDPRODUTO'
      LookupResultField = 'DCPRODUTO'
      KeyFields = 'CDPRODUTO'
      Size = 100
      Lookup = True
    end
    object tbItensTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = tbItens
    Left = 520
    Top = 304
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'CDPRODUTO'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 344
    Top = 88
    object tbProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutosDCPRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DCPRODUTO'
      Origin = 'DCPRODUTO'
      Size = 30
    end
    object tbProdutosVLPRODUTO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbProdutosQTESTOQUE: TFMTBCDField
      DisplayLabel = 'Qtd. Estoque'
      FieldName = 'QTESTOQUE'
      Origin = 'QTESTOQUE'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object tbProdutosQTMINIMA: TFMTBCDField
      DisplayLabel = 'Qtd. M'#237'nima'
      FieldName = 'QTMINIMA'
      Origin = 'QTMINIMA'
      DisplayFormat = ',0'
      Precision = 18
      Size = 2
    end
    object tbProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      Required = True
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = tbProdutos
    Left = 344
    Top = 160
  end
  object tbVendas: TFDTable
    IndexFieldNames = 'NRVENDA'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'VENDAS'
    TableName = 'VENDAS'
    Left = 448
    Top = 232
    object tbVendasNRVENDA: TIntegerField
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendasDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
      Required = True
    end
    object tbVendasCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      Required = True
    end
    object tbVendasCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      Required = True
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = tbVendas
    Left = 448
    Top = 304
  end
  object tbVendedores: TFDTable
    IndexFieldNames = 'CDVENDEDOR'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'VENDEDORES'
    TableName = 'VENDEDORES'
    Left = 264
    Top = 88
  end
  object dsVendedores: TDataSource
    AutoEdit = False
    DataSet = tbVendedores
    Left = 264
    Top = 160
  end
  object qrConsulta: TFDQuery
    Connection = ConexaoLoja
    Left = 560
    Top = 72
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 480
    Top = 72
  end
end
