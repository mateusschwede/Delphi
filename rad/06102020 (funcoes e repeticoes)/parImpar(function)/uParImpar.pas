unit uParImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    btnCalc: TButton;
    lblRes: TLabel;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
  //Fun��es globais aqui
  function parImpar(num: Integer): string;
  //Vars da fun��o aqui
  begin
    if (num mod 2 = 0) then
    begin
      Result := 'Par';
    end
    else
    begin
      Result := 'Impar';
    end;

  end;

procedure TForm1.btnCalcClick(Sender: TObject);
  //Fun��es locais aqui
  var v: Integer;
begin
  v := StrToInt(edtVal.Text);
  lblRes.Caption := parImpar(v);
end;

end.