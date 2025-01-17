unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnExec: TButton;
    lblTotCob: TLabel;
    lblTotCoelho: TLabel;
    lblTotRato: TLabel;
    lblN: TLabel;
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
var cobCoelho,cobRato,opt,n,coelho,rato,totCob: Integer;
begin
  cobCoelho:= 0;
  cobRato := 0;
  opt := 0;
  n := 0;
  coelho := 0;
  rato := 0;
  repeat
    opt := StrToInt(InputBox('Tipo cobaia','(1)Coelho e (2)Rato','Tipo cobaia'));
    if (opt=1) then
    begin
      inc(coelho);
      cobCoelho := cobCoelho + StrToInt(InputBox('Coelhos','Informe o n� de coelhos','N� coelhos'));
    end
    else
    begin
      inc(rato);
      cobRato := cobRato + StrToInt(InputBox('Ratos','Informe o n� de ratos','N� ratos'));
    end;
    inc(n);
  until (n>2);
  lblN.Caption := lblN.Caption + IntToStr(n);
  totCob := cobCoelho+cobRato;
  lblTotCob.Caption := lblTotCob.Caption + IntToStr(totCob);
  lblTotCoelho.Caption := lblTotCoelho.Caption + IntToStr(cobCoelho) + '(' + FloatToStr((cobCoelho*100)/totCob)+ '%)';
  lblTotRato.Caption := lblTotRato.Caption + IntToStr(cobRato) + '(' + FloatToStr((cobRato*100)/totCob) + '%)';
end;

end.
