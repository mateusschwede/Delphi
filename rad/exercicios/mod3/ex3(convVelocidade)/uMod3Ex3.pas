unit uMod3Ex3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMod3Ex3 = class(TForm)
    edtVelocidade: TEdit;
    btnMs: TButton;
    btnKmh: TButton;
    lblRes: TLabel;
    procedure btnMsClick(Sender: TObject);
    procedure btnKmhClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mod3Ex3: TMod3Ex3;

implementation

{$R *.dfm}

procedure TMod3Ex3.btnKmhClick(Sender: TObject);
begin
  //ms -> kmh: (x*3.6)
  lblRes.Caption := FloatToStr(StrToFloat(edtVelocidade.Text)*3.6) + ' km/h';
end;

procedure TMod3Ex3.btnMsClick(Sender: TObject);
begin
  //kmh -> ms: (x/3.6)
  lblRes.Caption := FloatToStr(StrToFloat(edtVelocidade.Text)/3.6) + ' m/s';
end;

end.
