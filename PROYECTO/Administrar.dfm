object FAdministrar: TFAdministrar
  Left = 0
  Top = 0
  Anchors = [akLeft, akRight, akBottom]
  Caption = 'FAdministrar'
  ClientHeight = 741
  ClientWidth = 1077
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
    1077
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLefter: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 741
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    object btnLibros: TSpeedButton
      Left = 16
      Top = 192
      Width = 120
      Height = 75
      Caption = 'Libros'
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 296
      Width = 120
      Height = 75
      Caption = 'Autores'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 16
      Top = 400
      Width = 120
      Height = 75
      Caption = 'Editoriales'
    end
    object SpeedButton3: TSpeedButton
      Left = 16
      Top = 504
      Width = 120
      Height = 75
      Caption = 'Idiomas'
    end
  end
end