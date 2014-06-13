unit MDIGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit2, DBTables, DB, ActnList, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, Buttons, ExtCtrls;

type
  TFMDIGenerico = class(TForm2)
    Panel1: TPanel;
    pnlLefter: TPanel;
    btnLibros: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    lbFiltro: TLabel;
    edFiltrar: TEdit;
    pnlDatos: TPanel;
    Label1: TLabel;
    pnlTitulo: TPanel;
    dbeDescripcion: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    AProcesar: TAction;
    AModificar: TAction;
    qDatos: TQuery;
    qDatosidIdioma: TIntegerField;
    qDatosdescripcion: TStringField;
    dsDatos: TDataSource;
    uAutor: TUpdateSQL;
    qNuevoIdioma: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMDIGenerico: TFMDIGenerico;

implementation

{$R *.dfm}

end.
