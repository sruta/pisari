unit Administrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons;

type
  TFAdministrar = class(TForm)
    pnlLefter: TPanel;
    btnLibros: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdministrar: TFAdministrar;

implementation

uses Principal, Autores;

{$R *.dfm}

procedure TFAdministrar.SpeedButton1Click(Sender: TObject);
begin
  FAutores:=TFAutores.Create(Self);
end;

end.
