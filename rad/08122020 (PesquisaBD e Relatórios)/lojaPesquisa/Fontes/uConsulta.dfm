object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 289
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgpSelecione: TRadioGroup
    Left = 8
    Top = 8
    Width = 105
    Height = 105
    Caption = 'Selecione'
    Items.Strings = (
      'Id'
      'Nome'
      'Cidade')
    TabOrder = 0
  end
  object rgpOrdem: TRadioGroup
    Left = 8
    Top = 119
    Width = 105
    Height = 105
    Caption = 'Ordem'
    Items.Strings = (
      'Normal'
      'Ascendente'
      'Descendente')
    TabOrder = 1
  end
  object edtConsultar: TEdit
    Left = 8
    Top = 230
    Width = 105
    Height = 21
    TabOrder = 2
    Text = 'Consulta'
  end
  object btnConsultar: TBitBtn
    Left = 8
    Top = 257
    Width = 105
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
    OnClick = btnConsultarClick
  end
  object cmbTabela: TComboBox
    Left = 119
    Top = 8
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    Items.Strings = (
      'Clientes'
      'Fornecedores'
      'Produtos')
  end
  object DBGrid1: TDBGrid
    Left = 119
    Top = 35
    Width = 426
    Height = 246
    DataSource = dm.dsConsulta
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
