object dmServer: TdmServer
  OldCreateOrder = False
  Height = 718
  Width = 825
  object Connection: TFDConnection
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    AfterConnect = ИндикацияПодключения
    AfterDisconnect = ИндикацияПодключения
    Left = 50
    Top = 50
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrDefault
    Left = 158
    Top = 50
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'libmysql.dll'
    Left = 282
    Top = 50
  end
  object FDQЗаказы: TFDQuery
    Connection = Connection
    Left = 48
    Top = 168
  end
  object FDQСостав: TFDQuery
    IndexFieldNames = 'Z-ID'
    MasterSource = dsЗаказы
    MasterFields = 'Z-ID'
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM `'#1057#1086#1089#1090#1072#1074'`')
    Left = 48
    Top = 240
  end
  object dsЗаказы: TDataSource
    DataSet = FDQЗаказы
    Left = 152
    Top = 168
  end
  object dsСостав: TDataSource
    DataSet = FDQСостав
    Left = 152
    Top = 240
  end
  object tmrPing: TTimer
    Enabled = False
    Interval = 0
    OnTimer = tmrPingTimer
    Left = 50
    Top = 322
  end
  object FDQЗапросы: TFDQuery
    Connection = Connection
    Left = 56
    Top = 456
  end
  object dsЗапросы: TDataSource
    DataSet = FDQЗапросы
    Left = 152
    Top = 456
  end
  object FDQКлиентФИО: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'SELECT CONCAT_WS(" ", `'#1060#1072#1084#1080#1083#1080#1103'`, `'#1048#1084#1103'`,`'#1054#1090#1095#1077#1089#1090#1074#1086'`) as `'#1060#1048#1054'`, `C-' +
        'ID` FROM `'#1050#1083#1080#1077#1085#1090#1099'`')
    Left = 472
    Top = 168
    object wdstrngfldFDКлиентФИОФИО: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1060#1048#1054
      Origin = '`'#1060#1048#1054'`'
      ProviderFlags = []
      ReadOnly = True
      Size = 62
    end
    object fdtncfldFDКлиентФИОCID: TFDAutoIncField
      FieldName = 'C-ID'
      Origin = '`C-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object FDQМенеджерФИО: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'SELECT CONCAT_WS(" ", `'#1060#1072#1084#1080#1083#1080#1103'`, `'#1048#1084#1103'`,`'#1054#1090#1095#1077#1089#1090#1074#1086'`) as `'#1060#1048#1054'`, `M-' +
        'ID` FROM `'#1052#1077#1085#1077#1076#1078#1077#1088#1099'`')
    Left = 472
    Top = 240
    object wdstrngfld1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1060#1048#1054
      Origin = '`'#1060#1048#1054'`'
      ProviderFlags = []
      ReadOnly = True
      Size = 62
    end
    object fdtncfldFDМенеджерФИОMID: TFDAutoIncField
      FieldName = 'M-ID'
      Origin = '`M-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object FDQСтатусы: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM `'#1057#1090#1072#1090#1091#1089#1099'`')
    Left = 472
    Top = 320
  end
  object dsСтатусы: TDataSource
    DataSet = FDQСтатусы
    Left = 552
    Top = 320
  end
  object FDQРаботы: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM `'#1056#1072#1073#1086#1090#1099'`')
    Left = 472
    Top = 392
  end
end
