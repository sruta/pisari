inherited FMDIGenerico: TFMDIGenerico
  Caption = 'FMDIGenerico'
  ClientHeight = 713
  ClientWidth = 1022
  ExplicitWidth = 1038
  ExplicitHeight = 751
  DesignSize = (
    1022
    713)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 153
    Top = 0
    Width = 869
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 15390207
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      869
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
    object Panel2: TPanel
      Left = 716
      Top = -28
      Width = 153
      Height = 741
      Anchors = [akTop, akRight, akBottom]
      BevelOuter = bvNone
      Color = 15390207
      ParentBackground = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
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
      object SpeedButton2: TSpeedButton
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
      object SpeedButton3: TSpeedButton
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
    object DBGrid1: TDBGrid
      Left = 8
      Top = 182
      Width = 714
      Height = 417
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'descripcion'
          Title.Caption = 'Idioma'
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
    object pnlDatos: TPanel
      AlignWithMargins = True
      Left = 160
      Top = 304
      Width = 417
      Height = 209
      Anchors = []
      Color = 15390207
      ParentBackground = False
      TabOrder = 3
      Visible = False
      DesignSize = (
        417
        209)
      object Label1: TLabel
        Left = 26
        Top = 88
        Width = 96
        Height = 18
        Caption = 'Descripci'#243'n:'
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
      object dbeDescripcion: TDBEdit
        Left = 128
        Top = 87
        Width = 267
        Height = 22
        DataField = 'descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
      end
    end
  end
  object pnlLefter: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 713
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    Color = 14725088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
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
    end
    object AModificar: TAction
      Caption = 'Modificar'
    end
  end
  object qDatos: TQuery
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
    object qDatosidIdioma: TIntegerField
      FieldName = 'idIdioma'
      Origin = 'COOKBOOK.Idioma.idIdioma'
    end
    object qDatosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'COOKBOOK.Idioma.descripcion'
      Size = 50
    end
  end
  object dsDatos: TDataSource
    DataSet = qDatos
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
