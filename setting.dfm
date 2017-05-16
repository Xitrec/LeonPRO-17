object fSetting: TfSetting
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 504
  ClientWidth = 411
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
    Top = 463
    Width = 411
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlButtom'
    ShowCaption = False
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 245
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
      Left = 328
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
    Width = 401
    Height = 458
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
        Width = 373
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
        Width = 253
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
        Width = 253
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
        Width = 253
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
        Width = 253
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
        Width = 253
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
        Width = 393
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
          Left = 230
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
        Width = 260
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
        Width = 253
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
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 524
      ExplicitHeight = 0
    end
  end
end
