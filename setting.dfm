object fSetting: TfSetting
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 597
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtom: TPanel
    Left = 0
    Top = 556
    Width = 416
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlButtom'
    ShowCaption = False
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      Align = alRight
      Caption = #1055#1088#1080#1084#1080#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 333
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Pages: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 406
    Height = 551
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    ActivePage = Сервер
    Align = alClient
    TabOrder = 1
    object Сервер: TTabSheet
      Caption = #1057#1077#1088#1074#1077#1088
      object lbl1: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 378
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 354
      end
      object edtСервер: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 51
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Top = 10
        Margins.Right = 10
        ControlLabel.Width = 80
        ControlLabel.Height = 13
        ControlLabel.Caption = #1040#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object edtDB: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 78
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Right = 10
        ControlLabel.Width = 42
        ControlLabel.Height = 13
        ControlLabel.Caption = #1048#1084#1103' '#1041#1044':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
      object edtUser: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 139
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Right = 10
        ControlLabel.Width = 101
        ControlLabel.Height = 13
        ControlLabel.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <>
        TabOrder = 3
        Visible = True
      end
      object edtPassword: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 166
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Right = 10
        ControlLabel.Width = 43
        ControlLabel.Height = 13
        ControlLabel.Caption = #1055#1072#1088#1086#1083#1100':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <>
        PasswordChar = '*'
        TabOrder = 4
        Visible = True
      end
      object edtProt: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 105
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Right = 10
        Margins.Bottom = 10
        ControlLabel.Width = 30
        ControlLabel.Height = 13
        ControlLabel.Caption = #1055#1086#1088#1090':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
      object панельСервер: TPanel
        Left = 0
        Top = 254
        Width = 398
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = #1087#1072#1085#1077#1083#1100#1057#1077#1088#1074#1077#1088
        ShowCaption = False
        TabOrder = 5
        object lblСостояниеСервера: TLabel
          AlignWithMargins = True
          Left = 20
          Top = 12
          Width = 113
          Height = 21
          Margins.Left = 20
          Margins.Top = 12
          Margins.Bottom = 8
          Align = alLeft
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1077#1088#1074#1077#1088#1072': -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 13
        end
        object btnПодключитьБД: TButton
          AlignWithMargins = True
          Left = 235
          Top = 8
          Width = 153
          Height = 25
          Margins.Top = 8
          Margins.Right = 10
          Margins.Bottom = 8
          Align = alRight
          Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1041#1044
          TabOrder = 0
          OnClick = btnПодключитьБДClick
        end
      end
      object chkАвтоПодключениеБД: TCheckBox
        AlignWithMargins = True
        Left = 130
        Top = 234
        Width = 265
        Height = 17
        Margins.Left = 130
        Margins.Top = 10
        Align = alTop
        Caption = #1055#1086#1076#1082#1083#1102#1095#1072#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
        TabOrder = 6
      end
      object edtPingInterval: TDBNumberEditEh
        AlignWithMargins = True
        Left = 130
        Top = 200
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Top = 10
        Margins.Right = 10
        ControlLabel.Width = 79
        ControlLabel.Height = 13
        ControlLabel.Caption = #1048#1085#1090#1077#1088#1074#1072#1083' PING'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 8
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        Alignment = taLeftJustify
        DisplayFormat = '#### ['#1084#1089']'
        DynProps = <>
        EditButtons = <>
        TabOrder = 7
        Visible = True
      end
    end
    object Дополнительно: TTabSheet
      Caption = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1072#1084' '#1080' '#1092#1072#1081#1083#1072#1084
      ImageIndex = 1
      object lbl2: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 378
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1091#1090#1080' '#1082' '#1087#1072#1087#1082#1072#1084' '#1080' '#1092#1072#1081#1083#1072#1084' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 338
      end
      object edtПапкаКлиентов: TDBEditEh
        AlignWithMargins = True
        Left = 130
        Top = 51
        Width = 258
        Height = 21
        Margins.Left = 130
        Margins.Top = 10
        Margins.Right = 10
        ControlLabel.Width = 104
        ControlLabel.Height = 13
        ControlLabel.Caption = #1050#1072#1090#1072#1083#1086#1075#1080' '#1082#1083#1080#1077#1085#1090#1086#1074':'
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 5
        ControlLabelLocation.Offset = -1
        ControlLabelLocation.Position = lpLeftCenterEh
        Align = alTop
        DynProps = <>
        EditButtons = <
          item
            OnClick = edtПапкаКлиентовEditButtons0Click
          end>
        TabOrder = 0
        Visible = True
      end
    end
    object Сообщения: TTabSheet
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103
      ImageIndex = 2
      object lbl3: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 378
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1077#1084#1099' '#1080' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1087#1080#1089#1077#1084' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 365
      end
      object grp1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 351
        Width = 392
        Height = 134
        Align = alTop
        Caption = #1043#1086#1090#1086#1074
        TabOrder = 0
        object edtТемаГотов: TDBEditEh
          AlignWithMargins = True
          Left = 52
          Top = 25
          Width = 328
          Height = 21
          Margins.Left = 50
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 5
          ControlLabel.Width = 28
          ControlLabel.Height = 13
          ControlLabel.Caption = #1058#1077#1084#1072':'
          ControlLabel.Visible = True
          ControlLabelLocation.Spacing = 5
          ControlLabelLocation.Offset = -1
          ControlLabelLocation.Position = lpLeftCenterEh
          Align = alTop
          DynProps = <>
          EditButtons = <>
          TabOrder = 0
          Visible = True
        end
        object memoГотов: TDBMemoEh
          AlignWithMargins = True
          Left = 12
          Top = 56
          Width = 368
          Height = 66
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 10
          Lines.Strings = (
            'dbmh1')
          Align = alClient
          AutoSize = False
          DynProps = <>
          EditButtons = <>
          TabOrder = 1
          Visible = True
          WantReturns = True
        end
      end
      object grp2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 184
        Width = 392
        Height = 161
        Align = alTop
        Caption = #1052#1072#1082#1077#1090
        TabOrder = 1
        object edtТемаМакет: TDBEditEh
          AlignWithMargins = True
          Left = 52
          Top = 25
          Width = 328
          Height = 21
          Margins.Left = 50
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 5
          ControlLabel.Width = 28
          ControlLabel.Height = 13
          ControlLabel.Caption = #1058#1077#1084#1072':'
          ControlLabel.Visible = True
          ControlLabelLocation.Spacing = 5
          ControlLabelLocation.Offset = -1
          ControlLabelLocation.Position = lpLeftCenterEh
          Align = alTop
          DynProps = <>
          EditButtons = <>
          TabOrder = 0
          Visible = True
        end
        object memoМакет: TDBMemoEh
          AlignWithMargins = True
          Left = 12
          Top = 56
          Width = 368
          Height = 63
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 10
          Lines.Strings = (
            'dbmh1')
          Align = alClient
          AutoSize = False
          DynProps = <>
          EditButtons = <>
          TabOrder = 1
          Visible = True
          WantReturns = True
        end
        object chkОткрыватьПапкуКлиента: TCheckBox
          AlignWithMargins = True
          Left = 12
          Top = 132
          Width = 368
          Height = 17
          Margins.Left = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alBottom
          Caption = #1054#1090#1082#1088#1099#1074#1072#1090#1100' '#1087#1072#1087#1082#1091' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 2
        end
      end
      object grp3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 392
        Height = 134
        Align = alTop
        Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
        TabOrder = 2
        object edtТемаОформление: TDBEditEh
          AlignWithMargins = True
          Left = 52
          Top = 25
          Width = 328
          Height = 21
          Margins.Left = 50
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 5
          ControlLabel.Width = 28
          ControlLabel.Height = 13
          ControlLabel.Caption = #1058#1077#1084#1072':'
          ControlLabel.Visible = True
          ControlLabelLocation.Spacing = 5
          ControlLabelLocation.Offset = -1
          ControlLabelLocation.Position = lpLeftCenterEh
          Align = alTop
          DynProps = <>
          EditButtons = <>
          TabOrder = 0
          Visible = True
        end
        object memoОформление: TDBMemoEh
          AlignWithMargins = True
          Left = 12
          Top = 56
          Width = 368
          Height = 66
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 10
          Lines.Strings = (
            'dbmh1')
          Align = alClient
          AutoSize = False
          DynProps = <>
          EditButtons = <>
          TabOrder = 1
          Visible = True
          WantReturns = True
        end
      end
    end
    object Бланк: TTabSheet
      Caption = #1041#1083#1072#1085#1082' '#1079#1072#1082#1072#1079#1072
      ImageIndex = 3
      object lbl4: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 378
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = #1058#1077#1082#1089#1090' '#1073#1083#1072#1085#1082#1072' '#1085#1072#1088#1103#1076' '#1079#1072#1082#1072#1079#1072' '#1087#1088#1080' '#1087#1077#1095#1072#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 274
      end
      object memoБланкЗаказа: TDBMemoEh
        AlignWithMargins = True
        Left = 10
        Top = 46
        Width = 378
        Height = 467
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 10
        Lines.Strings = (
          'dbmh1')
        Align = alClient
        AutoSize = False
        DynProps = <>
        EditButtons = <>
        TabOrder = 0
        Visible = True
        WantReturns = True
        ExplicitLeft = 12
        ExplicitTop = 56
        ExplicitWidth = 368
        ExplicitHeight = 66
      end
    end
  end
end
