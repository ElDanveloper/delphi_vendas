unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Service.cadastro, Provider.constants,
  Provider.conversao, View.mensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    Image1: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_List: TCardPanel;
    Card_Pesquisa: TCard;
    Card_Cadastro: TCard;
    pnlTItuloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_ListCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
     sTela: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin// cancelar
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  dsDados.DataSet.Cancel;
  CardPanel_List.ActiveCard := Card_Pesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin//editar
  inherited;
  CardPanel_List.ActiveCard := Card_Cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
  begin//excluir
    inherited;
    if dsDados.DataSet.RecordCount > 0 then
        begin



          if Self.Tag > 0 then
            case Self.Tag of
              1:begin

               if TViewMensagens.Mensagem('Deseja mesmo Excluir esse Cliente', 'Exclusão', 'E', [mbSim, mbNao]) then
               begin
               dsDados.DataSet.Delete;
               TViewMensagens.Mensagem('Cliente Deletado com Sucesso.', 'Sucesso','I',[mbOk] );
               end;

              end;

              2:begin

                if TViewMensagens.Mensagem('Deseja mesmo Excluir esse Fornecedor', 'Exclusão', 'E', [mbSim, mbNao]) then
               begin
               dsDados.DataSet.Delete;
               TViewMensagens.Mensagem('Fornecedor Deletado com Sucesso.', 'Sucesso','I',[mbOk] );
               end;
              end;


              3:begin

               if TViewMensagens.Mensagem('Deseja mesmo Excluir esse Funcionário', 'Exclusão', 'E', [mbSim, mbNao]) then
               begin
               dsDados.DataSet.Delete;
               TViewMensagens.Mensagem('Funcionário Deletado com Sucesso.', 'Sucesso','I',[mbOk] );
               end;
              end;

          end

        end
         else begin

            if sTela = TelasToStr(tpProdutos) then
            begin
              TViewMensagens.Mensagem('Produto Deletado com Sucesso.', 'Deletar','E',[mbOk] );
//              ShowMessage('Produto Deletado com sucesso');

            end;

             if sTela = TelasToStr(tpCaixa) then
            begin
              TViewMensagens.Mensagem('Caixa Deletado com Sucesso.', 'Deletar','E',[mbOk] );
//              ShowMessage('Caixa Deletado com sucesso');

            end;

             if sTela = TelasToStr(tpGrupo) then
            begin
              TViewMensagens.Mensagem('Grupo Deletado com Sucesso.', 'Deletar','E',[mbOk] );
//              ShowMessage('Grupo Deletado com sucesso');

            end;

             if sTela = TelasToStr(tpSubGrupo) then
            begin
              TViewMensagens.Mensagem('SubGrupo Deletado com Sucesso.', 'Deletar','E',[mbOk] );
//              ShowMessage('SubGrupo Deletado com sucesso');

            end;

          end;


       CardPanel_List.ActiveCard := Card_Pesquisa;
    end;


procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin//novo
  inherited;
    CardPanel_List.ActiveCard := Card_Cadastro;
    dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin//salvar
    inherited;
    if  dsDados.DataSet.State in dsEditModes then
    begin

      if Self.Tag > 0 then
      begin

      ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := Self.Tag;  //?
      ServiceCadastro.QRY_pessoas.Post;

        case Self.Tag of

          1: begin
            TViewMensagens.Mensagem('Cliente Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//           ShowMessage('Cliente Salvo com sucesso');
          end;

          2: begin
            TViewMensagens.Mensagem('Fornecedor Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//            ShowMessage('Fornecedor Salvo com sucesso');
          end;

          3: begin
            TViewMensagens.Mensagem('Funcionário Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//            ShowMessage('Funcionário Salvo com sucesso');
          end;
         end;
       end
        else begin

        dsDados.DataSet.Post;

        if sTela = TelasToStr(tpProdutos) then
            begin
              TViewMensagens.Mensagem('Produto Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//              ShowMessage('Produto Salvo com sucesso');

            end;

             if sTela = TelasToStr(tpCaixa) then
            begin
              TViewMensagens.Mensagem('Caixa Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//              ShowMessage('Caixa Salvo com sucesso');

            end;

             if sTela = TelasToStr(tpGrupo) then
            begin
              TViewMensagens.Mensagem('Grupo Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//              ShowMessage('Grupo Salvo com sucesso');

            end;

             if sTela = TelasToStr(tpSubGrupo) then
            begin
              TViewMensagens.Mensagem('SubGrupo Salvo com Sucesso.', 'Salvar','I',[mbOk] );
//              ShowMessage('SubGrupo Salvo com sucesso');

            end;

      end;

      end;


    CardPanel_List.ActiveCard := Card_Pesquisa;

  end;

procedure TViewBaseListas.CardPanel_ListCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited; // change card
  if CardPanel_List.ActiveCard = Card_Cadastro then
    SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // show
  inherited;
  CardPanel_List.ActiveCard := card_pesquisa;
  Get_Pessoas(Self.Tag);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
    sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
