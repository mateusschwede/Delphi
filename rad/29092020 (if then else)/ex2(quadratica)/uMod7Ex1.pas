unit uMod7Ex1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
    btnRes: TButton;
    lblX2: TLabel;
    lblX1: TLabel;
    procedure btnResClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnResClick(Sender: TObject);
var delta,a,b,c,x1,x2: Real;
begin
  a := StrToFloat(edtA.Text);
  b := StrToFloat(edtB.Text);
  c := StrToFloat(edtC.Text);
  delta := SQR(b) - 4*a*c;
  if (delta=0) then
  begin
    x1 := -b / (2*a);
    lblX1.Caption := FloatToStr(x1);
  end;
  if (delta>0) then
  begin
    x1 := (-b + Sqrt(delta)) / 2*a;
    x2 := (-b - Sqrt(delta)) / 2*a;
    lblX1.Caption := FloatToStr(x1);
    lblX2.Caption := FloatToStr(x2);
    Exit;
  end
  else
  begin
    MessageDlg('Delta negativo',mtError,[mbOK],0);
    Exit;
  end;
end;

end.
