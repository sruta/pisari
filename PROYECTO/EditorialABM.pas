unit EditorialABM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ActnList, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons, ExtCtrls;

type
  TFMDI = class of TForm;
  TFEditorialABM = class(TForm)
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
    btnLibros: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qNuevaEditorial: TQuery;
    uEditorial: TUpdateSQL;
    dsEditorial: TDataSource;
    qEditorial: TQuery;
    ActionList1: TActionList;
    AProcesar: TAction;
    AModificar: TAction;
    qEditorialidEditorial: TIntegerField;
    qEditorialNombre: TStringField;
    pnlLefter: TPanel;
    shPosition: TShape;
    SpeedButton3: TSpeedButton;
    btnAutores: TSpeedButton;
    btnEditoriales: TSpeedButton;
    btnIdiomas: TSpeedButton;
    procedure btnLibrosClick(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnAutoresClick(Sender: TObject);
    procedure btnIdiomasClick(Sender: TObject);
    procedure dbeNombreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    _VentanaActiva:TForm;
    _Modo: char;
    procedure panelShow;
    procedure panelHide;
    procedure abrirVentanaMDI(Tipo:TFMDI);
    procedure EnterComoTab(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  FEditorialABM: TFEditorialABM;

implementation

uses Autores, IdiomasABM, Principal;

{$R *.dfm}

procedure TFEditorialABM.abrirVentanaMDI(Tipo:TFMDI);
begin
  if(_VentanaActiva<>nil)then
    _VentanaActiva.Close;
  _VentanaActiva:=Tipo.Create(Self);
end;

procedure TFEditorialABM.AModificarExecute(Sender: TObject);
begin
  _Modo := 'M';
  panelShow;
  pnlTitulo.Caption := 'Modificar Editorial';
end;

procedure TFEditorialABM.AProcesarExecute(Sender: TObject);
begin
  qEditorial.Close;
  qEditorial.ParamByName('Editorial').AsString := edFiltrar.Text;
  qEditorial.Open;
end;

procedure TFEditorialABM.btnAutoresClick(Sender: TObject);
begin
  abrirVentanaMDI(TFAutores);
end;

procedure TFEditorialABM.btnIdiomasClick(Sender: TObject);
begin
  abrirVentanaMDI(TFIdiomasABM);
end;

procedure TFEditorialABM.btnLibrosClick(Sender: TObject);
begin
  _Modo := 'A';
  panelShow;
  dbeNombre.Text := '';
  pnlTitulo.Caption := 'Nueva Editorial';
end;

procedure TFEditorialABM.Button1Click(Sender: TObject);
begin
  try
  if (dbeNombre.Text <> '') then
  begin
    if (_Modo = 'A') then
    begin
      qNuevaEditorial.Close;
      qNuevaEditorial.ParamByName('Nombre').AsString := dbeNombre.Text;
      qNuevaEditorial.ExecSQL;
      qEditorial.Close;
      qEditorial.Open;
   end
    else
      if(_Modo='M')then
        qEditorial.Post;
    panelHide;
  end
  else
    ShowMessage('Debe tipear un nombre para la nueva editorial');
 Except
    Showmessage('No se aceptan Nombres de autor repetidos');
  end;
end;

procedure TFEditorialABM.Button2Click(Sender: TObject);
begin
  panelHide;
end;

procedure TFEditorialABM.EnterComoTab(Sender: TObject; var Key: Char);
{ENTER COMO TAB}
begin
  if (key = #13) then
  begin
    key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFEditorialABM.dbeNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if ((not(CharInSet(UpCase(Key), ['A'..'Z'])) and (not(CharInSet(key, [#8,#13,#32,#225,#233,#237,#243,#250])))))then
    Key := #0;
  EnterComoTab(Self, Key);
end;

procedure TFEditorialABM.DBGrid1DblClick(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFEditorialABM.FormCreate(Sender: TObject);
begin
  AProcesarExecute(Self);
  FPrincipal.lbPosicion.Caption:='Administrar >> Editoriales'
end;

procedure TFEditorialABM.panelHide;
begin
  edFiltrar.Enabled := True;
  Panel1.Enabled := True;
  DBGrid1.Enabled := True;

  pnlDatos.Hide;
  AProcesarExecute(Self);
end;

procedure TFEditorialABM.panelShow;
begin
  pnlDatos.Show;
  edFiltrar.Enabled := false;
  Panel1.Enabled := false;
  DBGrid1.Enabled := false;
  dbeNombre.SetFocus;

  if (_Modo = 'A') then
    qEditorial.Insert
  else if (_Modo = 'M') then
    qEditorial.Edit;
end;

procedure TFEditorialABM.SpeedButton1Click(Sender: TObject);
begin
  AModificarExecute(Self);
end;

procedure TFEditorialABM.SpeedButton2Click(Sender: TObject);
begin
  if (MessageDlg('�Est� seguro de que desea eliminar la editorial seleccionada?',
      mtInformation, mbOKCancel, 0) = mrOk) then
    qEditorial.Delete;
end;



end.
