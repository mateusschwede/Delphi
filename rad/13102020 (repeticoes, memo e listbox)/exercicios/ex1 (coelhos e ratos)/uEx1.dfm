object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 89
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = '1- Coelho'
  end
  object Label2: TLabel
    Left = 8
    Top = 27
    Width = 36
    Height = 13
    Caption = '2- Rato'
  end
  object lblTotCob: TLabel
    Left = 120
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Total cobaias:'
  end
  object lblTotCoelho: TLabel
    Left = 120
    Top = 39
    Width = 67
    Height = 13
    Caption = 'Total coelhos:'
  end
  object lblTotRato: TLabel
    Left = 120
    Top = 58
    Width = 56
    Height = 13
    Caption = 'Total ratos:'
  end
  object lblN: TLabel
    Left = 232
    Top = 8
    Width = 11
    Height = 13
    Caption = 'N:'
  end
  object btnExec: TButton
    Left = 8
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btnExecClick
  end
end