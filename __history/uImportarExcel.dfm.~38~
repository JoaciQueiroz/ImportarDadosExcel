object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Importar dados de excel'
  ClientHeight = 523
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stgImportExcel: TStringGrid
    Left = 8
    Top = 96
    Width = 385
    Height = 375
    TabOrder = 0
  end
  object btnImportarArq: TButton
    Left = 8
    Top = 487
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = btnImportarArqClick
  end
  object dbgGravaBanco: TDBGrid
    Left = 399
    Top = 8
    Width = 533
    Height = 249
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnEnviaBanco: TButton
    Left = 280
    Top = 490
    Width = 113
    Height = 25
    Caption = 'Gravar no Banco'
    TabOrder = 3
    OnClick = btnEnviaBancoClick
  end
  object pgrProgresso: TProgressBar
    Left = 399
    Top = 488
    Width = 533
    Height = 27
    TabOrder = 4
  end
  object dbgBanco: TDBGrid
    Left = 399
    Top = 263
    Width = 533
    Height = 208
    DataSource = dtsProdutorers
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSelecionar: TButton
    Left = 104
    Top = 489
    Width = 153
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 6
    OnClick = btnSelecionarClick
  end
  object pnlSelecionar: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 81
    BevelOuter = bvNone
    TabOrder = 7
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 393
      Height = 81
      Align = alClient
      Caption = 'Escolher dados para importar'
      TabOrder = 0
      object rdbEstado: TRadioButton
        Left = 16
        Top = 27
        Width = 113
        Height = 17
        Caption = 'Estado'
        TabOrder = 0
        OnClick = rdbEstadoClick
      end
      object rdbMunicipio: TRadioButton
        Left = 16
        Top = 50
        Width = 113
        Height = 17
        Caption = 'Municipio'
        TabOrder = 1
        OnClick = rdbMunicipioClick
      end
      object rdbProdutor: TRadioButton
        Left = 200
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Produtor'
        TabOrder = 2
        OnClick = rdbProdutorClick
      end
    end
  end
  object ImportExcel: TImportExcel
    Left = 184
    Top = 168
  end
  object oplBuscaAqu: TOpenDialog
    Left = 296
    Top = 8
  end
  object qrydadosexcel: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select'
      ' p.idprodutor,'
      ' p.produtor,'
      ' p.cpf,'
      ' p.area_ha,'
      ' p.endereco,'
      ' p.municipio'
      ''
      'from tbl_produtor p'
      ''
      'order by p.produtor ')
    Left = 432
    Top = 32
    object qrydadosexcelIDPRODUTOR: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPRODUTOR'
      Origin = 'IDPRODUTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrydadosexcelPRODUTOR: TWideStringField
      FieldName = 'PRODUTOR'
      Origin = 'PRODUTOR'
      Size = 200
    end
    object qrydadosexcelCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 16
    end
    object qrydadosexcelAREA_HA: TIntegerField
      FieldName = 'AREA_HA'
      Origin = 'AREA_HA'
    end
    object qrydadosexcelENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object qrydadosexcelMUNICIPIO: TWideStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 150
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\ImportaExcel\BIN\Banco\BANCOIMPORTA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3060'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 456
    Top = 472
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 616
    Top = 472
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 536
    Top = 472
  end
  object dtsProdutorers: TDataSource
    DataSet = qrydadosexcel
    Left = 432
    Top = 88
  end
  object qryEstado: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select'
      ' e.idest,'
      ' e.cod_uf,'
      ' e.estado'
      'from tblestado e'
      ''
      'order by e.estado')
    Left = 64
    Top = 280
    object qryEstadoIDEST: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEST'
      Origin = 'IDEST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstadoCOD_UF: TIntegerField
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
    end
    object qryEstadoESTADO: TWideStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 120
    end
  end
  object dtsEstado: TDataSource
    DataSet = qryEstado
    Left = 144
    Top = 280
  end
  object dtsMunicipio: TDataSource
    DataSet = qryMunicpio
    Left = 144
    Top = 352
  end
  object qryMunicpio: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select'
      '  m.idmunc,'
      '  m.cod_uf,'
      '  m.cod_ibge,'
      '  m.municipio,'
      '  m.uf'
      'from tblmunicipio m'
      ''
      'order by m.cod_uf, m.municipio')
    Left = 64
    Top = 376
    object qryMunicpioIDMUNC: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDMUNC'
      Origin = 'IDMUNC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMunicpioCOD_UF: TIntegerField
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
    end
    object qryMunicpioCOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
    end
    object qryMunicpioMUNICIPIO: TWideStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 250
    end
    object qryMunicpioUF: TWideStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
end
