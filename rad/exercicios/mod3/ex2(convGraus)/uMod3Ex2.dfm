object Mod3Ex1: TMod3Ex1
  Left = 0
  Top = 0
  Caption = 'Mod3Ex1'
  ClientHeight = 68
  ClientWidth = 185
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 92
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtGraus: TEdit
    Left = 8
    Top = 8
    Width = 75
    Height = 21
    TabOrder = 0
    Text = 'Graus Celsius'
  end
  object btnConverter: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = btnConverterClick
  end
end
