object FIdiomasABM: TFIdiomasABM
  Left = 0
  Top = 0
  Caption = 'FIdiomasABM'
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
    object SpeedButton4: TSpeedButton
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
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
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
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
      OnClick = SpeedButton6Click
    end
  end
  object Panel2: TPanel
    Left = 152
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
      Left = 8
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
      Width = 714
      Height = 417
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsIdioma
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
          FieldName = 'descripcion'
          Title.Caption = 'Idioma'
          Visible = True
        end>
    end
    object pnlDatos: TPanel
      AlignWithMargins = True
      Left = 160
      Top = 304
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
        Left = 90
        Top = 87
        Width = 305
        Height = 22
        DataField = 'descripcion'
        DataSource = dsIdioma
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
      Top = 643
      Width = 510
      Height = 21
      Anchors = [akLeft]
      TabOrder = 2
      OnChange = AProcesarExecute
      OnKeyPress = dbeNombreKeyPress
    end
  end
  object pnlLefter: TPanel
    Left = 1
    Top = 0
    Width = 153
    Height = 713
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    Color = 14725088
    ParentBackground = False
    TabOrder = 2
    object shPosition: TShape
      Left = 17
      Top = 505
      Width = 137
      Height = 74
      Brush.Color = 15390207
      Pen.Style = psClear
    end
    object btnLibros: TSpeedButton
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
      OnClick = btnAutoresClick
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
    end
  end
  object ActionList1: TActionList
    Left = 168
    Top = 32
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
  object qIdioma: TQuery
    DatabaseName = 'CookBook'
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM Idioma'
      'WHERE (:Idioma = '#39#39')or(Descripcion like '#39'%'#39' + :Idioma + '#39'%'#39')')
    UpdateObject = uAutor
    Left = 216
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'Idioma'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Idioma'
        ParamType = ptUnknown
      end>
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
  object dsIdioma: TDataSource
    DataSet = qIdioma
    Left = 264
    Top = 32
  end
  object uAutor: TUpdateSQL
    ModifySQL.Strings = (
      'update Idioma'
      'set'
      '  idIdioma = :idIdioma,'
      '  descripcion = :descripcion'
      'where'
      '  idIdioma = :OLD_idIdioma')
    InsertSQL.Strings = (
      'insert into Idioma'
      '  (idIdioma, descripcion)'
      'values'
      '  (:idIdioma, :descripcion)')
    DeleteSQL.Strings = (
      'delete from Idioma'
      'where'
      '  idIdioma = :OLD_idIdioma')
    Left = 312
    Top = 32
  end
  object qNuevoIdioma: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'INSERT INTO Idioma (Descripcion)'
      'VALUES (:Descripcion)')
    Left = 360
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'Descripcion'
        ParamType = ptUnknown
      end>
  end
end
