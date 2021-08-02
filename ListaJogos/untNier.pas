unit untNier;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ScrollBox, FMX.Memo;

type
  TForm3 = class(TForm)
    ToolBar1: TToolBar;
    GridPanelLayout1: TGridPanelLayout;
    Image1: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

end.
