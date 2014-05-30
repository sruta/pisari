object FLibroABM: TFLibroABM
  Left = 0
  Top = 0
  Caption = 'FLibroABM'
  ClientHeight = 713
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    1022
    713)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 870
    Top = -28
    Width = 153
    Height = 741
    Anchors = [akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    object btnLibros: TSpeedButton
      Left = 21
      Top = 220
      Width = 120
      Height = 75
      Caption = 'Agregar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 21
      Top = 324
      Width = 120
      Height = 75
      Caption = 'Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 21
      Top = 428
      Width = 120
      Height = 75
      Caption = 'Eliminar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 152
    Top = 0
    Width = 728
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 14725088
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      728
      713)
    object lbFiltro: TLabel
      AlignWithMargins = True
      Left = 2
      Top = 644
      Width = 38
      Height = 16
      Anchors = [akLeft]
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 182
      Width = 547
      Height = 417
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'isbn'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'titulo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cantPaginas'
          Title.Alignment = taCenter
          Title.Caption = 'Cant. P'#225'ginas'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'precio'
          Title.Alignment = taCenter
          Title.Caption = 'Precio'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Idioma'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Editorial'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object edFiltrar: TEdit
      AlignWithMargins = True
      Left = 52
      Top = 643
      Width = 510
      Height = 21
      Anchors = [akLeft]
      TabOrder = 2
    end
    object DBGrid2: TDBGrid
      Left = 561
      Top = 182
      Width = 159
      Height = 188
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbmSinopsis: TDBMemo
      Left = 561
      Top = 376
      Width = 160
      Height = 223
      DataField = 'sinopsis'
      DataSource = dsLibro
      TabOrder = 4
    end
    object pnlDatos: TPanel
      AlignWithMargins = True
      Left = 120
      Top = 248
      Width = 489
      Height = 369
      Anchors = []
      Color = clBackground
      ParentBackground = False
      TabOrder = 1
      Visible = False
      DesignSize = (
        489
        369)
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 417
      end
      object Button1: TButton
        Left = 16
        Top = 328
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Aceptar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 168
      end
      object Button2: TButton
        Left = 408
        Top = 328
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 336
        ExplicitTop = 168
      end
      object PageControl1: TPageControl
        Left = 16
        Top = 56
        Width = 456
        Height = 266
        ActivePage = tsDatosG
        TabOrder = 3
        object tsDatosG: TTabSheet
          Caption = 'Datos Generales'
          ExplicitLeft = 0
          ExplicitHeight = 221
          object Label1: TLabel
            Left = 18
            Top = 24
            Width = 48
            Height = 18
            Caption = 'T'#237'tulo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 18
            Top = 52
            Width = 42
            Height = 18
            Caption = 'ISBN:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 18
            Top = 80
            Width = 50
            Height = 18
            Caption = 'Hojas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 18
            Top = 108
            Width = 52
            Height = 18
            Caption = 'Precio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 18
            Top = 163
            Width = 113
            Height = 18
            Caption = 'Fecha Edici'#243'n:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 18
            Top = 136
            Width = 69
            Height = 18
            Caption = 'Editorial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 18
            Top = 190
            Width = 58
            Height = 18
            Caption = 'Idioma:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
          end
          object dbeNombre: TDBEdit
            Left = 167
            Top = 20
            Width = 268
            Height = 22
            DataField = 'nombre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dbeISBN: TDBEdit
            Left = 167
            Top = 48
            Width = 268
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 1
          end
          object dbeHojas: TDBEdit
            Left = 167
            Top = 76
            Width = 268
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object dbePrecio: TDBEdit
            Left = 167
            Top = 104
            Width = 268
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dblEditorial: TDBLookupComboBox
            Left = 167
            Top = 132
            Width = 268
            Height = 22
            DataField = 'idEditorial'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            KeyField = 'idEditorial'
            ListField = 'Nombre'
            ListSource = dsEditorial
            ParentFont = False
            TabOrder = 4
          end
          object dblIdioma: TDBLookupComboBox
            Left = 168
            Top = 187
            Width = 267
            Height = 21
            DataField = 'idIdioma'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'idIdioma'
            ListField = 'descripcion'
            ListSource = dsIdioma
            ParentFont = False
            TabOrder = 5
          end
          object DateTimePicker1: TDateTimePicker
            Left = 167
            Top = 160
            Width = 268
            Height = 21
            Date = 41788.843195821760000000
            Time = 41788.843195821760000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Sinopsis'
          ImageIndex = 1
          ExplicitWidth = 281
          ExplicitHeight = 165
        end
        object TabSheet2: TTabSheet
          Caption = 'Foto'
          ImageIndex = 2
          ExplicitWidth = 281
          ExplicitHeight = 165
        end
        object Sinopsis: TTabSheet
          Caption = 'Autores'
          ImageIndex = 3
          ExplicitHeight = 221
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 120
    Top = 640
    object AProcesar: TAction
      Caption = 'Procesar'
      ShortCut = 116
    end
    object AModificar: TAction
      Caption = 'Modificar'
    end
  end
  object dsLibro: TDataSource
    DataSet = qLibro
    Left = 216
    Top = 640
  end
  object uLibro: TUpdateSQL
    ModifySQL.Strings = (
      'update Autor'
      'set'
      '  idAutor = :idAutor,'
      '  nombre = :nombre'
      'where'
      '  idAutor = :OLD_idAutor')
    InsertSQL.Strings = (
      'insert into Autor'
      '  (nombre)'
      'values'
      '  (:nombre)')
    DeleteSQL.Strings = (
      'delete from Autor'
      'where'
      '  idAutor = :OLD_idAutor')
    Left = 264
    Top = 640
  end
  object qNuevoLibro: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      
        'INSERT INTO Libro (ISBN, titulo, cantPaginas, precio, Fecha, idE' +
        'ditorial, sinopsis, foto, idIdioma)'
      
        'VALUES (:ISBN, :titulo, :cantPaginas, :precio, :Fecha, :idEditor' +
        'ial, :sinopsis, :foto, :idIdioma)')
    Left = 328
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISBN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cantPaginas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idEditorial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sinopsis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'foto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idIdioma'
        ParamType = ptUnknown
      end>
  end
  object qEditorial: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'SELECT * FROM Editorial')
    Left = 624
    Top = 648
  end
  object qIdioma: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'SELECT * FROM Idioma')
    Left = 488
    Top = 672
  end
  object dsEditorial: TDataSource
    DataSet = qEditorial
    Left = 552
    Top = 664
  end
  object dsIdioma: TDataSource
    DataSet = qIdioma
    Left = 800
    Top = 672
  end
  object qLibro: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'SELECT L.*, I.Descripcion AS Idioma, E.Nombre AS Editorial'
      'FROM'
      #9'Libro L'
      #9'INNER JOIN Idioma I ON (L.idIdioma = I.idIdioma)'
      #9'INNER JOIN Editorial E ON (L.idEditorial = E.idEditorial)'
      'WHERE (:Titulo = '#39#39')or(L.Titulo like '#39'%'#39' + :Titulo + '#39'%'#39')')
    UpdateObject = uLibro
    Left = 168
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'Titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Titulo'
        ParamType = ptUnknown
      end>
    object qLibroidLibro: TIntegerField
      FieldName = 'idLibro'
    end
    object qLibroisbn: TIntegerField
      FieldName = 'isbn'
    end
    object qLibrotitulo: TStringField
      FieldName = 'titulo'
      Size = 50
    end
    object qLibrocantPaginas: TIntegerField
      FieldName = 'cantPaginas'
    end
    object qLibroprecio: TFloatField
      FieldName = 'precio'
    end
    object qLibrofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object qLibroidEditorial: TIntegerField
      FieldName = 'idEditorial'
    end
    object qLibrosinopsis: TMemoField
      FieldName = 'sinopsis'
      BlobType = ftMemo
      Size = 1
    end
    object qLibrofoto: TStringField
      FieldName = 'foto'
      Size = 50
    end
    object qLibroidIdioma: TIntegerField
      FieldName = 'idIdioma'
    end
    object qLibroIdioma: TStringField
      FieldName = 'Idioma'
      Size = 50
    end
    object qLibroEditorial: TStringField
      FieldName = 'Editorial'
      Size = 50
    end
  end
end
