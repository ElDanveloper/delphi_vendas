inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_List: TCardPanel
      ActiveCard = Card_Cadastro
      inherited Card_Pesquisa: TCard
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Fornecedor'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 216
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Visible = True
            end>
        end
      end
      inherited Card_Cadastro: TCard
        object lblTituloPesquisa1: TLabel
          Left = 19
          Top = 123
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = dbedtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa2: TLabel
          Left = 611
          Top = 123
          Width = 158
          Height = 21
          Caption = 'Nome do Fornecedor'
          FocusControl = dbedtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa3: TLabel
          Left = 611
          Top = 216
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = dbedtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa4: TLabel
          Left = 312
          Top = 216
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = dbedtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa5: TLabel
          Left = 312
          Top = 123
          Width = 74
          Height = 21
          Caption = 'Cnpj / Cpf'
          FocusControl = dbedtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa6: TLabel
          Left = 19
          Top = 210
          Width = 34
          Height = 21
          Caption = 'IERG'
          FocusControl = dbedtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa7: TLabel
          Left = 19
          Top = 312
          Width = 62
          Height = 15
          Caption = 'Observa'#231#227'o'
          FocusControl = dbedtPES_OBSERVACAO
        end
        object lblTituloCadastro: TLabel
          Left = 37
          Top = 45
          Width = 241
          Height = 30
          Caption = 'Cadastro de Fornecedores'
          Color = 12105912
          Font.Charset = ANSI_CHARSET
          Font.Color = 7500402
          Font.Height = -21
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object dbedtPES_CODIGO: TDBEdit
          Left = 19
          Top = 150
          Width = 246
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbedtPES_RAZAO: TDBEdit
          Left = 611
          Top = 150
          Width = 341
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 1
        end
        object dbedtPES_FANTASIA: TDBEdit
          Left = 611
          Top = 243
          Width = 341
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 2
        end
        object dbedtPES_TELEFONE: TDBEdit
          Left = 312
          Top = 243
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 3
        end
        object dbedtPES_CNPJCPF: TDBEdit
          Left = 312
          Top = 150
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 4
        end
        object dbedtPES_IERG: TDBEdit
          Left = 19
          Top = 243
          Width = 246
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 5
        end
        object dbedtPES_OBSERVACAO: TDBEdit
          Left = 19
          Top = 339
          Width = 933
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 865
    Top = 100
  end
end
