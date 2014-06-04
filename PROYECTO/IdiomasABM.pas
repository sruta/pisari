unit IdiomasABM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB,
  DBTables, ActnList;

type
  TFIdiomasABM = class(TForm)
    Panel2: TPanel;
    lbFiltro: TLabel;
    DBGrid1: TDBGrid;
    pnlDatos: TPanel;
    Label1: TLabel;
    pnlTitulo: TPanel;
    dbeNombre: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    edFiltrar: TEdit;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ActionList1: TActionList;
    AProcesar: TAction;
    AModificar: TAction;
    qIdioma: TQuery;
    dsIdioma: TDataSource;
    uAutor: TUpdateSQL;
    qNuevoIdioma: TQuery;
    qIdiomaidIdioma: TIntegerField;
    qIdiomadescripcion: TStringField;
    pnlLefter: TPanel;
    shPosition: TShape;
    btnLibros: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnAutoresClick(Sender: TObject);
    procedure btnEditorialesClick(Sender: TObject);
    procedure dbeNombreKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    _Modo: char;
    procedure panelShow;
    procedure panelHide;
  public
    { Public declarations }
  end;

var
  FIdiomasABM: TFIdiomasABM;

implementation

uses Principal, Autores, EditorialABM;

{$R *.dfm}

procedure TFIdiomasABM.AModificarExecute(Sender: TObject);
begin
  _Modo := 'M';
  panelShow;
  pnlTitulo.Caption := 'Modificar Idioma';
end;

procedure TFIdiomasABM.AProcesarExecute(Sender: TObject);
begin
  qIdioma.Close;
  qIdioma.ParamByName('Idioma').AsString := edFiltrar.Text;
  qIdioma.Open;
end;

procedure TFIdiomasABM.btnAutoresClick(Sender: TObject);
begin
  FAutores:=TFAutores.Create(Self);
end;

procedure TFIdiomasABM.btnEditorialesClick(Sender: TObject);
begin
  FEditorialABM:=TFEditorialABM.Create(Self);
end;

procedure TFIdiomasABM.Button1Click(Sender: TObject);
begin
  if (dbeNombre.Text <> '') then
  begin
    if (_Modo = 'A') then
    begin
      qNuevoIdioma.Close;
      qNuevoIdioma.ParamByName('Descripcion').AsString := dbeNombre.Text;
      qNuevoIdioma.ExecSQL;
      qIdioma.Close;
      qIdioma.Open;
    end
    else
      if(_Modo='M')then
        qIdioma.Post;
    panelHide;
  end
  else
    ShowMessage('Debe tipear un nombre para el nuevo idioma');
end;

procedure TFIdiomasABM.Button2Click(Sender: TObject);
begin
  panelHide;
end;

procedure TFIdiomasABM.dbeNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if ((NOT (UpCase(Key) in ['A'..'Z'])) and (Key <> #8) and (Key <> #13) and (Key <> #32)) then Key := #0;
end;

procedure TFIdiomasABM.DBGrid1DblClick(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFIdiomasABM.FormCreate(Sender: TObject);
begin
  AProcesarExecute(Self);
  FPrincipal.lbPosicion.Caption:='Administrar >> Idiomas'
end;

procedure TFIdiomasABM.SpeedButton4Click(Sender: TObject);
begin
  _Modo := 'A';
  panelShow;
  dbeNombre.Text := '';
  pnlTitulo.Caption := 'Nuevo Idioma';
end;

procedure TFIdiomasABM.SpeedButton5Click(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFIdiomasABM.SpeedButton6Click(Sender: TObject);
begin
  if (MessageDlg('�Est� seguro de que desea eliminar el idioma seleccionado?',
      mtInformation, mbOKCancel, 0) = mrOk) then
    qIdioma.Delete;
end;

procedure TFIdiomasABM.panelHide;
begin
  edFiltrar.Enabled := True;
  Panel1.Enabled := True;
  DBGrid1.Enabled := True;

  pnlDatos.Hide;
  AProcesarExecute(Self);
end;

procedure TFIdiomasABM.panelShow;
begin
  pnlDatos.Show;
  edFiltrar.Enabled := false;
  Panel1.Enabled := false;
  DBGrid1.Enabled := false;
  dbeNombre.SetFocus;

  if (_Modo = 'A') then
    qIdioma.Insert
  else if (_Modo = 'M') then
    qIdioma.Edit;
end;

end.
