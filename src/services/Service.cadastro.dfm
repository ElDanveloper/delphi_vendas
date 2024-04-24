object ServiceCadastro: TServiceCadastro
  Height = 480
  Width = 640
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConnection1
    SQL.Strings = (
      'select * from pessoas')
    Left = 64
    Top = 56
    object QRY_pessoasPES_CODIGO: TFDAutoIncField
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRY_pessoasPES_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_pessoasPES_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_pessoasPES_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 45
    end
    object QRY_pessoasPES_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 45
    end
    object QRY_pessoasPES_IERG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 45
    end
    object QRY_pessoasPES_OBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 45
    end
    object QRY_pessoasPES_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
      Size = 45
    end
    object QRY_pessoasPESSOAScol: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOAScol'
      Origin = 'PESSOAScol'
    end
  end
  object QRY_enderecos: TFDQuery
    Connection = ServiceConexao.FDConnection1
    SQL.Strings = (
      'select * from endereco '
      '')
    Left = 64
    Top = 128
    object QRY_enderecosEND_CODIGO: TFDAutoIncField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRY_enderecosEND_PESSOA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_enderecosEND_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
      Size = 45
    end
    object QRY_enderecosEND_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 45
    end
    object QRY_enderecosEND_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 45
    end
    object QRY_enderecosEND_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 45
    end
    object QRY_enderecosEND_OBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 45
    end
    object QRY_enderecosEND_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
      Size = 45
    end
  end
  object QRY_produto1: TFDQuery
    Connection = ServiceConexao.FDConnection1
    SQL.Strings = (
      'select * from produto1')
    Left = 64
    Top = 216
    object QRY_produto1PR1_CODIGO: TFDAutoIncField
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRY_produto1PR1_NOMECOMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PR1_NOMEPOPULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_NOME POPULAR'
      Origin = '`PR1_NOME POPULAR`'
      Size = 100
    end
    object QRY_produto1PR1_CODIGOBARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 45
    end
    object QRY_produto1PR1_REFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 45
    end
    object QRY_produto1PR1_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produto1PR1_SUBGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produto1PR1_NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 45
    end
    object QRY_produto1produto1col: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto1col'
      Origin = 'produto1col'
      Size = 45
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConnection1
    SQL.Strings = (
      'select * from produto2')
    Left = 64
    Top = 288
    object QRY_produto2PR2_CODIGO: TFDAutoIncField
      FieldName = 'PR2_CODIGO'
      Origin = 'PR2_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QRY_produto2PR2_CODIGOPR1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_CODIGOPR1'
      Origin = 'PR2_CODIGOPR1'
    end
    object QRY_produto2PR2_FILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_FILIAL'
      Origin = 'PR2_FILIAL'
    end
    object QRY_produto2PR2_CUSTOINI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_CUSTOINI'
      Origin = 'PR2_CUSTOINI'
    end
    object QRY_produto2PR2_VENDAVISTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
    end
    object QRY_produto2PR2_VENDAPRAZO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
    end
    object QRY_produto2PR2_SITRIBUTARIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_SITRIBUTARIA'
      Origin = 'PR2_SITRIBUTARIA'
    end
    object QRY_produto2PRODUTO2col: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO2col'
      Origin = 'PRODUTO2col'
    end
    object QRY_produto2PR2_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_ESTOQUE'
      Origin = 'PR2_ESTOQUE'
    end
  end
end
