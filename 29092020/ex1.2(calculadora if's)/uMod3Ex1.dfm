object Form1: TForm1
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Mod3Ex1'
  ClientHeight = 67
  ClientWidth = 134
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
    Left = 0
    Top = 54
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtVal1: TEdit
    Left = 0
    Top = 0
    Width = 73
    Height = 21
    TabOrder = 0
    Text = 'Valor 1'
  end
  object edtVal2: TEdit
    Left = 0
    Top = 27
    Width = 73
    Height = 21
    TabOrder = 1
    Text = 'Valor 2'
  end
  object btnSoma: TButton
    Left = 79
    Top = 0
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = clickBtnSoma
  end
  object btnResto: TButton
    Left = 79
    Top = 27
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = clickBtnResto
  end
  object btnMult: TButton
    Left = 109
    Top = 0
    Width = 25
    Height = 25
    Caption = 'x'
    TabOrder = 4
    OnClick = clickBtnMult
  end
  object btnDiv: TButton
    Left = 109
    Top = 27
    Width = 25
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btnDivClick
  end
end