object fOrder: TfOrder
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079
  ClientHeight = 580
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object pnlНижняя_Панель: TPanel
    Left = 0
    Top = 535
    Width = 957
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 15460070
    Padding.Left = 7
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object btnОтмена: TButton
      AlignWithMargins = True
      Left = 872
      Top = 10
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
    object btnСохранить: TButton
      AlignWithMargins = True
      Left = 791
      Top = 10
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
    end
    object chkБлокировка: TDBCheckBoxEh
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 97
      Height = 25
      Align = alLeft
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
      DataField = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
      DataSource = ds_Заказ
      DynProps = <>
      ReadOnly = True
      TabOrder = 2
    end
    object edtAID: TDBEditEh
      AlignWithMargins = True
      Left = 224
      Top = 12
      Width = 41
      Height = 21
      Margins.Left = 35
      Margins.Top = 5
      Margins.Bottom = 5
      ControlLabel.Width = 18
      ControlLabel.Height = 13
      ControlLabel.Caption = 'AID'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alLeft
      DataField = 'A-ID'
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object edtMID: TDBEditEh
      AlignWithMargins = True
      Left = 303
      Top = 12
      Width = 41
      Height = 21
      Margins.Left = 35
      Margins.Top = 5
      Margins.Bottom = 5
      ControlLabel.Width = 21
      ControlLabel.Height = 13
      ControlLabel.Caption = 'MID'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alLeft
      DataField = 'M-ID'
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Visible = True
    end
    object edtCID: TDBEditEh
      AlignWithMargins = True
      Left = 145
      Top = 12
      Width = 41
      Height = 21
      Margins.Left = 35
      Margins.Top = 5
      Margins.Bottom = 5
      ControlLabel.Width = 18
      ControlLabel.Height = 13
      ControlLabel.Caption = 'CID'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alLeft
      DataField = 'C-ID'
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      TabOrder = 5
      Visible = True
    end
    object edtWID: TDBEditEh
      AlignWithMargins = True
      Left = 461
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
      DataSource = ds_Состав
      DynProps = <>
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
    object edtVID: TDBEditEh
      AlignWithMargins = True
      Left = 382
      Top = 12
      Width = 41
      Height = 21
      Margins.Left = 35
      Margins.Top = 5
      Margins.Bottom = 5
      ControlLabel.Width = 18
      ControlLabel.Height = 13
      ControlLabel.Caption = 'VID'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alLeft
      DataField = 'V-ID'
      DataSource = ds_Состав
      DynProps = <>
      EditButtons = <>
      TabOrder = 7
      Visible = True
    end
  end
  object pnlОсновная_Панель: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 535
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl'#1054#1089#1085#1086#1074#1085#1072#1103'_'#1055#1072#1085#1077#1083#1100
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    object DBGridEh3: TDBGridEh
      AlignWithMargins = True
      Left = 10
      Top = 177
      Width = 677
      Height = 348
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_Состав
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmСоставPopup
      ReadOnly = True
      TabOrder = 0
      OnDblClick = Изменить
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnlВерхняя_Панель: TPanel
      Left = 0
      Top = 0
      Width = 697
      Height = 177
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      DoubleBuffered = True
      ParentColor = True
      ParentDoubleBuffered = False
      ShowCaption = False
      TabOrder = 1
      object pnlДоп_Панель: TPanel
        Left = 0
        Top = 80
        Width = 697
        Height = 97
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnl'#1044#1086#1087'_'#1055#1072#1085#1077#1083#1100
        Padding.Left = 10
        Padding.Right = 10
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        object pnlДаты_Панель: TPanel
          Left = 10
          Top = 0
          Width = 289
          Height = 97
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          Caption = 'pnl'#1044#1072#1090#1099'_'#1055#1072#1085#1077#1083#1100
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object edtДатаСоздания: TDBDateTimeEditEh
            AlignWithMargins = True
            Left = 160
            Top = 5
            Width = 124
            Height = 21
            Margins.Left = 160
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ControlLabel.Width = 117
            ControlLabel.Height = 13
            ControlLabel.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1079#1072#1082#1072#1079#1072':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1057#1086#1079#1076#1072#1085
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 0
            Visible = True
          end
          object edtДатаМакета: TDBDateTimeEditEh
            AlignWithMargins = True
            Left = 160
            Top = 36
            Width = 124
            Height = 21
            Margins.Left = 160
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ControlLabel.Width = 145
            ControlLabel.Height = 13
            ControlLabel.Caption = #1044#1072#1090#1072' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1103' '#1084#1072#1082#1077#1090#1072':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1052#1072#1082#1077#1090
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 1
            Visible = True
          end
          object edtДатаИзготовления: TDBDateTimeEditEh
            AlignWithMargins = True
            Left = 160
            Top = 67
            Width = 124
            Height = 21
            Margins.Left = 160
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ControlLabel.Width = 105
            ControlLabel.Height = 13
            ControlLabel.Caption = #1044#1072#1090#1072' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1103':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 2
            Visible = True
          end
        end
        object pnlНазвание_Панель: TPanel
          Left = 299
          Top = 0
          Width = 388
          Height = 97
          Align = alClient
          AutoSize = True
          BevelOuter = bvNone
          Caption = 'pnl'#1053#1072#1079#1074#1072#1085#1080#1077'_'#1055#1072#1085#1077#1083#1100
          ParentColor = True
          ShowCaption = False
          TabOrder = 1
          object edtНазвание: TDBEditEh
            AlignWithMargins = True
            Left = 80
            Top = 5
            Width = 308
            Height = 21
            Margins.Left = 80
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            ControlLabel.Width = 54
            ControlLabel.Height = 13
            ControlLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1053#1072#1079#1074#1072#1085#1080#1077
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            ParentShowHint = False
            TabOrder = 0
            Visible = True
          end
          object edtКлиент: TDBEditEh
            AlignWithMargins = True
            Left = 80
            Top = 36
            Width = 308
            Height = 21
            Margins.Left = 80
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            ControlLabel.Width = 40
            ControlLabel.Height = 13
            ControlLabel.Caption = #1050#1083#1080#1077#1085#1090':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1050#1083#1080#1077#1085#1090
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 1
            Visible = True
            OnClick = edtКлиентClick
          end
          object edtМенеджер: TDBEditEh
            AlignWithMargins = True
            Left = 80
            Top = 67
            Width = 308
            Height = 21
            Margins.Left = 80
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            ControlLabel.Width = 60
            ControlLabel.Height = 13
            ControlLabel.Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alTop
            DataField = #1052#1077#1085#1077#1076#1078#1077#1088
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <
              item
                Style = ebsEllipsisEh
                Visible = False
              end>
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 2
            Visible = True
          end
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 697
        Height = 80
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnl1'
        ShowCaption = False
        TabOrder = 1
        object bvl1: TBevel
          AlignWithMargins = True
          Left = 10
          Top = 67
          Width = 677
          Height = 10
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Align = alBottom
          Shape = bsTopLine
          ExplicitLeft = -133
          ExplicitTop = 66
          ExplicitWidth = 606
        end
        object pnl2: TPanel
          Left = 0
          Top = 0
          Width = 299
          Height = 67
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'pnl2'
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object lblL_НарядЗаказ: TLabel
            AlignWithMargins = True
            Left = 15
            Top = 23
            Width = 112
            Height = 31
            Margins.Left = 15
            Margins.Top = 23
            Margins.Bottom = 13
            Align = alLeft
            Caption = #1053#1072#1088#1103#1076' '#1079#1072#1082#1072#1079
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 30
          end
          object edtUpdate: TDBEditEh
            AlignWithMargins = True
            Left = 175
            Top = 33
            Width = 121
            Height = 21
            Margins.Left = 45
            Margins.Top = 33
            Margins.Bottom = 13
            ControlLabel.Caption = #1048#1079#1084#1077#1085#1077#1085':'
            ControlLabelLocation.Spacing = 0
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            DataField = 'Update'
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            ParentColor = True
            ReadOnly = True
            TabOrder = 0
            Visible = True
          end
        end
        object pnl3: TPanel
          Left = 299
          Top = 0
          Width = 398
          Height = 67
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnl3'
          ParentColor = True
          ShowCaption = False
          TabOrder = 1
          object edtНомер: TDBEditEh
            AlignWithMargins = True
            Left = 151
            Top = 33
            Width = 83
            Height = 21
            Margins.Left = 80
            Margins.Top = 33
            Margins.Bottom = 13
            ControlLabel.Width = 44
            ControlLabel.Height = 13
            ControlLabel.Caption = #1047#1072#1082#1072#1079' '#8470
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alRight
            DataField = #1053#1086#1084#1077#1088
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 0
            Visible = True
          end
          object edtZID: TDBEditEh
            AlignWithMargins = True
            Left = 287
            Top = 33
            Width = 101
            Height = 21
            Margins.Left = 50
            Margins.Top = 33
            Margins.Right = 10
            Margins.Bottom = 13
            ControlLabel.Width = 24
            ControlLabel.Height = 13
            ControlLabel.Caption = 'Z-ID:'
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 8
            ControlLabelLocation.Offset = -1
            ControlLabelLocation.Position = lpLeftCenterEh
            Align = alRight
            DataField = 'Z-ID'
            DataSource = ds_Заказ
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 1
            Visible = True
          end
        end
      end
    end
  end
  object pnlБоковая_Панель: TPanel
    AlignWithMargins = True
    Left = 697
    Top = 10
    Width = 250
    Height = 515
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alRight
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'pnl'#1041#1086#1082#1086#1074#1072#1103'_'#1055#1072#1085#1077#1083#1100
    Color = 16185078
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 10
      Width = 240
      Height = 13
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1079#1072#1082#1072#1079#1077
      ExplicitWidth = 119
    end
    object cbbAID: TDBLookupComboboxEh
      AlignWithMargins = True
      Left = 120
      Top = 251
      Width = 106
      Height = 21
      Margins.Left = 120
      Margins.Top = 20
      Margins.Right = 20
      ControlLabel.Width = 36
      ControlLabel.Height = 13
      ControlLabel.Caption = #1057#1090#1072#1090#1091#1089':'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alTop
      DynProps = <>
      DataField = 'A-ID'
      DataSource = ds_Заказ
      EditButtons = <>
      KeyField = 'ID'
      ListField = #1057#1090#1072#1090#1091#1089
      ListSource = dmServer.dsСтатусы
      TabOrder = 0
      Visible = True
    end
    object edtСтоимость: TDBNumberEditEh
      AlignWithMargins = True
      Left = 120
      Top = 285
      Width = 106
      Height = 21
      Margins.Left = 120
      Margins.Top = 10
      Margins.Right = 20
      ControlLabel.Width = 60
      ControlLabel.Height = 13
      ControlLabel.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alTop
      currency = False
      DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      ReadOnly = True
      TabOrder = 1
      Visible = True
    end
    object edtДоплата: TDBNumberEditEh
      AlignWithMargins = True
      Left = 120
      Top = 339
      Width = 106
      Height = 21
      Margins.Left = 120
      Margins.Right = 20
      ControlLabel.Width = 48
      ControlLabel.Height = 13
      ControlLabel.Caption = #1044#1086#1087#1083#1072#1090#1072':'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alTop
      currency = False
      DataField = #1044#1086#1087#1083#1072#1090#1072
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      ReadOnly = True
      TabOrder = 2
      Visible = True
    end
    object edtАванс: TDBNumberEditEh
      AlignWithMargins = True
      Left = 120
      Top = 312
      Width = 106
      Height = 21
      Margins.Left = 120
      Margins.Right = 20
      ControlLabel.Width = 34
      ControlLabel.Height = 13
      ControlLabel.Caption = #1040#1074#1072#1085#1089':'
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alTop
      Color = 16121844
      currency = False
      DataField = #1040#1074#1072#1085#1089
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      ReadOnly = True
      TabOrder = 3
      Visible = True
      OnClick = ВнестиАванс
    end
    object dbmh1: TDBMemoEh
      AlignWithMargins = True
      Left = 10
      Top = 36
      Width = 226
      Height = 195
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      DataField = #1047#1072#1084#1077#1090#1082#1072
      DataSource = ds_Заказ
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Visible = True
      WantReturns = True
    end
  end
  object pmСоставPopup: TPopupMenu
    Left = 280
    Top = 220
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      object PopupПолимер: TMenuItem
        Tag = 1
        Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1064#1090#1072#1084#1087#1099
        OnClick = Добавить
      end
      object PopupПолиграфия: TMenuItem
        Tag = 2
        Caption = #1055#1086#1083#1080#1075#1088#1072#1092#1080#1103
        OnClick = Добавить
      end
      object PopupТаблички: TMenuItem
        Tag = 3
        Caption = #1058#1072#1073#1083#1080#1095#1082#1080
        OnClick = Добавить
      end
    end
    object PopupИзменить: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = Изменить
    end
    object PupupУдалить: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Удалить
    end
  end
  object FDQЗаказ: TFDQuery
    Connection = dmServer.Connection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM `'#1047#1072#1082#1072#1079#1099'`')
    Left = 44
    Top = 218
    object intgrfldFDЗаказНомер: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1053#1086#1084#1077#1088
      Origin = '`'#1053#1086#1084#1077#1088'`'
    end
    object wdstrngfldFDЗаказНазвание: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Origin = '`'#1053#1072#1079#1074#1072#1085#1080#1077'`'
      FixedChar = True
      Size = 25
    end
    object fdtncfldFDЗаказZID: TFDAutoIncField
      FieldName = 'Z-ID'
      Origin = '`Z-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldFDЗаказCID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'C-ID'
      Origin = '`C-ID`'
    end
    object intgrfldFDЗаказMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'M-ID'
      Origin = '`M-ID`'
    end
    object intgrfldFDЗаказAID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'A-ID'
      Origin = '`A-ID`'
    end
    object dtfldFDЗаказСоздан: TDateField
      AutoGenerateValue = arDefault
      FieldName = #1057#1086#1079#1076#1072#1085
      Origin = '`'#1057#1086#1079#1076#1072#1085'`'
    end
    object dtfldFDЗаказМакет: TDateField
      AutoGenerateValue = arDefault
      FieldName = #1052#1072#1082#1077#1090
      Origin = '`'#1052#1072#1082#1077#1090'`'
    end
    object dtfldFDЗаказГотовность: TDateField
      AutoGenerateValue = arDefault
      FieldName = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      Origin = '`'#1043#1086#1090#1086#1074#1085#1086#1089#1090#1100'`'
    end
    object blnfldFDЗаказБлокировка: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
      Origin = '`'#1041#1083#1086#1082#1080#1088#1086#1074#1082#1072'`'
    end
    object intgrfldFDЗаказСтоимость: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Origin = '`'#1057#1090#1086#1080#1084#1086#1089#1090#1100'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object intgrfldFDЗаказАванс: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1040#1074#1072#1085#1089
      Origin = '`'#1040#1074#1072#1085#1089'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object intgrfldFDЗаказДоплата: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = #1044#1086#1087#1083#1072#1090#1072
      Origin = '`'#1044#1086#1087#1083#1072#1090#1072'`'
      DisplayFormat = '#,##0 "'#8381'"'
    end
    object dtmfldFDЗаказUpdate: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Update'
      Origin = '`Update`'
    end
    object strngfldFDЗаказКлиент: TStringField
      FieldKind = fkLookup
      FieldName = #1050#1083#1080#1077#1085#1090
      LookupDataSet = dmServer.FDQКлиентФИО
      LookupKeyFields = 'C-ID'
      LookupResultField = #1060#1048#1054
      KeyFields = 'C-ID'
      Size = 50
      Lookup = True
    end
    object strngfldFDЗаказМенеджер: TStringField
      FieldKind = fkLookup
      FieldName = #1052#1077#1085#1077#1076#1078#1077#1088
      LookupDataSet = dmServer.FDQМенеджерФИО
      LookupKeyFields = 'M-ID'
      LookupResultField = #1060#1048#1054
      KeyFields = 'M-ID'
      Size = 50
      Lookup = True
    end
    object strngfldFDЗаказСтатус: TStringField
      FieldKind = fkLookup
      FieldName = #1057#1090#1072#1090#1091#1089
      LookupDataSet = dmServer.FDQСтатусы
      LookupKeyFields = 'ID'
      LookupResultField = #1057#1090#1072#1090#1091#1089
      KeyFields = 'A-ID'
      Lookup = True
    end
    object wdmfldFDЗаказЗаметка: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = #1047#1072#1084#1077#1090#1082#1072
      Origin = '`'#1047#1072#1084#1077#1090#1082#1072'`'
      BlobType = ftWideMemo
    end
  end
  object ds_Заказ: TDataSource
    DataSet = FDQЗаказ
    Left = 148
    Top = 218
  end
  object FDQСостав: TFDQuery
    IndexFieldNames = 'Z-ID'
    MasterSource = ds_Заказ
    MasterFields = 'Z-ID'
    Connection = dmServer.Connection
    SQL.Strings = (
      'SELECT * FROM `'#1057#1086#1089#1090#1072#1074'`')
    Left = 45
    Top = 274
    object strngfldFDСоставНаименование: TStringField
      FieldKind = fkLookup
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      LookupDataSet = dmServer.FDQРаботы
      LookupKeyFields = 'V-ID'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = 'V-ID'
      Lookup = True
    end
    object wdstrngfldFDСоставПараметры: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 70
      FieldName = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Origin = '`'#1055#1072#1088#1072#1084#1077#1090#1088#1099'`'
      FixedChar = True
      Size = 200
    end
    object fdtncfldFDСоставSID: TFDAutoIncField
      FieldName = 'S-ID'
      Origin = '`S-ID`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object intgrfldFDСоставZID: TIntegerField
      FieldName = 'Z-ID'
      Origin = '`Z-ID`'
      Required = True
      Visible = False
    end
    object intgrfldFDСоставWID: TIntegerField
      FieldName = 'W-ID'
      Origin = '`W-ID`'
      Required = True
      Visible = False
    end
    object intgrfldFDСоставVID: TIntegerField
      FieldName = 'V-ID'
      Origin = '`V-ID`'
      Required = True
      Visible = False
    end
    object wdstrngfldFDСоставОписание: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '`'#1054#1087#1080#1089#1072#1085#1080#1077'`'
      FixedChar = True
      Size = 25
    end
    object intgrfldFDСоставКоличество: TIntegerField
      Alignment = taCenter
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Origin = '`'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'`'
      Required = True
      DisplayFormat = '# "'#1096#1090'."'
    end
    object intgrfldFDСоставСтоимость: TIntegerField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Origin = '`'#1057#1090#1086#1080#1084#1086#1089#1090#1100'`'
      Required = True
      DisplayFormat = '#,##0 "'#8381'"'
    end
  end
  object ds_Состав: TDataSource
    DataSet = FDQСостав
    Left = 150
    Top = 274
  end
  object FDQЗапросы: TFDQuery
    Connection = dmServer.Connection
    Left = 48
    Top = 337
  end
end
