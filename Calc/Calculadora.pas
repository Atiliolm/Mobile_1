unit Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    txtV1: TEdit;
    txtV2: TEdit;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    lblResult: TListBoxItem;
    btmSoma: TButton;
    btmSub: TButton;
    btmMult: TButton;
    btmDiv: TButton;
    ListBoxItem9: TListBoxItem;
    btmLimpar: TButton;
    procedure btmMultClick(Sender: TObject);
    procedure btmSomaClick(Sender: TObject);
    procedure btmSubClick(Sender: TObject);
    procedure btmDivClick(Sender: TObject);
    procedure btmLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v1, v2, result: double;

implementation

{$R *.fmx}
{$R *.iPhone55in.fmx IOS}
{$R *.iPhone47in.fmx IOS}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.btmSomaClick(Sender: TObject);
begin
  v1:= StrToFloat(txtV1.Text);
  v2:= StrToFloat(txtV2.Text);
  result:= v1+v2;
    lblResult.Text:= FloatToStr(result);
end;

procedure TForm1.btmSubClick(Sender: TObject);
begin
  v1:= StrToFloat(txtV1.Text);
  v2:= StrToFloat(txtV2.Text);
  result:= v1-v2;
  lblResult.Text:= FloatToStr(result);
end;

procedure TForm1.btmDivClick(Sender: TObject);
begin
  v1:= StrToFloat(txtV1.Text);
  v2:= StrToFloat(txtV2.Text);
  result:= v1/v2;
  lblResult.Text:= FloatToStr(result);
end;

procedure TForm1.btmLimparClick(Sender: TObject);
begin
  v1:= 0;
  v2:= 0;
  result:= 0;
  txtV1.Text:= '';
  txtV2.Text:= '';
  lblResult.Text:= '...';
end;

procedure TForm1.btmMultClick(Sender: TObject);
begin
  v1:= StrToFloat(txtV1.Text);
  v2:= StrToFloat(txtV2.Text);
  result:= v1*v2;
  lblResult.Text:= FloatToStr(result);
end;

end.
