unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    lblSaldo: TLabel;
    Button1: TButton;
    GridPanelLayout1: TGridPanelLayout;
    lblN1: TLabel;
    lblN2: TLabel;
    lblN3: TLabel;
    GridPanelLayout2: TGridPanelLayout;
    Label6: TLabel;
    Edit1: TEdit;
    GridPanelLayout3: TGridPanelLayout;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Form1: TForm1;
n1, n2, n3, saldo, aposta: integer;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
saldo:= 1000;
lblSaldo.Text:= IntToStr(saldo);
lblN1.Text:= IntToStr(0);
lblN2.Text:= IntToStr(0);
lblN3.Text:= IntToStr(0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:= true;
timer2.Enabled:= true;
timer3.Enabled:= true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
timer1.Enabled:= false;
timer2.Enabled:= false;
timer3.Enabled:= false;
aposta:=   StrToInt(Edit1.Text);

if (n1 = n2) and (n2 = n3) then
begin
  saldo:= saldo + 5 * aposta;
  lblSaldo.Text:= IntToStr(saldo)
  end
else if (n1=n2) or (n2=n3) or (n1=n3) then
begin
  saldo:= saldo + 2 * aposta;
  lblSaldo.Text:= IntToStr(saldo)
end
else
begin
  saldo:= saldo - aposta;
  lblSaldo.Text:= IntToStr(saldo)
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
saldo:= 1000;
lblSaldo.Text:= IntToStr(saldo);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
randomize;
n1:= random(10);
lblN1.Text:= IntToStr(n1);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
randomize;
n2:= random(10);
lblN2.Text:= IntToStr(n2);

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
randomize;
n3:= random(10);
lblN3.Text:= IntToStr(n3);
end;


end.
