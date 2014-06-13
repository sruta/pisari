object FAdministrar: TFAdministrar
  Left = 0
  Top = 0
  Anchors = [akLeft, akRight, akBottom]
  Caption = 'FAdministrar'
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
  DesignSize = (
    1022
    713)
  PixelsPerInch = 96
  TextHeight = 13
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
    TabOrder = 0
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
      OnClick = btnLibrosClick
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
      OnClick = btnIdiomasClick
    end
  end
  object Panel1: TPanel
    Left = 153
    Top = 0
    Width = 869
    Height = 713
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 15390207
    ParentBackground = False
    TabOrder = 1
  end
end
