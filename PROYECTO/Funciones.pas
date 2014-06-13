unit Funciones;

interface

uses  DB, dbtables, Sysutils, Classes, Controls, Graphics, DBGrids, Windows,
      Forms, Dialogs, Variants;



{ FUNCIONES }
  Function IsNull(A,B:Variant):Variant;
  procedure CalculoTotalDataSet(TDS:TDataSet; Columna:String; Var Total:Currency);overload;
  procedure CalculoTotalDataSet(TDS:TDataSet; Columna:String; Var Total:Integer);overload;
  procedure CalculoTotalDataSet(TDS:TDataSet; Columnas:String; Var Totales:variant);overload;

  Function CalculoTotalDataSetCurrency(TDS:TDataSet; Columna:String):Currency;overload;
  Function CalculoTotalDataSetInt(TDS:TDataSet; Columna:String):Integer;overload;
  procedure DeleteAll(var Q:TQuery);


  Function CompletaCeros(Long : Integer; Nro : Integer) : String;

  function DiaSemana(D: TDateTime):String;
  function MaxDiaMes(mes, anio: integer): Integer;
  function Year(Fecha:TDate):word;
  function MesEnLetras(Mes:Integer):String;
  function Truncar2Dec(Valor:Currency):Currency;

  function Encriptar(const S: String; Key: Word): String;

  procedure SacarBarraOGuion(var S:String);

  function GetApplicationVersion:string;
  function GetFileVersion(Archivo:String):string;


  function FormatoEntero(Valor:Integer):String;

  Function TipoDeCopia(Nro:Integer):String;



  Function CadenaValida(S :String):Boolean;



  procedure FocusFirstControl(wControl:TWinControl);

  procedure SepararEnPalabras(Cadena:String; Palabras:TStringList);
  function ArmarWhereLike(NombreCampo:String; Valores:TStringList; OperadorLogico:String; ConClausulaWhere:Boolean):String;

  function incluye(id:variant; DS:TDataset; campo:String):boolean;


implementation

const
  {C1 y C2 aon usadas para encriptar la cadena de la clave}
    C1 = 52845;
    C2 = 11719;

//------------------------------------------------------------------------------
//                                  FUNCIONES                                 //
//------------------------------------------------------------------------------
Function IsNull(A,B:Variant):Variant;
{IS NULL}
begin
  if (A <> NULL) then
    isNull:=A
  else
    isNUll:=B;
end;

Function CompletaCeros(Long : Integer; Nro : Integer) : String;
Var
  Numero : String;

  Function Completar(i,Long,Nro : Integer) : String;
  Begin
    If (i<=Long)
      Then Completar:='0'+Completar(i+1,Long,Nro)
      Else Completar:=IntToStr(Nro);
  End;

Begin
 Numero:=IntToStr(Nro);
 CompletaCeros:=Completar(1,Long-Length(Numero),Nro);
End;

function Year(Fecha:TDate):word;
var
  d,m,a:Word;
begin
  DecodeDate(Fecha,a,m,d);
  Year:=a;
end;


function FormatoEntero(Valor:Integer):String;
{FORMATO ENTERO}
begin
  FormatoEntero:=FormatFloat('#,##0',Valor);
end;

function Encriptar(const S: String; Key: Word): String;
{ENCRIPTAR}
Var
  I: byte;
begin
  SetLength(Result,Length(S));
  for I := 1 to Length(S) do begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;
  end;
end;

procedure CalculoTotalDataSet(TDS:TDataSet; Columna:String; Var Total:Currency);
{CALCULO TOTAL DATA SET}
var
  Pos:TBookmark;
begin
  Total:=0;
  if not(TDS.IsEmpty) then
  begin
    pos:=TDS.GetBookmark;
    TDS.DisableControls;
    TDS.First;
    While Not(TDS.Eof) Do
    Begin
      If (TDS[Columna]<>Null) Then
        Total:=Total+TDS[Columna];

      TDS.Next;
    End;

    try
      if (TDS.BookmarkValid(Pos)) then
        TDS.GotoBookmark(Pos);
      TDS.FreeBookmark(Pos);
    except
      TDS.First;
    end;
    TDS.EnableControls;
  end;
end;

procedure CalculoTotalDataSet(TDS:TDataSet; Columna:String; Var Total:Integer);
{CALCULO TOTAL DATA SET}
var
  Pos:TBookmark;
begin
  Total:=0;
  if not(TDS.IsEmpty) then
  begin
    pos:=TDS.GetBookmark;
    TDS.DisableControls;
    TDS.First;
    While Not(TDS.Eof) Do
    Begin
      If (TDS[Columna]<>Null) Then
        Total:=Total+TDS[Columna];

      TDS.Next;
    End;

    try
      if (TDS.BookmarkValid(Pos)) then
        TDS.GotoBookmark(Pos);
      TDS.FreeBookmark(Pos);
    except
      TDS.First;
    end;
    TDS.EnableControls;
  end;
end;

procedure CalculoTotalDataSet(TDS:TDataSet; Columnas:String; Var Totales:variant);
{CALCULO TOTAL DATA SET - VARIAS COLUMNAS}
var
  ListaCol:TList;
  i:Integer;
  Pos:TBookmark;
begin
  ListaCol:=TList.Create;
  try
    TDS.GetFieldList(ListaCol,Columnas);
    for i:= 0 to ListaCol.Count -1 do
      Totales[i]:=0;

    if not(TDS.IsEmpty) then
    begin
      pos:=TDS.GetBookmark;
      TDS.DisableControls;
      TDS.First;
      While (Not TDS.Eof) Do
      Begin
        for i:= 0 to ListaCol.Count -1 do
        begin
          If (TDS[TField(ListaCol[i]).FieldName]<>Null) then
            Totales[i]:=Totales[i] + TDS[TField(ListaCol[i]).FieldName];
        end;

        TDS.Next;
      End;

      try
        if (TDS.BookmarkValid(Pos)) then
          TDS.GotoBookmark(Pos);
        TDS.FreeBookmark(Pos);
      except
        TDS.First;
      end;
      TDS.EnableControls; 
    end;
  finally
    ListaCol.Free;
  end;
end;

function CalculoTotalDataSetCurrency(TDS:TDataSet; Columna:String):Currency;
{TOTAL CURRENCY DE UN CAMPO DE UN DATASET}
var
  total:Currency;
begin
  CalculoTotalDataSet(TDS,columna,total);
  CalculoTotalDataSetCurrency:=total;
end;

function CalculoTotalDataSetInt(TDS:TDataSet; Columna:String):Integer;
{TOTAL INTEGER DE UN CAMPO DE UN DATASET}
var
  total:Integer;
begin
  CalculoTotalDataSet(TDS,columna,total);
  CalculoTotalDataSetInt:=total;
end;

procedure DeleteAll(var Q:TQuery);
{DELETE ALL}
begin
  Q.DisableControls;
  Q.First;
  while not(Q.Eof) do
    Q.Delete;

  Q.EnableControls;
end;

function DiaSemana(D: TDateTime):String;
{DIA DE LA SEMANA}
begin
  case DayOfWeek(D) of
    2: DiaSemana:= 'lu';
    3: DiaSemana:= 'ma';
    4: DiaSemana:= 'mi';
    5: DiaSemana:= 'ju';
    6: DiaSemana:= 'vi';
    7: DiaSemana:= 'sa';
  else
    DiaSemana:= '';
  end;
end;

function MaxDiaMes(mes, anio: integer): Integer;
{MAX DIA MES}
begin
  case (mes) of
    1,3,5,7,8,10,12 : MaxDiaMes:=31;
    4,6,9,11 : MaxDiaMes:=30;
    2 : if (IsLeapYear(anio)) then
          MaxDiaMes:=29
        else
          MaxDiaMes:=28;
    else MaxDiaMes:=0;
  end;
end;

function MesEnLetras(Mes:Integer):String;
{MES EN LETRAS}
begin
  case (Mes) of
    1 : MesEnLetras:='Enero';
    2 : MesEnLetras:='Febrero';
    3 : MesEnLetras:='Marzo';
    4 : MesEnLetras:='Abril';
    5 : MesEnLetras:='Mayo';
    6 : MesEnLetras:='Junio';
    7 : MesEnLetras:='Julio';
    8 : MesEnLetras:='Agosto';
    9 : MesEnLetras:='Septiembre';
    10 : MesEnLetras:='Octubre';
    11 : MesEnLetras:='Noviembre';
    12 : MesEnLetras:='Diciembre';
    else
      MesEnLetras:='';
  end;
end;

function Truncar2Dec(Valor:Currency):Currency;
{TRUNCAR A 2 DECIMALES}
begin
  Truncar2Dec:=StrToFloat(FormatFloat('0.00',Valor));
end;

procedure SacarBarraOGuion(var S:String);
{SACAR BARRA O GUION}
begin
  if (pos('/',S) > 0) then
  begin
    S:=copy(S,1,Pos('/',S)-1)+copy(S,Pos('/',S)+1, Length(S));
  end;

  if (pos('-',S) > 0) then
  begin
    S:=copy(S,1,Pos('-',S)-1)+copy(S,Pos('-',S)+1, Length(S));
  end;
end;

function GetFileVersion(Archivo:String):string;
{GET FILE VERSION}
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar (Archivo), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
      GetFileVersionInfo (PChar (Archivo), 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo (Pt2^) do
      begin
        Result:= IntToStr (HiWord (dwFileVersionMS)) + '.' +
                 IntToStr (LoWord (dwFileVersionMS)) + '.' +
                 IntToStr (HiWord (dwFileVersionLS)) + '.' +
                 IntToStr (LoWord (dwFileVersionLS));
      end;
    finally
      FreeMem (Pt);
   end;
  end;
end;

function GetApplicationVersion:string;
{GET APPLICATION VERSION}
begin
  GetApplicationVersion:=GetFileVersion(ParamStr (0));
end;

Function TipoDeCopia(Nro:Integer):String;
begin
  case (Nro) of
    1 : TipoDeCopia := 'Original';
    2 : TipoDeCopia := 'Duplicado';
    3 : TipoDeCopia := 'Triplicado';
    4 : TipoDeCopia := 'Cuadruplicado';
    else TipoDeCopia := 'Copia';
  end;
end;

Function CadenaValida(S :String):Boolean;
{VALIDA SI UNA CADENA CONTIENE CARACTERES ESPECIALES}
var
  i:integer;
  valida:Boolean;
begin
  i:=1;
  valida:=true;
  while (i <= Length(S)) and valida do
  begin
    if  not CharInSet( S[i], ['0'..'9','a'..'z','A'..'Z',' ','.',',','(',')','-'] ) then
       valida:=False;
    i:=i + 1;
  end;
  CadenaValida:=valida
end;

procedure FocusFirstControl(wControl:TWinControl);
var
  Lista:TList;
  i:Integer;
begin
  Lista:=TList.Create;
  wControl.GetTabOrderList(Lista);

  i:=0;
  while (i < Lista.Count) and not(TWinControl(Lista.Items[i]).CanFocus) do
    INC(i);

  if (i < Lista.Count) then
    TWinControl(Lista.Items[i]).SetFocus;

  Lista.Free;
end;


procedure SepararEnPalabras(Cadena:String; Palabras:TStringList);
{SEPARAR EN PALABRAS}
begin
  Palabras.Clear;
  while (TRIM(Cadena) <> '') do
  begin
    if (Pos(' ',Cadena) > 0) then
    begin
      Palabras.Add(TRIM(Copy(Cadena,1,Pos(' ',Cadena) -1)));
      Cadena:=Copy(Cadena,Pos(' ',Cadena) +1, Length(Cadena));
    end
    else
    begin
      Palabras.Add(TRIM(Cadena));
      Cadena:='';
    end;
  end;
end;


function ArmarWhereLike(NombreCampo:String; Valores:TStringList; OperadorLogico:String; ConClausulaWhere:Boolean):String;
{ARMAR WHERE LIKE}
var
  Aux:TStringList;
  i:Integer;
begin
  Aux:=TStringList.Create;
  if (Valores.Count > 0) then
  begin
    if (ConClausulaWhere) then
      Aux.Add('where');
    Aux.Add('(');

    for i:=0 to Valores.Count -1 do
    begin
      if (i > 0) then
        Aux.Add(' '+OperadorLogico+' ');
      Aux.Add('('+NombreCampo+' like '+#39+'%'+Valores[i]+'%'+#39+')');
    end;

    Aux.Add(')');
  end
  else
  begin
    if (ConClausulaWhere) then
      Aux.Add('where');
    Aux.Add('(1 = 1)');
  end;

  ArmarWhereLike:=Aux.Text;
  Aux.Free;
end;

function incluye(id:variant; DS:TDataset; campo:String):boolean;
var
  ok:boolean;
begin
  ok:=false;
  DS.First;
  while not(DS.Eof)do
  begin
    ok:=ok or (id = DS[campo]);
    DS.Next;
  end;
  incluye:=ok;
end;

//------------------------------------------------------------------------------
// FIN FUNCIONES                                                              //
//------------------------------------------------------------------------------




end.
