unit Autores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, Mask,
  DBCtrls;

type
  TFAutores = class(TForm)
    pnlLefter: TPanel;
    Panel1: TPanel;
    btnLibros: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    qAutor: TQuery;
    qAutoridAutor: TIntegerField;
    qAutornombre: TStringField;
    dsAutor: TDataSource;
    pnlDatosAutor: TPanel;
    uAutor: TUpdateSQL;
    Panel3: TPanel;
    dbeNombre: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    qNuevoAutor: TQuery;
    edFiltrar: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnLibrosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    _Modo:char;
    procedure panelShow;
    procedure panelHide;
  public
    { Public declarations }
  end;

var
  FAutores: TFAutores;

implementation

{$R *.dfm}

procedure TFAutores.btnLibrosClick(Sender: TObject);
begin
  _Modo:='A';
  panelShow;
  dbeNombre.Text:='';
  qAutor.Insert;
end;

procedure TFAutores.Button1Click(Sender: TObject);
begin

  if(dbeNombre.Text<>'')then
  begin
    if(_Modo='A')then
    begin
      qNuevoAutor.Close;
      qNuevoAutor.ParamByName('Nombre').AsString:=dbeNombre.Text;
      qNuevoAutor.ExecSQL;
      qAutor.Close;
      qAutor.Open;
    end;
    panelHide;
  end
  else
    ShowMessage('Debe tipear un nombre para el nuevo autor');
end;

procedure TFAutores.Button2Click(Sender: TObject);
begin
  panelHide;
end;

procedure TFAutores.FormCreate(Sender: TObject);
begin
  qAutor.Open;
end;

procedure TFAutores.panelShow;
begin
  pnlDatosAutor.Show;
  edFiltrar.Enabled:=false;
  panel1.Enabled:=false;
  DBGrid1.Enabled:=False;

  if(_Modo = 'A')then
    qAutor.Insert
  else
    if(_Modo = 'M')then
      qAutor.Edit;
end;

procedure TFAutores.SpeedButton1Click(Sender: TObject);
begin
  _Modo:='M';
  panelShow;
end;

procedure TFAutores.SpeedButton2Click(Sender: TObject);
begin
  if(MessageDlg('�Est� seguro de que desea eliminar el autor seleccionado?', mtInformation, mbOKCancel, 0)=mrOk)then
    qAutor.Delete;
end;

procedure TFAutores.panelHide;
begin
  edFiltrar.Enabled:=True;
  panel1.Enabled:=true;
  DBGrid1.Enabled:=True;

  pnlDatosAutor.Hide;
end;



end.