program Games;

uses
  System.StartUpCopy,
  FMX.Forms,
  untPrincipal in 'untPrincipal.pas' {Form1},
  untSkyrim in 'untSkyrim.pas' {Form2},
  untNier in 'untNier.pas' {Form3},
  untTLoU in 'untTLoU.pas' {Form4},
  untGoW in 'untGoW.pas' {Form5},
  untDrkS in 'untDrkS.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
