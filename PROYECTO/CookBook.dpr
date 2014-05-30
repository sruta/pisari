program CookBook;

uses
  Forms,
  Principal in 'Principal.pas' {FPrincipal},
  ModuloDatos in 'ModuloDatos.pas' {DataModule2: TDataModule},
  Administrar in 'Administrar.pas' {FAdministrar},
  Autores in 'Autores.pas' {FAutores},
  EditorialABM in 'EditorialABM.pas' {FEditorialABM},
  IdiomasABM in 'IdiomasABM.pas' {FIdiomasABM},
  LibroABM in 'LibroABM.pas' {FLibroABM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
