unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsulta = class(TForm)
    rgpSelecione: TRadioGroup;
    rgpOrdem: TRadioGroup;
    edtConsultar: TEdit;
    btnConsultar: TBitBtn;
    cmbTabela: TComboBox;
    DBGrid1: TDBGrid;
    procedure btnConsultarClick(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var frmConsulta: TfrmConsulta;

implementation
{$R *.dfm}

uses uDM;

procedure TfrmConsulta.btnConsultarClick(Sender: TObject);
var nmTab,vSQL: string;

function RetCampoCodigo(aTab:string): string;
begin
  if aTab = 'CLIENTES' then Result := 'CDCLIENTE'
  else if aTab = 'FORNECEDORES' then Result := 'CDFORNECEDOR'
  else if aTab = 'PRODUTOS' then Result := 'CDPRODUTO'
end;

function RetCampoDesc(aTab:string) : string;
begin
  if aTab = 'CLIENTES' then Result := 'DCCLIENTE'
  else if aTab = 'FORNECEDORES' then Result := 'DCFORNECEDOR'
  else if aTab = 'PRODUTOS' then Result := 'DCPRODUTO'
end;

begin
  nmTab := '';

  if cmbTabela.ItemIndex = -1 then
  begin
    MessageDlg('Selecione uma tabela',mtError,[mbOk],0);
    Exit;
  end;

  if edtConsultar.Text = '' then
  begin
    MessageDlg('Digite algum valor',mtWarning,[mbOk],0);
    Exit;
  end;

  case cmbTabela.ItemIndex of
    0: nmTab := 'CLIENTES';
    1: nmTab := 'FORNECEDORES';
    2: nmTab := 'PRODUTOS';
  end;

  vSQL := 'SELECT * FROM ' + nmTab;
  case rgpSelecione.ItemIndex of
    0: vSQL := vSQL + #13 + ' WHERE ' + RetCampoCodigo(nmTab) + ' = :PCD';
    1: vSQL := vSQL + #13 + ' WHERE ' + RetCampoDesc(nmTab)   + ' CONTAINING :PCD';
  end;
  case rgpOrdem.ItemIndex of
    1: vSQL := vSQL + #13 + ' ORDER BY ' + RetCampoCodigo(nmTab);
    2: vSQL := vSQL + #13 + ' ORDER BY ' + RetCampoCodigo(nmTab) + ' DESC ';
  end;

  dm.qrConsulta.Close;
  dm.qrConsulta.SQL.Text := vSQL;
  dm.qrConsulta.ParamByName('PCD').AsString := edtConsultar.Text;
  dm.qrConsulta.Open;

  if dm.qrConsulta.IsEmpty then MessageDlg('Nada encontrado',mtInformation,[mbOk],0);
end;

end.
