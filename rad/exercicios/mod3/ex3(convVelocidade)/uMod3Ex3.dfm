object Mod3Ex3: TMod3Ex3
  Left = 0
  Top = 0
  Caption = 'Mod3Ex3'
  ClientHeight = 74
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblRes: TLabel
    Left = 112
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtVelocidade: TEdit
    Left = 8
    Top = 8
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'Velocidade'
  end
  object btnMs: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'km/h -> m/s'
    TabOrder = 1
    OnClick = btnMsClick
  end
  object btnKmh: TButton
    Left = 89
    Top = 35
    Width = 75
    Height = 25
    Caption = 'm/s -> km/h'
    TabOrder = 2
    OnClick = btnKmhClick
  end
end
