unit uAtivParImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lstPar: TListBox;
    btnPar: TButton;
    lblPos: TLabel;
    lstCid: TListBox;
    lblPop: TLabel;
    edtCid: TEdit;
    btnAddCid: TButton;
    btnCarregar: TButton;
    cmbCid: TComboBox;
    btnRemCid: TButton;
    procedure btnParClick(Sender: TObject);
    procedure lstParClick(Sender: TObject);
    procedure lstCidClick(Sender: TObject);
    procedure btnAddCidClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure btnRemCidClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddCidClick(Sender: TObject);
begin
  if (lstCid.Items.IndexOf(edtCid.Text)<0) then
  begin
    lstCid.Items.Add(edtCid.Text);
    cmbCid.Items.Add(edtCid.Text);
  end
  else
  begin
    MessageDlg('Cidade j� existe',mtError,[mbOk],0);
  end;
end;

procedure TForm1.btnCarregarClick(Sender: TObject);
begin
  lstCid.Clear;
  cmbCid.Clear;
  lstCid.Items.LoadFromFile('C:\Users\Mateus\Documents\delphi\rad\13062020 (repeticoes, memo e listbox)\ativTabuadaCidades (memo)\cidades.txt');
  cmbCid.Items.LoadFromFile('C:\Users\Mateus\Documents\delphi\rad\13062020 (repeticoes, memo e listbox)\ativTabuadaCidades (memo)\cidades.txt');
end;

procedure TForm1.btnParClick(Sender: TObject);
var p: Integer;
begin
  p := 0;
  while (p<=10) do
  begin
    lstPar.Items.Add(IntToStr(p));
    inc(p);
  end;
end;

procedure TForm1.btnRemCidClick(Sender: TObject);
begin
  if (lstCid.ItemIndex<>-1) then
  begin
    if (MessageDlg('Remover?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    begin
      lstCid.Items.Delete(lstCid.ItemIndex);
    end;
  end
  else
  begin
    MessageDlg('Selecione a cidade',mtError,[mbOK],0);
  end;

end;

procedure TForm1.lstCidClick(Sender: TObject);
begin
  case (lstCid.ItemIndex) of
    0: lblPop.Caption := 'Pop de Feliz';
    1: lblPop.Caption := 'Pop de Ca�';
    2: lblPop.Caption := 'Pop de Farroupilha';
  end;
end;

procedure TForm1.lstParClick(Sender: TObject);
begin
  lblPos.Caption := lstPar.ItemIndex.ToString;
end;

end.
