object dm: Tdm
  OldCreateOrder = False
  Height = 164
  Width = 368
  object ConexaoLoja: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Mateus\Documents\delphi\rad\25112020 (Database' +
        ' Firebird)\loja\DB\DBLOJA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 8
  end
  object tbClientes: TFDTable
    IndexFieldNames = 'CDCLIENTE'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'CLIENTES'
    TableName = 'CLIENTES'
    Left = 16
    Top = 56
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
    Left = 16
    Top = 104
  end
  object tbFornec: TFDTable
    IndexFieldNames = 'CDFORNECEDOR'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'FORNECEDORES'
    TableName = 'FORNECEDORES'
    Left = 72
    Top = 56
    object tbFornecCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFornecDCFORNECEDOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCFORNECEDOR'
      Origin = 'DCFORNECEDOR'
      Size = 30
    end
    object tbFornecENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbFornecBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbFornecCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbFornecTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 10
    end
    object tbFornecCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
  end
  object dsFornec: TDataSource
    AutoEdit = False
    DataSet = tbFornec
    Left = 72
    Top = 104
  end
  object tbItens: TFDTable
    IndexFieldNames = 'NRVENDA;NRITEM'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'ITENS'
    TableName = 'ITENS'
    Left = 328
    Top = 56
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = tbItens
    Left = 328
    Top = 104
  end
  object tbProdutos: TFDTable
    IndexFieldNames = 'CDPRODUTO'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 224
    Top = 56
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = tbProdutos
    Left = 224
    Top = 104
  end
  object tbVendas: TFDTable
    IndexFieldNames = 'NRVENDA'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'VENDAS'
    TableName = 'VENDAS'
    Left = 280
    Top = 56
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = tbVendas
    Left = 280
    Top = 104
  end
  object tbVendedores: TFDTable
    IndexFieldNames = 'CDVENDEDOR'
    Connection = ConexaoLoja
    UpdateOptions.UpdateTableName = 'VENDEDORES'
    TableName = 'VENDEDORES'
    Left = 136
    Top = 56
    object tbVendedoresCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendedoresDCVENDEDOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCVENDEDOR'
      Origin = 'DCVENDEDOR'
      Size = 30
    end
  end
  object dsVendedores: TDataSource
    AutoEdit = False
    DataSet = tbVendedores
    Left = 136
    Top = 104
  end
end
