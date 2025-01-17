unit uProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Mask, Data.Db;

type
  TfrmProd = class(TForm)
    pProd2: TPanel;
    pProd: TPanel;
    btInserir: TBitBtn;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    btCancelar: TBitBtn;
    btConfirmar: TBitBtn;
    btSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TrataBotoes;
  public
    { Public declarations }
  end;

var
  frmProd: TfrmProd;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmProd.btCancelarClick(Sender: TObject);
begin
  dm.tbProdutos.Cancel;
  TrataBotoes;
end;

procedure TfrmProd.btConfirmarClick(Sender: TObject);
begin
  if dm.tbProdutos.FieldByName('dcProduto').AsString = '' then
  begin
    MessageDlg('Informe o nome',mtWarning,[mbOk],0);
    Exit;
  end;
  dm.tbProdutos.Post;
  TrataBotoes;
end;

procedure TfrmProd.btEditarClick(Sender: TObject);
begin
  TrataBotoes;
  dm.tbProdutos.Edit;
end;

procedure TfrmProd.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?',mtConfirmation,[mbYes,mbNo],0) = mrYes then Dm.tbProdutos.Delete;
end;

procedure TfrmProd.btInserirClick(Sender: TObject);
var prox: Integer;
begin
  TrataBotoes;
  Dm.tbProdutos.Last;
  prox := Dm.tbProdutos.FieldByName('cdproduto').asInteger+1;
  Dm.tbProdutos.Append;
  Dm.tbProdutos.fieldbyname('cdproduto').asinteger := prox;
end;

procedure TfrmProd.btSairClick(Sender: TObject);
begin
  if dm.tbProdutos.State IN [dsInsert,dsEdit] then
  begin
    MessageDlg('Cancele ou confirme',mtWarning,[mbOk],0);
    Exit;
  end;
  Close;
end;

procedure TfrmProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbProdutos.Close;
  dm.tbFornec.Close;
end;

procedure TfrmProd.FormShow(Sender: TObject);
begin
  dm.tbProdutos.Open;
  dm.tbFornec.Open;
end;

procedure TfrmProd.TrataBotoes;
begin
  btInserir.Enabled := not btInserir.Enabled;
  btEditar.Enabled := not btEditar.Enabled;
  btExcluir.Enabled := not btExcluir.Enabled;
  btConfirmar.Enabled := not btConfirmar.Enabled;
  btCancelar.Enabled := not btCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
