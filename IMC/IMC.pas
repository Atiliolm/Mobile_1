unit IMC;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListBox, FMX.Ani, FMX.Layouts;

type
  TForm1 = class(TForm)
    ColorAnimation1: TColorAnimation;
    ColorKeyAnimation1: TColorKeyAnimation;
    ListBox1: TListBox;
    GradientAnimation1: TGradientAnimation;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    txtAltura: TEdit;
    txtPeso: TEdit;
    ListBoxItem10: TListBoxItem;
    Button1: TButton;
    Button2: TButton;
    ToolBar1: TToolBar;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    lblImc: TLabel;
    lblSit: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  peso, altura, cimc: real;
implementation
{$R *.fmx}
procedure TForm1.Button1Click(Sender: TObject);
begin
altura:= strtofloat(txtAltura.Text);
peso:= strtofloat(txtPeso.Text);

cimc := peso / (altura*altura);
if (cimc < 18.5) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Abaixo do Peso';
end
else if (cimc < 24.9) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Peso Normal';
end
else if (cimc < 29.9) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Sobrepeso';
end
else if (cimc < 34.9) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Obesidade Grau 1';
end
else if (cimc < 39.9) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Obesidade Grau 2';
end
else if (cimc > 39.9) then
begin
lblImc.Text:= floattostr(cimc);
lblSit.Text:= 'Obesidade Grau 3';
end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
peso:= 0;
altura:= 0;
txtAltura.Text:= '';
txtPeso.Text:= '';
lblImc.Text:= '';
lblSit.Text:= '';
cimc:= 0;
end;

end.
