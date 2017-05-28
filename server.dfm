object dmServer: TdmServer
  OldCreateOrder = False
  Height = 718
  Width = 825
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=mySQL'
      'Database=q36643w1_lp2'
      'Password=trv35e'
      'Server=q36643w1.beget.tech'
      'User_Name=q36643w1_lp2'
      'CharacterSet=utf8')
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
    SQL.Strings = (
      'SELECT * FROM `'#1047#1072#1082#1072#1079#1099'`')
    Left = 48
    Top = 168
    object intgrfldFDQЗаказыНомер: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayWidth = 4
      FieldName = #1053#1086#1084#1077#1088
      Origin = '`'#1053#1086#1084#1077#1088'`'
    end
    object strngfldFDQЗаказыСтатус: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = #1057#1090#1072#1090#1091#1089
      LookupDataSet = FDQСтатусы
      LookupKeyFields = 'ID'
      LookupResultField = #1057#1090#1072#1090#1091#1089
      KeyFields = 'A-ID'
      Lookup = True
    end
    object wdstrngfldFDQЗаказыНазвание: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Origin = '`'#1053#1072#1079#1074#1072#1085#1080#1077'`'
      FixedChar = True
      Size = 25
    end
    object strngfldFDQЗаказыКлиент: TStringField
      FieldKind = fkLookup
      FieldName = #1050#1083#1080#1077#1085#1090
      LookupDataSet = FDQКлиентФИО
      LookupKeyFields = 'C-ID'
      LookupResultField = #1060#1048#1054
      KeyFields = 'C-ID'
      Lookup = True
    end
    object fdtncfldFDQЗаказыZID: TFDAutoIncField
      FieldName = 'Z-ID'
      Origin = '`Z-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object intgrfldFDQЗаказыCID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'C-ID'
      Origin = '`C-ID`'
      Visible = False
    end
    object intgrfldFDQЗаказыMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'M-ID'
      Origin = '`M-ID`'
      Visible = False
    end
    object intgrfldFDQЗаказыAID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'A-ID'
      Origin = '`A-ID`'
      Visible = False
    end
    object dtfldFDQЗаказыСоздан: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = #1057#1086#1079#1076#1072#1085
      Origin = '`'#1057#1086#1079#1076#1072#1085'`'
    end
    object dtfldFDQЗаказыМакет: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = #1052#1072#1082#1077#1090
      Origin = '`'#1052#1072#1082#1077#1090'`'
    end
    object dtfldFDQЗаказыГотовность: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      Origin = '`'#1043#1086#1090#1086#1074#1085#1086#1089#1090#1100'`'
    end
    object blnfldFDQЗаказыБлокировка: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
      Origin = '`'#1041#1083#1086#1082#1080#1088#1086#1074#1082#1072'`'
    end
    object intgrfldFDQЗаказыСтоимость: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Origin = '`'#1057#1090#1086#1080#1084#1086#1089#1090#1100'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object intgrfldFDQЗаказыАванс: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1040#1074#1072#1085#1089
      Origin = '`'#1040#1074#1072#1085#1089'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object intgrfldFDQЗаказыДоплата: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1044#1086#1087#1083#1072#1090#1072
      Origin = '`'#1044#1086#1087#1083#1072#1090#1072'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object dtmfldFDQЗаказыUpdate: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'Update'
      Origin = '`Update`'
      Visible = False
    end
    object wdmfldFDQЗаказыЗаметка: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = #1047#1072#1084#1077#1090#1082#1072
      Origin = '`'#1047#1072#1084#1077#1090#1082#1072'`'
      Visible = False
      BlobType = ftWideMemo
    end
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
    object strngfldFDQСоставНаименование: TStringField
      FieldKind = fkLookup
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      LookupDataSet = FDQРаботы
      LookupKeyFields = 'V-ID'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = 'V-ID'
      Lookup = True
    end
    object wdstrngfldFDQСоставПараметры: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 80
      FieldName = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Origin = '`'#1055#1072#1088#1072#1084#1077#1090#1088#1099'`'
      FixedChar = True
      Size = 200
    end
    object fdtncfldFDQСоставSID: TFDAutoIncField
      FieldName = 'S-ID'
      Origin = '`S-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object intgrfldFDQСоставZID: TIntegerField
      FieldName = 'Z-ID'
      Origin = '`Z-ID`'
      Required = True
      Visible = False
    end
    object intgrfldFDQСоставWID: TIntegerField
      FieldName = 'W-ID'
      Origin = '`W-ID`'
      Required = True
      Visible = False
    end
    object intgrfldFDQСоставVID: TIntegerField
      FieldName = 'V-ID'
      Origin = '`V-ID`'
      Required = True
      Visible = False
    end
    object wdstrngfldFDQСоставОписание: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '`'#1054#1087#1080#1089#1072#1085#1080#1077'`'
      FixedChar = True
      Size = 25
    end
    object intgrfldFDQСоставКоличество: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Origin = '`'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'`'
      Required = True
      DisplayFormat = '#,##0 "'#1096#1090'."'
    end
    object intgrfldFDQСоставСтоимость: TIntegerField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Origin = '`'#1057#1090#1086#1080#1084#1086#1089#1090#1100'`'
      Required = True
      DisplayFormat = '#,##0 "'#8381'"'
    end
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
  object FDQСпособ_Оплаты: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM `'#1057#1087#1086#1089#1086#1073'_'#1054#1087#1083#1072#1090#1099'`')
    Left = 472
    Top = 472
  end
  object dsСпособ_Оплаты: TDataSource
    DataSet = FDQСпособ_Оплаты
    Left = 592
    Top = 472
  end
end
