unit View.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.cadastro, Provider.constants,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProduto2: TDataSource;
    pnlDetalhe: TPanel;
    DBG_detalhe: TDBGrid;
    pnlTituloCadastroProdutos: TPanel;
    lblTituloProdutos: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin    // NOVO PRODUTO GRUPO / SUB
  inherited;
  ServiceCadastro.QRY_produto1PR1_GRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto1PR1_SUBGRUPO.AsInteger := 1;
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Get_Produto_detalhe(ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin    //show
  inherited;
  Get_Produtos;
end;

end.
