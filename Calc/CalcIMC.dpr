program CalcIMC;

uses
  System.StartUpCopy,
  FMX.Forms,
  IMC in 'IMC.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
