unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ES.RegexControls;

type
  TForm1 = class(TForm)
    Edit: TEsRegexEdit;
    GridPanel1: TGridPanel;
    LabelFx1: TLabel;
    LabelFx2: TLabel;
    procedure EditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure calculate;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Math;

function Fx1(x: Double): Double;
const
  a: array [0..4] of Double = (0.9998660, -0.3302995, 0.1801410, -0.0851330, 0.0208351);
var
  k: Integer;
begin
  Result := 0;
  for k := 0 to 4 do
    Result := Result + a[k] * Power(x, 2 * k + 1);
end;

function Fx2(x: Double): Double;
const
  a: array [0..3] of Double = (0.00049, 0.98248, -0.39728, 0.10784);
var
  k: Integer;
begin
  Result := 0;
  for k := 0 to 3 do
    Result := Result + a[k] * Power(x, k);
end;

procedure TForm1.calculate;
const
  WrongNumber = 'Неверное число';
var
  x: Double;
begin
  if not Edit.IsValid then
  begin
    LabelFx1.Caption := WrongNumber;
    LabelFx2.Caption := WrongNumber;
    Exit;
  end;

  x := StrToFloat(Edit.Text);

  LabelFx1.Caption := 'arctan(x) = ' + Fx1(x).ToString;
  LabelFx2.Caption := 'ln(1+x) = ' + Fx2(x).ToString;
end;

procedure TForm1.EditChange(Sender: TObject);
begin
  calculate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FormatSettings.DecimalSeparator := '.';
  calculate;
end;

end.
