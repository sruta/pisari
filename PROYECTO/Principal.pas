unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngimage;

type
  TFPrincipal = class(TForm)
    pnlHeader: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    pnlBotones: TPanel;
    pnlLibros: TPanel;
    pnlAdministrar: TPanel;
    lbPosicion: TLabel;
    imgLogo: TImage;
    procedure pnlAdministrarClick(Sender: TObject);

  private
    { Private declarations }
    _VentanaActiva:TForm;
    procedure abrirVentanaMDI(Form:TForm);
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses Administrar;

{$R *.dfm}


procedure TFPrincipal.pnlAdministrarClick(Sender: TObject);
begin
  lbPosicion.Caption:='Administrar';
  FAdministrar:=TFAdministrar.Create(Self);
end;

procedure TFPrincipal.abrirVentanaMDI(Form:TForm);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Form;
// Averiguar
end;

end.
