program CookBook;

uses
  Forms,
  Principal in 'Principal.pas' {FPrincipal},
  ModuloDatos in 'ModuloDatos.pas' {DataModule2: TDataModule},
  Administrar in 'Administrar.pas' {FAdministrar},
  Autores in 'Autores.pas' {FAutores},
  EditorialABM in 'EditorialABM.pas' {FEditorialABM},
  IdiomasABM in 'IdiomasABM.pas' {FIdiomasABM},
  LibroABM in 'LibroABM.pas' {FLibroABM},
  Unit2 in 'Unit2.pas' {Form2},
  MDIGenerico in 'MDIGenerico.pas' {FMDIGenerico},
  Funciones in 'Funciones.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
