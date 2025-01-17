unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    ConexaoLoja: TFDConnection;
    tbClientes: TFDTable;
    dsClientes: TDataSource;
    tbFornec: TFDTable;
    dsFornec: TDataSource;
    tbItens: TFDTable;
    dsItens: TDataSource;
    tbProdutos: TFDTable;
    dsProdutos: TDataSource;
    tbVendas: TFDTable;
    dsVendas: TDataSource;
    tbVendedores: TFDTable;
    dsVendedores: TDataSource;
    tbClientesCDCLIENTE: TIntegerField;
    tbClientesDCCLIENTE: TStringField;
    tbClientesENDERECO: TStringField;
    tbClientesBAIRRO: TStringField;
    tbClientesCIDADE: TStringField;
    tbClientesTELEFONE: TStringField;
    tbClientesCEP: TStringField;
    tbFornecCDFORNECEDOR: TIntegerField;
    tbFornecDCFORNECEDOR: TStringField;
    tbFornecENDERECO: TStringField;
    tbFornecBAIRRO: TStringField;
    tbFornecCIDADE: TStringField;
    tbFornecTELEFONE: TStringField;
    tbFornecCEP: TStringField;
    tbProdutosCDPRODUTO: TIntegerField;
    tbProdutosDCPRODUTO: TStringField;
    tbProdutosVLPRODUTO: TFMTBCDField;
    tbProdutosQTESTOQUE: TFMTBCDField;
    tbProdutosQTMINIMA: TFMTBCDField;
    tbProdutosCDFORNECEDOR: TIntegerField;
    qrConsulta: TFDQuery;
    dsConsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
