unit Administrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons;

type
  TFMDI = class of TForm;
  TFAdministrar = class(TForm)
    pnlLefter: TPanel;
    btnLibros: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    Panel1: TPanel;
    procedure btnAutoresClick(Sender: TObject);
    procedure btnEditorialesClick(Sender: TObject);
    procedure btnIdiomasClick(Sender: TObject);
  private
    { Private declarations }
    _VentanaActiva:TForm;
    procedure abrirVentanaMDI(Tipo:TFMDI);
  public
    { Public declarations }
  end;

var
  FAdministrar: TFAdministrar;

implementation

uses Principal, Autores, EditorialABM, IdiomasABM;

{$R *.dfm}

procedure TFAdministrar.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

procedure TFAdministrar.btnAutoresClick(Sender: TObject);
begin
  abrirVentanaMDI(TFAutores);
end;

procedure TFAdministrar.btnEditorialesClick(Sender: TObject);
begin
  abrirVentanaMDI(TFEditorialABM);
end;

procedure TFAdministrar.btnIdiomasClick(Sender: TObject);
begin
  abrirVentanaMDI(TFIdiomasABM);
end;


end.
