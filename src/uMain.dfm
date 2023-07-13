object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Sistema de Gest'#227'o Bart Simpson'
  ClientHeight = 357
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmMenuPrincipal
  Position = poScreenCenter
  WindowState = wsMaximized
  DesignSize = (
    846
    357)
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 193
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'pnl1'
    TabOrder = 0
    object dbgrdUsuarios: TDBGrid
      Left = 1
      Top = 1
      Width = 844
      Height = 191
      Align = alClient
      DataSource = dsUsuarios
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object btn1: TButton
    Left = 716
    Top = 198
    Width = 129
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Abrir Consulta'
    TabOrder = 1
    OnClick = btn1Click
  end
  object dbnvgr1: TDBNavigator
    Left = 470
    Top = 198
    Width = 240
    Height = 25
    DataSource = dsUsuarios
    Anchors = [akRight, akBottom]
    TabOrder = 2
  end
  object mmMenuPrincipal: TMainMenu
    Left = 488
    Top = 16
    object mnCadastros: TMenuItem
      Caption = 'Cadastros'
      object mnUsuarios: TMenuItem
        Caption = '&Usu'#225'rios'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnClientes: TMenuItem
        Caption = '&Clientes'
      end
      object mnFornecedores: TMenuItem
        Caption = '&Fornecedores'
      end
      object mnProdutos: TMenuItem
        Caption = '&Produtos'
      end
    end
    object mnN1: TMenuItem
      Caption = '|'
    end
    object mnComercial: TMenuItem
      Caption = 'Comercial'
      object mnVenda: TMenuItem
        Caption = '&Venda'
      end
    end
    object mnN2: TMenuItem
      Caption = '|'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=/hd1/bases/empresas/BS/BASE.FDB'
      'User_Name=SYSDBA'
      'Password=19710811'
      'Server=192.168.0.151'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 584
    Top = 272
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 80
    Top = 208
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 80
    Top = 256
  end
  object qryUsuarios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 680
    Top = 272
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 680
    Top = 208
  end
end
