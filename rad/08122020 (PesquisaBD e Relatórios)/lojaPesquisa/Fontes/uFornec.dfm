object frmFornec: TfrmFornec
  Left = 0
  Top = 0
  Caption = 'Fornecedor'
  ClientHeight = 298
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
  object pFornec2: TPanel
    Left = 0
    Top = 257
    Width = 290
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 168
    ExplicitWidth = 185
    object btInserir: TBitBtn
      Left = 5
      Top = 6
      Width = 45
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btInserirClick
    end
    object btEditar: TBitBtn
      Left = 56
      Top = 6
      Width = 41
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btExcluir: TBitBtn
      Left = 103
      Top = 6
      Width = 50
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btExcluirClick
    end
    object btCancelar: TBitBtn
      Left = 159
      Top = 6
      Width = 58
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
  object pFornec: TPanel
    Left = 0
    Top = 0
    Width = 290
    Height = 257
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 280
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 41
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
      Top = 88
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 211
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 148
      Top = 211
      Width = 19
      Height = 13
      Caption = 'Cep'
      FocusControl = DBEdit7
    end
    object DBText1: TDBText
      Left = 8
      Top = 27
      Width = 65
      Height = 17
      DataField = 'CDFORNECEDOR'
      DataSource = dm.dsFornec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 221
      Height = 21
      DataField = 'DCFORNECEDOR'
      DataSource = dm.dsFornec
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 104
      Width = 221
      Height = 21
      DataField = 'ENDERECO'
      DataSource = dm.dsFornec
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 144
      Width = 221
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dm.dsFornec
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 184
      Width = 221
      Height = 21
      DataField = 'CIDADE'
      DataSource = dm.dsFornec
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 224
      Width = 134
      Height = 21
      DataField = 'TELEFONE'
      DataSource = dm.dsFornec
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 148
      Top = 224
      Width = 81
      Height = 21
      DataField = 'CEP'
      DataSource = dm.dsFornec
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 133
      Top = 2
      Width = 148
      Height = 25
      DataSource = dm.dsFornec
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
    object btSair: TBitBtn
      Left = 247
      Top = 226
      Width = 34
      Height = 25
      Caption = 'Sair'
      TabOrder = 7
      OnClick = btSairClick
    end
  end
end
