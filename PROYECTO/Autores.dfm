object FAutores: TFAutores
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'FAutores'
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
  object pnlLefter: TPanel
    Left = 0
    Top = -28
    Width = 153
    Height = 741
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 870
    Top = -28
    Width = 153
    Height = 741
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    object btnLibros: TSpeedButton
      Left = 16
      Top = 344
      Width = 120
      Height = 75
      Caption = 'Agregar'
      OnClick = btnLibrosClick
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 448
      Width = 120
      Height = 75
      Caption = 'Modificar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 16
      Top = 552
      Width = 120
      Height = 75
      Caption = 'Eliminar'
      OnClick = SpeedButton2Click
    end
  end
  object Panel2: TPanel
    Left = 152
    Top = 0
    Width = 728
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    DesignSize = (
      728
      713)
    object DBGrid1: TDBGrid
      Left = 0
      Top = 182
      Width = 727
      Height = 417
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsAutor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nombre'
          Width = 432
          Visible = True
        end>
    end
    object pnlDatosAutor: TPanel
      Left = 160
      Top = 304
      Width = 417
      Height = 209
      Anchors = []
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 40
        Top = 80
        Width = 41
        Height = 13
        Caption = 'Nombre:'
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 417
        Height = 41
        Caption = 'Nuevo Autor'
        TabOrder = 0
      end
      object dbeNombre: TDBEdit
        Left = 95
        Top = 72
        Width = 298
        Height = 25
        DataField = 'nombre'
        DataSource = dsAutor
        TabOrder = 1
      end
      object Button1: TButton
        Left = 16
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 336
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object edFiltrar: TEdit
      Left = 16
      Top = 672
      Width = 673
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 2
    end
  end
  object qAutor: TQuery
    DatabaseName = 'CookBook'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Autor')
    UpdateObject = uAutor
    Left = 168
    Top = 640
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
    Left = 216
    Top = 640
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
      '  (idAutor, nombre)'
      'values'
      '  (:idAutor, :nombre)')
    DeleteSQL.Strings = (
      'delete from Autor'
      'where'
      '  idAutor = :OLD_idAutor')
    Left = 264
    Top = 640
  end
  object qNuevoAutor: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'INSERT INTO Autor (Nombre)'
      'VALUES (:Nombre)')
    Left = 312
    Top = 640
    ParamData = <
      item
        DataType = ftString
        Name = 'Nombre'
        ParamType = ptUnknown
      end>
  end
end
