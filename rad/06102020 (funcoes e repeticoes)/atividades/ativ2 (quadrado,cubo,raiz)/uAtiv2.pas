unit uAtiv2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblRes: TLabel;
    btnExec: TButton;
    procedure btnExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecClick(Sender: TObject);
var x: Real;
begin
  x := 1;
  lblRes.Caption := '';
  while (x<=20) do
  begin
    lblRes.Caption := lblRes.Caption + ' N�:' + FloatToStr(x) + ' SQR:' + FloatToStr(sqr(x)) + ' Cubo:' + FloatToStr(sqr(x)*x) + ' SQRT:' + FloatToStr(sqrt(x)) + ' | ';
    x := x + 1;
  end;

end;

end.
