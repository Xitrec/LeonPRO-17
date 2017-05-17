object FClientEdit: TFClientEdit
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 421
  ClientWidth = 284
  Color = clBtnFace
  Constraints.MinHeight = 460
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShortCut = FormShortCut
  DesignSize = (
    284
    421)
  PixelsPerInch = 96
  TextHeight = 13
  object L_НарядЗаказ: TLabel
    Left = 13
    Top = 22
    Width = 218
    Height = 30
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1083#1080#1077#1085#1090#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 13
    Top = 66
    Width = 257
    Height = 10
    Anchors = [akLeft, akTop, akRight]
    Shape = bsTopLine
  end
  object Фамилия: TDBEditEh
    Left = 97
    Top = 98
    Width = 173
    Height = 21
    ControlLabel.Width = 50
    ControlLabel.Height = 13
    ControlLabel.Caption = #1060#1072#1084#1080#1083#1080#1103':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1060#1072#1084#1080#1083#1080#1103
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 0
    Visible = True
  end
  object Имя: TDBEditEh
    Left = 97
    Top = 125
    Width = 173
    Height = 21
    ControlLabel.Width = 25
    ControlLabel.Height = 13
    ControlLabel.Caption = #1048#1084#1103':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1048#1084#1103
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 1
    Visible = True
  end
  object Отчество: TDBEditEh
    Left = 97
    Top = 152
    Width = 173
    Height = 21
    ControlLabel.Width = 53
    ControlLabel.Height = 13
    ControlLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1054#1090#1095#1077#1089#1090#1074#1086
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 2
    Visible = True
  end
  object Папка: TDBEditEh
    Left = 97
    Top = 320
    Width = 173
    Height = 21
    ControlLabel.Width = 36
    ControlLabel.Height = 13
    ControlLabel.Caption = #1055#1072#1087#1082#1072':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1055#1072#1087#1082#1072
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <
      item
        Style = ebsPlusEh
        OnClick = ПапкаEditButtons0Click
      end>
    ParentShowHint = False
    TabOrder = 7
    Visible = True
  end
  object Почта: TDBEditEh
    Left = 97
    Top = 293
    Width = 173
    Height = 21
    ControlLabel.Width = 36
    ControlLabel.Height = 13
    ControlLabel.Caption = #1055#1086#1095#1090#1072':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1055#1086#1095#1090#1072
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 6
    Visible = True
  end
  object Мобильный: TDBEditEh
    Left = 97
    Top = 266
    Width = 173
    Height = 21
    ControlLabel.Width = 68
    ControlLabel.Height = 13
    ControlLabel.Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1052#1086#1073#1080#1083#1100#1085#1099#1081
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 5
    Visible = True
  end
  object Статус: TDBEditEh
    Left = 97
    Top = 221
    Width = 173
    Height = 21
    ControlLabel.Width = 36
    ControlLabel.Height = 13
    ControlLabel.Caption = #1057#1090#1072#1090#1091#1089':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1057#1090#1072#1090#1091#1089
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 4
    Visible = True
  end
  object Компания: TDBEditEh
    Left = 97
    Top = 194
    Width = 173
    Height = 21
    ControlLabel.Width = 57
    ControlLabel.Height = 13
    ControlLabel.Caption = #1050#1086#1084#1087#1072#1085#1080#1103':'
    ControlLabel.Visible = True
    ControlLabelLocation.Spacing = 8
    ControlLabelLocation.Offset = -1
    ControlLabelLocation.Position = lpLeftCenterEh
    Anchors = [akLeft, akTop, akRight]
    DataField = #1050#1086#1084#1087#1072#1085#1080#1103
    DataSource = FClients.DS_Клиенты
    DynProps = <>
    EditButtons = <>
    ParentShowHint = False
    TabOrder = 3
    Visible = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 284
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 15460070
    Padding.Left = 7
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    ParentBackground = False
    ShowCaption = False
    TabOrder = 8
    object Button1: TButton
      AlignWithMargins = True
      Left = 199
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
    object Button2: TButton
      AlignWithMargins = True
      Left = 118
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
  end
end
