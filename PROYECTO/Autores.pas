unit Autores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, Mask,
  DBCtrls, ActnList, Menus;

type
  TFMDI = class of TForm;
  TFAutores = class(TForm)
    Panel1: TPanel;
    btnLibros: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    qAutor: TQuery;
    dsAutor: TDataSource;
    pnlDatos: TPanel;
    uAutor: TUpdateSQL;
    pnlTitulo: TPanel;
    dbeNombre: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    qNuevoAutor: TQuery;
    edFiltrar: TEdit;
    lbFiltro: TLabel;
    ActionList1: TActionList;
    AProcesar: TAction;
    qAutoridAutor: TIntegerField;
    qAutornombre: TStringField;
    AModificar: TAction;
    pnlLefter: TPanel;
    shPosition: TShape;
    SpeedButton3: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    MainMenu1: TMainMenu;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnLibrosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure edFiltrarChange(Sender: TObject);
    procedure dbeNombreKeyPress(Sender: TObject; var Key: Char);
    procedure AModificarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnEditorialesClick(Sender: TObject);
    procedure btnIdiomasClick(Sender: TObject);
  private
    { Private declarations }
    _Modo: char;
    _VentanaActiva:TForm;
    procedure panelShow;
    procedure panelHide;
    procedure abrirVentanaMDI(Tipo:TFMDI);
    procedure EnterComoTab(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  FAutores: TFAutores;

implementation

uses EditorialABM, IdiomasABM, Principal, Funciones;

{$R *.dfm}

procedure TFAutores.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

procedure TFAutores.EnterComoTab(Sender: TObject; var Key: Char);
{ENTER COMO TAB}
begin
  if (key = #13) then
  begin
    key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFAutores.AModificarExecute(Sender: TObject);
begin
  _Modo := 'M';
  panelShow;
  pnlTitulo.Caption := 'Modificar Autor';
end;

procedure TFAutores.AProcesarExecute(Sender: TObject);
begin
  qAutor.Close;
  qAutor.ParamByName('Autor').AsString := edFiltrar.Text;
  qAutor.Open;
end;

procedure TFAutores.btnEditorialesClick(Sender: TObject);
begin
  abrirVentanaMDI(TFEditorialABM);
end;

procedure TFAutores.btnIdiomasClick(Sender: TObject);
begin
  abrirVentanaMDI(TFIdiomasABM);
end;

procedure TFAutores.btnLibrosClick(Sender: TObject);
begin
  _Modo := 'A';
  panelShow;
  dbeNombre.Text := '';
  pnlTitulo.Caption := 'Nuevo Autor';
end;

procedure TFAutores.Button1Click(Sender: TObject);
begin
  try
    if (dbeNombre.Text <> '') then
    begin
      if (_Modo = 'A') then
      begin
        qNuevoAutor.Close;
        qNuevoAutor.ParamByName('Nombre').AsString := dbeNombre.Text;
        qNuevoAutor.ExecSQL;
        qAutor.Close;
        qAutor.Open;
      end
      else
        if(_Modo='M')then
          qAutor.Post;
      panelHide;
    end
    else
      ShowMessage('Debe tipear un nombre para el nuevo autor');
  Except
    Showmessage('No se aceptan Nombres de autor repetidos');
  end;
end;

procedure TFAutores.Button2Click(Sender: TObject);
begin
  panelHide;
end;

procedure TFAutores.dbeNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if ((not(CharInSet(UpCase(Key), ['A'..'Z'])) and (not(CharInSet(key, [#8,#13,#32,#225,#233,#237,#243,#250])))))then
    Key := #0;
  EnterComoTab(Self, Key);
end;

procedure TFAutores.DBGrid1DblClick(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFAutores.edFiltrarChange(Sender: TObject);
begin
  AProcesarExecute(Self);
end;



procedure TFAutores.FormCreate(Sender: TObject);
begin
  AProcesarExecute(Self);
  FPrincipal.lbPosicion.Caption:='Administrar >> Autores'
end;

procedure TFAutores.panelShow;
begin
  pnlDatos.Show;
  edFiltrar.Enabled := false;
  Panel1.Enabled := false;
  DBGrid1.Enabled := false;
  dbeNombre.SetFocus;

  if (_Modo = 'A') then
    qAutor.Insert
  else if (_Modo = 'M') then
    qAutor.Edit;
end;

procedure TFAutores.SpeedButton1Click(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFAutores.SpeedButton2Click(Sender: TObject);
begin
  if (MessageDlg('�Est� seguro de que desea eliminar el autor seleccionado?',
      mtInformation, mbOKCancel, 0) = mrOk) then
    qAutor.Delete;
end;

procedure TFAutores.panelHide;
begin
  edFiltrar.Enabled := True;
  Panel1.Enabled := True;
  DBGrid1.Enabled := True;

  pnlDatos.Hide;
  AProcesarExecute(Self);
end;


end.
