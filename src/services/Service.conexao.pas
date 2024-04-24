unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TFDAutoIncField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
begin

//  QRY_filial.Close;
//  QRY_filial.Params[0].AsInteger := 1;
//  QRY_filial.Open();

//  ICOD_FILIAL := QRY_filialFIL_CODIGO.AsInteger;
//  sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;

end;

end.
