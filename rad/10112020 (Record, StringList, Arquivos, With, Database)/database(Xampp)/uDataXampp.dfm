object dataXampp: TdataXampp
  Left = 0
  Top = 0
  Caption = 'dataXampp'
  ClientHeight = 239
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 144
    Top = 39
    Width = 240
    Height = 186
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 56
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\xampp\mysql\bin\libmysql.dll'
    Left = 56
    Top = 72
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'agenda.pessoa'
    TableName = 'agenda.pessoa'
    Left = 56
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 56
    Top = 184
  end
end
