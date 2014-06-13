unit LibroABM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ActnList, Buttons, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, ExtCtrls, ComCtrls;

type
  TFMDI = class of TForm;
  TFLibroABM = class(TForm)
    Panel2: TPanel;
    lbFiltro: TLabel;
    DBGrid1: TDBGrid;
    pnlDatos: TPanel;
    pnlTitulo: TPanel;
    Button1: TButton;
    Button2: TButton;
    edFiltrar: TEdit;
    Panel1: TPanel;
    btnLibros: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ActionList1: TActionList;
    AProcesar: TAction;
    AModificar: TAction;
    dsLibro: TDataSource;
    uLibro: TUpdateSQL;
    DBGrid2: TDBGrid;
    PageControl1: TPageControl;
    tsDatosG: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    dbeNombre: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Sinopsis: TTabSheet;
    Label7: TLabel;
    dbeISBN: TDBEdit;
    dbeHojas: TDBEdit;
    dbePrecio: TDBEdit;
    dblEditorial: TDBLookupComboBox;
    dblIdioma: TDBLookupComboBox;
    dtpFecha: TDateTimePicker;
    qEditorial: TQuery;
    qIdioma: TQuery;
    dsEditorial: TDataSource;
    dsIdioma: TDataSource;
    dbmSinopsis: TDBMemo;
    DBMemo1: TDBMemo;
    imgLibro: TImage;
    pnlLefter: TPanel;
    shPosition: TShape;
    SpeedButton3: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    qIdiomaidIdioma: TIntegerField;
    qIdiomadescripcion: TStringField;
    qLibro: TQuery;
    qEditorialidEditorial: TIntegerField;
    qEditorialNombre: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure btnLibrosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbeNombreKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltrarChange(Sender: TObject);
    procedure btnEditorialesClick(Sender: TObject);
    procedure btnAutoresClick(Sender: TObject);
    procedure btnIdiomasClick(Sender: TObject);
  private
    { Private declarations }
    _Modo: char;
    _VentanaActiva:TForm;
    procedure panelHide;
    procedure panelShow;
    procedure abrirVentanaMDI(Tipo:TFMDI);
    procedure EnterComoTab(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  FLibroABM: TFLibroABM;

implementation

uses ModuloDatos, EditorialABM, Autores, IdiomasABM;

{$R *.dfm}

procedure TFLibroABM.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

procedure TFLibroABM.EnterComoTab(Sender: TObject; var Key: Char);
{ENTER COMO TAB}
begin
  if (key = #13) then
  begin
    key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFLibroABM.AModificarExecute(Sender: TObject);
begin
  _Modo := 'M';
  panelShow;
  pnlTitulo.Caption := 'Modificar Libro';
end;

procedure TFLibroABM.AProcesarExecute(Sender: TObject);
begin
  qLibro.Close;
//  qLibro.ParamByName('Idioma').AsString := edFiltrar.Text;
  qLibro.Open;
end;

procedure TFLibroABM.btnAutoresClick(Sender: TObject);
begin
  abrirVentanaMDI(TFAutores);
end;

procedure TFLibroABM.btnEditorialesClick(Sender: TObject);
begin
  abrirVentanaMDI(TFEditorialABM);
end;

procedure TFLibroABM.btnIdiomasClick(Sender: TObject);
begin
  abrirVentanaMDI(TFIdiomasABM);
end;

procedure TFLibroABM.btnLibrosClick(Sender: TObject);
begin
  _Modo := 'A';
  panelShow;
  dbeNombre.Text := '';
  pnlTitulo.Caption := 'Nuevo Libro';
end;

procedure TFLibroABM.Button1Click(Sender: TObject);
begin
  try
    if (dbeNombre.Text <> '') then
    begin
      if (_Modo = 'A') then
      begin
        qLibro['foto']:=imgLibro.Picture.GetNamePath;
        qLibro['fecha']:=dtpFecha.Date;
        qLibro.ApplyUpdates;
        qLibro.CommitUpdates;
      end
      else
        if(_Modo='M')then
          qLibro.Post;
      panelHide;
    end
    else
      ShowMessage('Debe tipear un nombre para el nuevo autor');
  Except
    Showmessage('No se aceptan Nombres de autor repetidos');
  end;
end;

procedure TFLibroABM.Button2Click(Sender: TObject);
begin
  panelHide;
end;

procedure TFLibroABM.dbeNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if ((not(CharInSet(UpCase(Key), ['A'..'Z'])) and (not(CharInSet(key, [#8,#13,#32,#225,#233,#237,#243,#250])))))then
    Key := #0;
  EnterComoTab(Self, Key);
end;

procedure TFLibroABM.edFiltrarChange(Sender: TObject);
begin
  AProcesarExecute(Self);
end;

procedure TFLibroABM.FormCreate(Sender: TObject);
begin
  qEditorial.Open;
  qIdioma.Open;
end;

procedure TFLibroABM.panelHide;
begin
  edFiltrar.Enabled := True;
  Panel1.Enabled := True;
  DBGrid1.Enabled := True;

  pnlDatos.Hide;
  AProcesarExecute(Self);
end;

procedure TFLibroABM.panelShow;
begin
  pnlDatos.Show;
  edFiltrar.Enabled := false;
  Panel1.Enabled := false;
  DBGrid1.Enabled := false;
  dbeNombre.SetFocus;
  if(_Modo<>'A')then
    imgLibro.Picture.LoadFromFile(qLibro['foto']);

  if (_Modo = 'A') then
    qIdioma.Append
  else if (_Modo = 'M') then
    qIdioma.Edit;
end;

procedure TFLibroABM.SpeedButton1Click(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFLibroABM.SpeedButton2Click(Sender: TObject);
begin
  if (MessageDlg('�Est� seguro de que desea eliminar el libro seleccionado?',
      mtInformation, mbOKCancel, 0) = mrOk) then
    qLibro.Delete;
end;

end.
