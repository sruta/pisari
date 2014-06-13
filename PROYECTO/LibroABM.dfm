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
    Color = 15390207
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
      OnClick = btnLibrosClick
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
      OnClick = SpeedButton1Click
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
      OnClick = SpeedButton2Click
    end
  end
  object Panel2: TPanel
    Left = 153
    Top = 0
    Width = 728
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 15390207
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
      OnChange = edFiltrarChange
      OnKeyPress = dbeNombreKeyPress
    end
    object DBGrid2: TDBGrid
      Left = 561
      Top = 182
      Width = 159
      Height = 188
      Anchors = [akTop, akRight]
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
      Anchors = [akTop, akRight, akBottom]
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
      Color = 15390207
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
        OnClick = Button1Click
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
        OnClick = Button2Click
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
            DataField = 'titulo'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = dbeNombreKeyPress
          end
          object dbeISBN: TDBEdit
            Left = 167
            Top = 48
            Width = 268
            Height = 22
            DataField = 'isbn'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 1
            OnKeyPress = dbeNombreKeyPress
          end
          object dbeHojas: TDBEdit
            Left = 167
            Top = 76
            Width = 268
            Height = 22
            DataField = 'cantPaginas'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = dbeNombreKeyPress
          end
          object dbePrecio: TDBEdit
            Left = 167
            Top = 104
            Width = 268
            Height = 22
            DataField = 'precio'
            DataSource = dsLibro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = dbeNombreKeyPress
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
            OnKeyPress = dbeNombreKeyPress
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
            TabOrder = 6
            OnKeyPress = dbeNombreKeyPress
          end
          object dtpFecha: TDateTimePicker
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
            TabOrder = 5
            OnKeyPress = dbeNombreKeyPress
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Sinopsis'
          ImageIndex = 1
          object DBMemo1: TDBMemo
            Left = 16
            Top = 24
            Width = 417
            Height = 201
            DataField = 'sinopsis'
            DataSource = dsLibro
            TabOrder = 0
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Foto'
          ImageIndex = 2
          object imgLibro: TImage
            Left = 48
            Top = 24
            Width = 353
            Height = 201
            Proportional = True
            Stretch = True
            Transparent = True
          end
        end
        object Sinopsis: TTabSheet
          Caption = 'Autores'
          ImageIndex = 3
        end
      end
    end
  end
  object pnlLefter: TPanel
    Left = 0
    Top = -60
    Width = 153
    Height = 773
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    Color = 14725088
    ParentBackground = False
    TabOrder = 2
    object shPosition: TShape
      Left = 17
      Top = 257
      Width = 137
      Height = 74
      Brush.Color = 15390207
      Pen.Style = psClear
    end
    object SpeedButton3: TSpeedButton
      Left = 16
      Top = 256
      Width = 120
      Height = 75
      Caption = 'Libros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnAutores: TSpeedButton
      Left = 16
      Top = 360
      Width = 120
      Height = 75
      Caption = 'Autores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAutoresClick
    end
    object btnEditoriales: TSpeedButton
      Left = 16
      Top = 464
      Width = 120
      Height = 75
      Caption = 'Editoriales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditorialesClick
    end
    object btnIdiomas: TSpeedButton
      Left = 16
      Top = 568
      Width = 120
      Height = 75
      Caption = 'Idiomas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnIdiomasClick
    end
  end
  object ActionList1: TActionList
    Left = 976
    Top = 640
    object AProcesar: TAction
      Caption = 'Procesar'
      ShortCut = 116
      OnExecute = AProcesarExecute
    end
    object AModificar: TAction
      Caption = 'Modificar'
      OnExecute = AModificarExecute
    end
  end
  object dsLibro: TDataSource
    DataSet = qLibro
    Left = 720
    Top = 672
  end
  object uLibro: TUpdateSQL
    ModifySQL.Strings = (
      'update Libro'
      'set'
      '  isbn = :isbn,'
      '  titulo = :titulo,'
      '  cantPaginas = :cantPaginas,'
      '  precio = :precio,'
      '  fecha = :fecha,'
      '  idEditorial = :idEditorial,'
      '  sinopsis = :sinopsis,'
      '  foto = :foto,'
      '  idIdioma = :idIdioma'
      'where'
      '  idLibro = :OLD_idLibro')
    InsertSQL.Strings = (
      'insert into Libro'
      
        '  (isbn, titulo, cantPaginas, precio, fecha, idEditorial, sinops' +
        'is, foto, '
      '   idIdioma)'
      'values'
      
        '  (:isbn, :titulo, :cantPaginas, :precio, :fecha, :idEditorial, ' +
        ':sinopsis, '
      '   :foto, :idIdioma)')
    DeleteSQL.Strings = (
      'delete from Libro'
      'where'
      '  idLibro = :OLD_idLibro')
    Left = 672
    Top = 640
  end
  object qEditorial: TQuery
    DatabaseName = 'CookBook'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Editorial')
    Left = 872
    Top = 640
    object qEditorialidEditorial: TIntegerField
      FieldName = 'idEditorial'
      Origin = 'COOKBOOK.Editorial.idEditorial'
    end
    object qEditorialNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'COOKBOOK.Editorial.Nombre'
      Size = 50
    end
  end
  object qIdioma: TQuery
    DatabaseName = 'CookBook'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Idioma')
    Left = 800
    Top = 640
    object qIdiomaidIdioma: TIntegerField
      FieldName = 'idIdioma'
      Origin = 'COOKBOOK.Idioma.idIdioma'
    end
    object qIdiomadescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'COOKBOOK.Idioma.descripcion'
      Size = 50
    end
  end
  object dsEditorial: TDataSource
    DataSet = qEditorial
    Left = 872
    Top = 672
  end
  object dsIdioma: TDataSource
    DataSet = qIdioma
    Left = 800
    Top = 672
  end
  object qLibro: TQuery
    CachedUpdates = True
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'SELECT L.*, I.Descripcion AS Idioma, E.Nombre AS Editorial'
      'FROM'
      #9'Libro L'
      #9'INNER JOIN Idioma I ON (L.idIdioma = I.idIdioma)'
      #9'INNER JOIN Editorial E ON (L.idEditorial = E.idEditorial)'
      'WHERE (:Titulo = '#39#39')or(L.Titulo like '#39'%'#39' + :Titulo + '#39'%'#39')')
    UpdateObject = uLibro
    Left = 720
    Top = 640
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
  end
end
