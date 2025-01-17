unit uRegistros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Pontos = Record
    X,Y: Integer;
    Cor: string;
    OnOff: Boolean;
  End;

  TRegistro = Class
    Nome: String;
    Telefone: String;
    Cidade: String;
  End;

var
  Form1: TForm1;
  PontosTela: Array [1..1024] of Pontos;
//Arq: File of Pontos;
  TXT: TextFile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  PontosTela[1].X := 300;
  PontosTela[1].Y := 679;
  PontosTela[1].Cor := 'Vermelho';
  PontosTela[1].OnOff := True;
  PontosTela[2] := PontosTela[1];
  ShowMessage(PontosTela[2].X.ToString);
end;

Procedure AddRecord(Lista:TStringList; strNome, strTelefone, strCidade:String);
Var RecNum: Integer;
Begin
  Lista.AddObject(strNome, TRegistro.Create);
  RecNum := Lista.Count-1;
  With TRegistro(Lista.Objects[RecNum]) do Begin
    Nome := strNome;
    Telefone := strTelefone;
    Cidade := strCidade;
  End;
End;

procedure TForm1.Button2Click(Sender: TObject);
const nmarq = '..\..\uRegistros.pas';
begin
  if FileExists(nmarq) then
  begin
    Memo1.Lines.LoadFromFile(nmArq);
    ListBox1.Items.LoadFromFile(nmArq);
  end
  else
    MessageDlg('Arq. n�o encontrado!', mtError, [mbOk], 0);
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  Lista: TStringList;
  x: Integer;
begin
  Lista := TStringList.Create;
  AddRecord(Lista,'Joao'  ,'1','Belo Horizonte');
  AddRecord(Lista,'Ana'   ,'2','S�o Paulo');
  AddRecord(Lista,'Iris'  ,'3','Rio de Janeiro');
  AddRecord(Lista,'Zilda' ,'4','Curitiba');
  AddRecord(Lista,'Bety'  ,'5','Salvador');
  AddRecord(Lista,'Silva' ,'6','Osasco');
  AddRecord(Lista,'Marcia','7','Niteroi');
  Lista.Sorted := True;

  For x := 0 to Lista.Count-1 do Begin
    Memo1.Lines.Add ( TRegistro(Lista.Objects[x]).Nome + ' ' +TRegistro(Lista.Objects[x]).Telefone+ ' ' +TRegistro(Lista.Objects[x]).Cidade );
  End;

  For x := 0 to Lista.Count-1 do Begin
    Lista.Objects[x].Destroy;
  End;
  Lista.Free;
end;


procedure TForm1.Button4Click(Sender: TObject);
var st: string;
begin
  st := ListBox1.Items[ListBox1.ItemIndex];
  Label1.Caption := st;
  Label2.Caption := Copy(st, Pos('OnOff', st), 5);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  button4.Click;
end;

end.
