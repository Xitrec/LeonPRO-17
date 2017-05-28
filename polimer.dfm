inherited fPolimer: TfPolimer
  Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1096#1090#1072#1084#1087#1099
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlНижняя_Панель: TPanel
    ExplicitTop = 316
    ExplicitWidth = 784
    inherited btnОтмена: TButton
      ExplicitLeft = 699
    end
    inherited btnСохранить: TButton
      ExplicitLeft = 618
    end
    object edtWID: TDBEditEh
      AlignWithMargins = True
      Left = 42
      Top = 12
      Width = 41
      Height = 21
      Margins.Left = 35
      Margins.Top = 5
      Margins.Bottom = 5
      ControlLabel.Width = 22
      ControlLabel.Height = 13
      ControlLabel.Caption = 'WID'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alLeft
      DataField = 'W-ID'
      DataSource = ds_Полимер
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
  end
  inherited pnlОсновная_Панель: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 524
    ExplicitHeight = 316
    inherited pnlTop: TPanel
      ExplicitWidth = 524
      inherited lbl_Название: TLabel
        Width = 164
        Height = 32
        Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1064#1090#1072#1084#1087#1099
        ExplicitWidth = 164
      end
    end
    inherited pnlRight: TPanel
      ExplicitLeft = 299
      ExplicitTop = 81
      ExplicitHeight = 235
      object lbl3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 219
        Height = 17
        Margins.Bottom = 10
        Align = alTop
        Alignment = taCenter
        Caption = #1054#1073#1097#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 114
      end
      object edtКоличество: TDBNumberEditEh
        AlignWithMargins = True
        Left = 100
        Top = 33
        Width = 115
        Height = 21
        Margins.Left = 100
        Margins.Right = 10
        ControlLabel.Width = 65
        ControlLabel.Height = 13
        ControlLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 8
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        DataSource = ds_Полимер
        DynProps = <>
        EditButtons = <
          item
            Style = ebsAltUpDownEh
          end>
        MinValue = 1.000000000000000000
        TabOrder = 0
        Visible = True
        OnChange = Расчёт
      end
    end
    inherited pnlCenter: TPanel
      ExplicitLeft = 0
      ExplicitTop = 81
      ExplicitWidth = 299
      ExplicitHeight = 235
      object lbl2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 293
        Height = 17
        Margins.Bottom = 10
        Align = alTop
        Alignment = taCenter
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1079#1072#1082#1072#1079#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 175
      end
      object Клише: TDBLookupComboboxEh
        AlignWithMargins = True
        Left = 100
        Top = 33
        Width = 194
        Height = 21
        Margins.Left = 100
        Margins.Right = 5
        ControlLabel.Width = 37
        ControlLabel.Height = 13
        ControlLabel.Caption = #1050#1083#1080#1096#1077':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 8
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        DataField = #1050#1083#1080#1096#1077
        DataSource = ds_Полимер
        EditButtons = <>
        KeyField = 'ID'
        ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        ListSource = ds_Клише
        TabOrder = 0
        Visible = True
        OnChange = Расчёт
      end
      object Оснастка: TDBLookupComboboxEh
        AlignWithMargins = True
        Left = 100
        Top = 60
        Width = 194
        Height = 21
        Margins.Left = 100
        Margins.Right = 5
        ControlLabel.Width = 52
        ControlLabel.Height = 13
        ControlLabel.Caption = #1054#1089#1085#1072#1089#1090#1082#1072':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 8
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        DataField = #1054#1089#1085#1072#1089#1090#1082#1072
        DataSource = ds_Полимер
        EditButtons = <>
        KeyField = 'ID'
        ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        ListSource = ds_Оснастка
        TabOrder = 1
        Visible = True
        OnChange = Расчёт
      end
      object edtТекст: TDBEditEh
        AlignWithMargins = True
        Left = 100
        Top = 94
        Width = 194
        Height = 21
        Margins.Left = 100
        Margins.Top = 10
        Margins.Right = 5
        ControlLabel.Width = 30
        ControlLabel.Height = 13
        ControlLabel.Caption = #1058#1077#1082#1089#1090':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 8
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DataField = #1058#1077#1082#1089#1090
        DataSource = ds_Полимер
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
    end
  end
  inherited pnlБоковая_Панель: TPanel
    ExplicitLeft = 524
    ExplicitHeight = 296
    inherited lbl1: TLabel
      Width = 240
    end
    inherited edtСтоимость: TDBNumberEditEh
      Top = 190
      Margins.Bottom = 10
      ControlLabel.ExplicitTop = 193
      DataSource = ds_Полимер
      OnChange = Расчёт
      ExplicitTop = 190
    end
    inherited edtИтог: TDBNumberEditEh
      Top = 251
      Margins.Bottom = 20
      ControlLabel.ExplicitLeft = 0
      ControlLabel.ExplicitTop = 254
      ControlLabel.ExplicitWidth = 3
      Color = 16121844
      DataField = #1048#1090#1086#1075
      DataSource = ds_Полимер
      OnClick = edtИтогClick
      ExplicitTop = 251
    end
    inherited edtКоррекция: TDBNumberEditEh
      Top = 224
      ControlLabel.ExplicitTop = 227
      DataField = #1050#1086#1088#1088#1077#1082#1094#1080#1103
      DataSource = ds_Полимер
      ReadOnly = False
      OnChange = Расчёт
      ExplicitTop = 224
    end
  end
  object FDQОснастки: TFDQuery
    Connection = dmServer.Connection
    Left = 568
    Top = 48
  end
  object ds_Оснастка: TDataSource
    DataSet = FDQОснастки
    Left = 648
    Top = 48
  end
  object ds_Клише: TDataSource
    DataSet = FDQКлише
    Left = 648
    Top = 96
  end
  object FDQКлише: TFDQuery
    Connection = dmServer.Connection
    Left = 568
    Top = 96
  end
  object FDQПолимер: TFDQuery
    Connection = dmServer.Connection
    SQL.Strings = (
      'SELECT * FROM `'#1055#1086#1083#1080#1084#1077#1088'`')
    Left = 568
    Top = 144
    object FDQПолимерWID: TFDAutoIncField
      FieldName = 'W-ID'
      Origin = '`W-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQПолимерОснастка: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1054#1089#1085#1072#1089#1090#1082#1072
      Origin = '`'#1054#1089#1085#1072#1089#1090#1082#1072'`'
    end
    object FDQПолимерКлише: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1050#1083#1080#1096#1077
      Origin = '`'#1050#1083#1080#1096#1077'`'
    end
    object FDQПолимерТекст: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1058#1077#1082#1089#1090
      Origin = '`'#1058#1077#1082#1089#1090'`'
      FixedChar = True
      Size = 25
    end
    object FDQПолимерКоличество: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Origin = '`'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'`'
      DisplayFormat = '#,##0 "'#1096#1090'."'
    end
    object FDQПолимерСтоимость: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Origin = '`'#1057#1090#1086#1080#1084#1086#1089#1090#1100'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object FDQПолимерКоррекция: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1050#1086#1088#1088#1077#1082#1094#1080#1103
      Origin = '`'#1050#1086#1088#1088#1077#1082#1094#1080#1103'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object FDQПолимерИтог: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1048#1090#1086#1075
      Origin = '`'#1048#1090#1086#1075'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
  end
  object ds_Полимер: TDataSource
    DataSet = FDQПолимер
    Left = 648
    Top = 144
  end
end
