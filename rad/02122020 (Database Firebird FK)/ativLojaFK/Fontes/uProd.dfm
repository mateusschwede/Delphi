object frmProd: TfrmProd
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 203
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pProd2: TPanel
    Left = 0
    Top = 162
    Width = 290
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 328
    ExplicitWidth = 588
    object btInserir: TBitBtn
      Left = 8
      Top = 6
      Width = 49
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btInserirClick
    end
    object btEditar: TBitBtn
      Left = 63
      Top = 6
      Width = 49
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btExcluir: TBitBtn
      Left = 118
      Top = 6
      Width = 43
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btExcluirClick
    end
    object btCancelar: TBitBtn
      Left = 167
      Top = 6
      Width = 50
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = btCancelarClick
    end
    object btConfirmar: TBitBtn
      Left = 223
      Top = 6
      Width = 58
      Height = 25
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 4
      OnClick = btConfirmarClick
    end
  end
  object pProd: TPanel
    Left = 0
    Top = 0
    Width = 290
    Height = 162
    Align = alClient
    TabOrder = 1
    ExplicitTop = 56
    ExplicitWidth = 588
    ExplicitHeight = 394
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 91
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 111
      Top = 91
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 191
      Top = 91
      Width = 32
      Height = 13
      Caption = 'M'#237'nimo'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 130
      Top = 45
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object DBText1: TDBText
      Left = 8
      Top = 27
      Width = 65
      Height = 17
      DataField = 'CDPRODUTO'
      DataSource = dm.dsProdutos
    end
    object btSair: TBitBtn
      Left = 254
      Top = 131
      Width = 27
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btSairClick
    end
    object DBNavigator1: TDBNavigator
      Left = 153
      Top = 2
      Width = 128
      Height = 25
      DataSource = dm.dsProdutos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      DataField = 'DCPRODUTO'
      DataSource = dm.dsProdutos
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 104
      Width = 97
      Height = 21
      DataField = 'VLPRODUTO'
      DataSource = dm.dsProdutos
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 111
      Top = 104
      Width = 74
      Height = 21
      DataField = 'QTESTOQUE'
      DataSource = dm.dsProdutos
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 191
      Top = 104
      Width = 90
      Height = 21
      DataField = 'QTMINIMA'
      DataSource = dm.dsProdutos
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 135
      Top = 64
      Width = 146
      Height = 21
      DataField = 'CDFORNECEDOR'
      DataSource = dm.dsProdutos
      KeyField = 'CDFORNECEDOR'
      ListField = 'DCFORNECEDOR'
      ListSource = dm.dsFornec
      TabOrder = 6
    end
  end
end
