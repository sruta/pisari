unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFPrincipal = class(TForm)
    pnlHeader: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    pnlBotones: TPanel;
    pnlLibros: TPanel;
    imgLibros: TImage;
    pnlAdministrar: TPanel;
    imgAdministrar: TImage;
    lbPosicion: TLabel;
    procedure imgAdministrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses Administrar;

{$R *.dfm}

procedure TFPrincipal.imgAdministrarClick(Sender: TObject);
begin
  lbPosicion.Caption:='Administrar';
  FAdministrar:=TFAdministrar.Create(Self);
end;

end.
