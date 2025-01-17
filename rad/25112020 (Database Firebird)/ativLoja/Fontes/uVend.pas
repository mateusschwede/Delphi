unit uVend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, Data.Db;

type
  TfrmVend = class(TForm)
    pVend2: TPanel;
    pVend: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    btInserir: TBitBtn;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    btCancelar: TBitBtn;
    btConfirmar: TBitBtn;
    btSair: TBitBtn;
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure TrataBotoes;
  public
    { Public declarations }
  end;

var
  frmVend: TfrmVend;

implementation

{$R *.dfm}

uses uDM;

{ TfrmVend }

procedure TfrmVend.btCancelarClick(Sender: TObject);
begin
  dm.tbVendedores.Cancel;
  TrataBotoes;
end;

procedure TfrmVend.btConfirmarClick(Sender: TObject);
begin
  if dm.tbVendedores.FieldByName('dcVendedor').AsString = '' then
  begin
    MessageDlg('Informe o nome',mtWarning,[mbOk],0);
    Exit;
  end;
  dm.tbVendedores.Post;
  TrataBotoes;
end;

procedure TfrmVend.btEditarClick(Sender: TObject);
begin
  TrataBotoes;
  dm.tbVendedores.Edit;
end;

procedure TfrmVend.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?',mtConfirmation,[mbYes,mbNo],0) = mrYes then Dm.tbVendedores.Delete;
end;

procedure TfrmVend.btInserirClick(Sender: TObject);
var prox: Integer;
begin
  TrataBotoes;
  Dm.tbVendedores.Last;
  prox := Dm.tbVendedores.FieldByName('cdvendedor').asInteger+1;
  Dm.tbVendedores.Append;
  Dm.tbVendedores.fieldbyname('cdvendedor').asinteger := prox;
end;

procedure TfrmVend.btSairClick(Sender: TObject);
begin
  if dm.tbVendedores.State IN [dsInsert,dsEdit] then
  begin
    MessageDlg('Cancele ou confirme',mtWarning,[mbOk],0);
    Exit;
  end;
  Close;
end;

procedure TfrmVend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbVendedores.Close;
end;

procedure TfrmVend.FormShow(Sender: TObject);
begin
  dm.tbVendedores.Open;
end;

procedure TfrmVend.TrataBotoes;
begin
  btInserir.Enabled := not btInserir.Enabled;
  btEditar.Enabled := not btEditar.Enabled;
  btExcluir.Enabled := not btExcluir.Enabled;
  btConfirmar.Enabled := not btConfirmar.Enabled;
  btCancelar.Enabled := not btCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
