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
      Top = 192
      Width = 120
      Height = 75
      Caption = 'Agregar'
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 296
      Width = 120
      Height = 75
      Caption = 'Modificar'
    end
    object SpeedButton2: TSpeedButton
      Left = 16
      Top = 400
      Width = 120
      Height = 75
      Caption = 'Eliminar'
    end
  end
  object Panel2: TPanel
    Left = 153
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
      Top = 164
      Width = 727
      Height = 437
      Anchors = [akLeft, akRight, akBottom]
      DataSource = dsAutor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object qAutor: TQuery
    DatabaseName = 'CookBook'
    SQL.Strings = (
      'SELECT * FROM Autor')
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
end
