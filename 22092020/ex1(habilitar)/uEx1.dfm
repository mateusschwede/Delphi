object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 80
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 0
    Top = 0
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object btnHabilita: TButton
    Left = 0
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Habilita'
    TabOrder = 0
    OnClick = clickBtnHabilita
  end
  object btnDesabilita: TButton
    Left = 0
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Desabilita'
    TabOrder = 1
    OnClick = clickBtnDesabilita
  end
end