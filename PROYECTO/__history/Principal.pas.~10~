unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngimage, MDIGenerico;

type
  TFMDI = class of TForm;// TFMDIGenerico;
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
    _VentanaActiva:TForm;//TFMDIGenerico;
    procedure abrirVentanaMDI(Tipo:TFMDI);
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
  abrirVentanaMDI(TFAdministrar);
end;

procedure TFPrincipal.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

end.
