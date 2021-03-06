object FAutores: TFAutores
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'FAutores'
  ClientHeight = 773
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    1022
    773)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 870
    Top = -28
    Width = 153
    Height = 801
    Anchors = [akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 15390207
    ParentBackground = False
    TabOrder = 0
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
    Left = 152
    Top = 0
    Width = 728
    Height = 773
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 15390207
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      728
      773)
    object lbFiltro: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 698
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
      ExplicitTop = 644
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 182
      Width = 714
      Height = 477
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsAutor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nombre'
          Title.Caption = 'Autor'
          Visible = True
        end>
    end
    object pnlDatos: TPanel
      AlignWithMargins = True
      Left = 160
      Top = 337
      Width = 417
      Height = 209
      Anchors = []
      Color = 15390207
      ParentBackground = False
      TabOrder = 1
      Visible = False
      DesignSize = (
        417
        209)
      object Label1: TLabel
        Left = 26
        Top = 88
        Width = 65
        Height = 18
        Caption = 'Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -16
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
      end
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 417
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
      object dbeNombre: TDBEdit
        Left = 97
        Top = 87
        Width = 298
        Height = 22
        DataField = 'nombre'
        DataSource = dsAutor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbeNombreKeyPress
      end
      object Button1: TButton
        Left = 16
        Top = 168
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
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 336
        Top = 168
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
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object edFiltrar: TEdit
      AlignWithMargins = True
      Left = 52
      Top = 697
      Width = 510
      Height = 21
      Anchors = [akLeft]
      TabOrder = 2
      OnChange = edFiltrarChange
      OnKeyPress = dbeNombreKeyPress
    end
  end
  object pnlLefter: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 773
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    Color = 14725088
    ParentBackground = False
    TabOrder = 2
    object shPosition: TShape
      Left = 17
      Top = 297
      Width = 137
      Height = 74
      Brush.Color = 15390207
      Pen.Style = psClear
    end
    object SpeedButton3: TSpeedButton
      Left = 16
      Top = 192
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
      Top = 296
      Width = 120
      Height = 75
      Caption = 'Autores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnEditoriales: TSpeedButton
      Left = 16
      Top = 400
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
      Top = 504
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
  object qAutor: TQuery
    DatabaseName = 'CookBook'
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM Autor'
      'WHERE (:Autor = '#39#39')or(Nombre like '#39'%'#39' + :Autor + '#39'%'#39')')
    UpdateObject = uAutor
    Left = 208
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Autor'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Autor'
        ParamType = ptUnknown
      end>
    object qAutoridAutor: TIntegerField
      FieldName = 'idAutor'
      Origin = 'COOKBOOK.Autor.idAutor'
    end
    object qAutornombre: TStringField
      FieldName = 'nombre'
      Origin = 'COOKBOOK.Autor.nombre'
      Size = 50
    end
  end
  object dsAutor: TDataSource
    DataSet = qAutor
    Left = 256
    Top = 16
  end
  object uAutor: TUpdateSQL
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
    Left = 304
    Top = 16
  end
  object qNuevoAutor: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'INSERT INTO Autor (Nombre)'
      'VALUES (:Nombre)')
    Left = 368
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'Nombre'
        ParamType = ptUnknown
      end>
  end
  object ActionList1: TActionList
    Left = 160
    Top = 16
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
  object MainMenu1: TMainMenu
    Left = 392
    Top = 640
  end
end
