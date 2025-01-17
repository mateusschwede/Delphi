unit uMod3Ex1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal1: TEdit;
    edtVal2: TEdit;
    lblRes: TLabel;
    btnSoma: TButton;
    btnResto: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    procedure clickBtnSoma(Sender: TObject);
    procedure clickBtnResto(Sender: TObject);
    procedure clickBtnMult(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
  private
    { Private declarations }
//    cntrl+shift+c GERA FUN��O
    //FUN��O somente na unit
    function Valida(op1,op2 : TEdit): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDivClick(Sender: TObject);
begin
  lblRes.Caption := FloatToStr((StrToFloat(edtVal1.Text)) / (StrToFloat(edtVal2.Text)));
end;

procedure TForm1.clickBtnMult(Sender: TObject);
begin
  lblRes.Caption := FloatToStr((StrToFloat(edtVal1.Text)) * (StrToFloat(edtVal2.Text)));
end;

procedure TForm1.clickBtnResto(Sender: TObject);
begin
  lblRes.Caption := FloatToStr((StrToFloat(edtVal1.Text)) - (StrToFloat(edtVal2.Text)));
end;

procedure TForm1.clickBtnSoma(Sender: TObject);
var erro : Extended;
begin
  if not Valida(edtVal1) then
  Exit;
    lblRes.Caption := FloatToStr((StrToFloat(edtVal1.Text)) + (StrToFloat(edtVal2.Text)));
end;

function TForm1.Valida(op1: String): Boolean;
var erro : Extended;
begin
  Result := True;
  if (op1.Text = '') then
  begin
    MessageDlg('Erro',mtError,[mbOK],0);
    Result := False;
    Exit;
  end;

  if not(TryStrToFloat(op1.Text, erro)) then
  begin
    MessageDlg('Inv�lio',mtError,[mbOK],0);
    Result := False;
    Exit;
  end;
end;

end.
