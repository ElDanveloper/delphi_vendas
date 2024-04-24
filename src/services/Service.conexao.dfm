object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 328
  Width = 432
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=database'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 264
    Top = 48
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\odann\OneDrive\Desktop\JAVA\LIBMYSQL.DLL'
    Left = 264
    Top = 184
  end
  object QRY_filial: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from filial')
    Left = 80
    Top = 168
    object QRY_filialFIL_CODIGO: TFDAutoIncField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_filialFIL_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_filialFIL_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 45
    end
    object QRY_filialFIL_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 45
    end
  end
end
