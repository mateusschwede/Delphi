unit uAtiv1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Label1Click(Sender: TObject);
var a,i: Integer;
begin
  {Modelo Letra A}
  a := 9;
  repeat
  begin
    a := a + 1;
  end;
  until (a <= 10);  {A em while do}  while (a<10) do  begin    inc(a);  end;  {A em for to do}  for i := a to 10 do  begin    inc(a);
  end;end;

procedure TForm1.Label2Click(Sender: TObject);
var gh,a,i: Integer;
begin
  {Modelo Letra B => Loop Infinito!}
  gh := 5; a := 8;
  repeat
  begin
    a := a + gh;
    showmessage(a.ToString);
  end;
  until (gh<>5);

  {B em while do}
  while (gh<>5) do
  begin
    a := a + gh;
    showmessage(a.ToString);
  end;

  {B em for to do}
  for i := a to -1 do
  begin
    a := a + gh;
    showmessage(a.ToString);
  end;
end;

procedure TForm1.Label4Click(Sender: TObject);
var t,i: Integer;
begin
  {Modelo Letra C}
  t := 0;
  repeat
  begin
    t := t + 1;
    showmessage(IntTostr(t*2));
  end;
  until (t<8);

  {C em while do}
  t := 0;
  while (t<8) do
  begin
    inc(t);
    showmessage(IntTostr(t*2));
    Break;
  end;

  {C em for to do}
  t := 0;
  for i := t to 8 do
  begin
    inc(t);
    showmessage(IntTostr(t*2));
    Break;
  end;
end;

end.
