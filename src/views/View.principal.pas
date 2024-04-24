unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Provider.constants, View.clientes, View.fornecedores, Provider.conversao,
  View.produtos;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackground: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTitulo: TLabel;
    lblDescricao: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImgUsuario: TPanel;
    imgUsuario: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLineRodape: TPanel;
    pnlLicenciado: TPanel;
    pnlConteudoLicenca: TPanel;
    lblLicenciado: TLabel;
    lblEmpresaLicenca: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    bntFornecedores: TSpeedButton;
    bntProdutos: TSpeedButton;
    bntConfigura��es: TSpeedButton;
    btnSair: TSpeedButton;
    Image1: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure bntFornecedoresClick(Sender: TObject);
    procedure bntProdutosClick(Sender: TObject);
    procedure bntConfigura��esClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloMouseEnter(Sender: TObject);
    procedure lblTituloMouseLeave(Sender: TObject);
  private
    procedure GET_LineMenu(Sender: TObject);    //Anima��o
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.bntConfigura��esClick(Sender: TObject);
begin//Config
 GET_LineMenu(Sender);
end;

procedure TViewPrincipal.bntFornecedoresClick(Sender: TObject);
begin//Fornecedores
 GET_LineMenu(Sender);

 ViewFornecedores := TViewFornecedores.Create(Self);
 try
 ViewFornecedores.Tag := PessoasToInt(tpFornecedores);
 ViewFornecedores.ShowModal;

 finally
   FreeAndNil(ViewClientes);
 end;

end;

procedure TViewPrincipal.bntProdutosClick(Sender: TObject);
begin//Produtos
 GET_LineMenu(Sender);

  ViewProdutos := TViewProdutos.Create(Self);
 try
 ViewProdutos.sTela := TelasToStr(tpProdutos);
 ViewProdutos.ShowModal;

 finally
   FreeAndNil(ViewProdutos);
 end;

end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin//Caixa
 GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin //Clients
 GET_LineMenu(Sender);
 ViewClientes := TViewClientes.Create(Self);
 try
 ViewClientes.Tag := PessoasToInt(tpCliente);
 ViewClientes.ShowModal;

 finally
   FreeAndNil(ViewClientes);
 end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
 GET_LineMenu(btnClientes);
// lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMenu(Sender: TObject);
begin     //Anima��o dos buttons.
    ShapeMenu.Left   := 0;
    ShapeMenu.Top    := 0;
    ShapeMenu.Height := TSpeedButton(Sender).Height;
    ShapeMenu.Top    := TSpeedButton(Sender).Top;
    pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.lblTituloMouseEnter(Sender: TObject);
begin
   lblTitulo.Font.Color :=  $000FBBD9;
end;

procedure TViewPrincipal.lblTituloMouseLeave(Sender: TObject);
begin
lblTitulo.Font.Color :=  clWhite;
end;

end.