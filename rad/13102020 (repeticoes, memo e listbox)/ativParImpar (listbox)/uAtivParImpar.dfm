object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 378
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPos: TLabel
    Left = 89
    Top = 56
    Width = 74
    Height = 13
    Caption = 'Posi'#231#227'o do item'
  end
  object lblPop: TLabel
    Left = 327
    Top = 56
    Width = 49
    Height = 13
    Caption = 'Popula'#231#227'o'
  end
  object lstPar: TListBox
    Left = 8
    Top = 56
    Width = 75
    Height = 221
    ItemHeight = 13
    TabOrder = 0
    OnClick = lstParClick
  end
  object btnPar: TButton
    Left = 8
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Pares 0-10'
    TabOrder = 1
    OnClick = btnParClick
  end
  object lstCid: TListBox
    Left = 200
    Top = 56
    Width = 121
    Height = 221
    ItemHeight = 13
    Items.Strings = (
      'Ca'#237
      'Farroupilha'
      'Feliz')
    Sorted = True
    TabOrder = 2
    OnClick = lstCidClick
  end
  object edtCid: TEdit
    Left = 200
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Cidade'
  end
  object btnAddCid: TButton
    Left = 327
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = btnAddCidClick
  end
  object btnCarregar: TButton
    Left = 327
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 5
    OnClick = btnCarregarClick
  end
  object cmbCid: TComboBox
    Left = 200
    Top = 283
    Width = 121
    Height = 21
    Style = csDropDownList
    Sorted = True
    TabOrder = 6
  end
  object btnRemCid: TButton
    Left = 408
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 7
    OnClick = btnRemCidClick
  end
end
