unit untTLoU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ScrollBox, FMX.Memo;

type
  TForm4 = class(TForm)
    ToolBar1: TToolBar;
    GridPanelLayout1: TGridPanelLayout;
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

end.
