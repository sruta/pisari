unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, ExtCtrls;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAutores: TFAutores;

implementation

{$R *.dfm}

procedure TFAutores.FormCreate(Sender: TObject);
begin
  qAutor.Open;
end;

end.
