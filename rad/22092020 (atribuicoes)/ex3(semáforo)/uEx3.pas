unit uEx3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblSinal: TLabel;
    btnVerde: TButton;
    btnAmarelo: TButton;
    btnVermelho: TButton;
    procedure btnVermelhoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnVermelhoClick(Sender: TObject);
begin
  lblSinal.Caption := 'Pare';
  lblSinal.Color := clRed;
end;

end.
