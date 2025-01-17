program Loja;

uses
  Vcl.Forms,
  uMenu in 'Fontes\uMenu.pas' {Form1},
  uDM in 'Fontes\uDM.pas' {dm: TDataModule},
  uClientes in 'Fontes\uClientes.pas' {frmClientes},
  uFornec in 'Fontes\uFornec.pas' {frmFornec},
  uVend in 'Fontes\uVend.pas' {frmVend},
  uProd in 'Fontes\uProd.pas' {frmProd},
  uConsulta in 'Fontes\uConsulta.pas' {frmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmFornec, frmFornec);
  Application.CreateForm(TfrmVend, frmVend);
  Application.CreateForm(TfrmProd, frmProd);
  Application.CreateForm(TfrmConsulta, frmConsulta);
  Application.Run;
end.
