unit uEx2;

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

procedure TForm1.btnCalcClick(Sender: TObject);
var m,i,tot: Integer;
begin
  tot := 1;
  m := StrToInt(edtVal.Text);
  lblRes.Caption := m.ToString + '!= ' + m.ToString;
  for i := m downto 1 do
  begin
    tot := tot*i;
    lblRes.Caption := lblRes.Caption + 'X' + i.ToString;
  end;
  lblRes.Caption := lblRes.Caption + '=' + tot.ToString;
end;

end.
