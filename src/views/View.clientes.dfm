inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  ClientHeight = 574
  ClientWidth = 1050
  ExplicitWidth = 1050
  ExplicitHeight = 574
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 1050
    ExplicitWidth = 1050
    inherited lblTitulo: TLabel
      Width = 937
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
    inherited pnlFechar: TPanel
      Left = 978
      ExplicitLeft = 978
    end
  end
  inherited pnlRodape: TPanel
    Top = 539
    Width = 1050
    ExplicitTop = 539
    ExplicitWidth = 1050
    inherited btnNovo: TSpeedButton
      Left = 583
      ExplicitLeft = 583
    end
    inherited btnEditar: TSpeedButton
      Left = 677
      ExplicitLeft = 677
    end
    inherited btnCancelar: TSpeedButton
      Left = 771
      ExplicitLeft = 771
    end
    inherited btnSalvar: TSpeedButton
      Left = 865
      ExplicitLeft = 865
    end
    inherited btnExcluir: TSpeedButton
      Left = 959
      ExplicitLeft = 959
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1050
    Height = 504
    ExplicitWidth = 1050
    ExplicitHeight = 504
    inherited CardPanel_List: TCardPanel
      Width = 1048
      Height = 503
      ActiveCard = Card_Cadastro
      ExplicitWidth = 1048
      ExplicitHeight = 503
      inherited Card_Pesquisa: TCard
        Width = 1048
        Height = 503
        ExplicitWidth = 1048
        ExplicitHeight = 503
        inherited pnlTItuloPesquisa: TPanel
          Width = 1048
          ExplicitWidth = 1048
        end
        inherited DBG_dados: TDBGrid
          Width = 1038
          Height = 413
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
              Title.Caption = 'Nome do Cliente'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 197
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 270
              Visible = True
            end>
        end
      end
      inherited Card_Cadastro: TCard
        Width = 1048
        Height = 503
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 1048
        ExplicitHeight = 503
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
          Width = 124
          Height = 21
          Caption = 'Nome do Cliente'
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
          Width = 87
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = dbedtPES_OBSERVACAO
        end
        object pnlTituloCadastroCliente: TPanel
          Left = 0
          Top = 0
          Width = 1048
          Height = 80
          Align = alTop
          BevelOuter = bvNone
          Color = 12105912
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 34
            Top = 5
            Width = 190
            Height = 30
            Caption = 'Cadastro de Clientes'
            Color = 12105912
            Font.Charset = ANSI_CHARSET
            Font.Color = 7500402
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
        object dbedtPES_CODIGO: TDBEdit
          Left = 19
          Top = 150
          Width = 246
          Height = 29
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbedtPES_RAZAO: TDBEdit
          Left = 611
          Top = 150
          Width = 341
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 3
        end
        object dbedtPES_FANTASIA: TDBEdit
          Left = 611
          Top = 243
          Width = 341
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 6
        end
        object dbedtPES_TELEFONE: TDBEdit
          Left = 312
          Top = 243
          Width = 281
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
        object dbedtPES_CNPJCPF: TDBEdit
          Left = 312
          Top = 150
          Width = 281
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 2
        end
        object dbedtPES_IERG: TDBEdit
          Left = 19
          Top = 243
          Width = 246
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 4
        end
        object dbedtPES_OBSERVACAO: TDBEdit
          Left = 19
          Top = 339
          Width = 933
          Height = 29
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 737
    Top = 428
  end
end
