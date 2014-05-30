unit LibroABM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ActnList, Buttons, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, ExtCtrls, ComCtrls;

type
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLibroABM: TFLibroABM;

implementation

{$R *.dfm}

procedure TFLibroABM.FormCreate(Sender: TObject);
begin
  qEditorial.Open;
end;

end.
