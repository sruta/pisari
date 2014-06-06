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
    qNuevoLibro: TQuery;
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
    DateTimePicker1: TDateTimePicker;
    qEditorial: TQuery;
    qIdioma: TQuery;
    dsEditorial: TDataSource;
    dsIdioma: TDataSource;
    qLibro: TQuery;
    qLibroidLibro: TIntegerField;
    qLibroisbn: TIntegerField;
    qLibrotitulo: TStringField;
    qLibrocantPaginas: TIntegerField;
    qLibroprecio: TFloatField;
    qLibrofecha: TDateTimeField;
    qLibroidEditorial: TIntegerField;
    qLibrosinopsis: TMemoField;
    qLibrofoto: TStringField;
    qLibroidIdioma: TIntegerField;
    qLibroIdioma: TStringField;
    qLibroEditorial: TStringField;
    dbmSinopsis: TDBMemo;
    DBMemo1: TDBMemo;
    imgLibro: TImage;
    procedure FormCreate(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
  private
    { Private declarations }
    _Modo: char;
    _VentanaActiva:TForm;
    procedure panelHide;
    procedure panelShow;
    procedure abrirVentanaMDI(Tipo:TFMDI);
  public
    { Public declarations }
  end;

var
  FLibroABM: TFLibroABM;

implementation

{$R *.dfm}

procedure TFLibroABM.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

procedure TFLibroABM.AProcesarExecute(Sender: TObject);
begin
  qLibro.Close;
//  qLibro.ParamByName('Idioma').AsString := edFiltrar.Text;
  qLibro.Open;
end;

procedure TFLibroABM.FormCreate(Sender: TObject);
begin
  qEditorial.Open;
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
  imgLibro.Picture.LoadFromFile(qLibro['foto']);

  if (_Modo = 'A') then
    qIdioma.Insert
  else if (_Modo = 'M') then
    qIdioma.Edit;
end;

end.
