object fUser: TfUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 225
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtom: TPanel
    Left = 0
    Top = 184
    Width = 354
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlButtom'
    ShowCaption = False
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 188
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 8
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 271
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
  object pnlMain: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 344
    Height = 179
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'pnlMain'
    ShowCaption = False
    TabOrder = 1
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 320
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Alignment = taCenter
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1093#1086#1076#1072' '#1074' '#1089#1080#1089#1090#1077#1084#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 200
    end
    object edtPassword: TDBEditEh
      AlignWithMargins = True
      Left = 100
      Top = 71
      Width = 230
      Height = 21
      Margins.Left = 100
      Margins.Right = 10
      ControlLabel.Width = 41
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
      TabOrder = 1
      Visible = True
    end
    object edtEmail: TDBEditEh
      AlignWithMargins = True
      Left = 100
      Top = 44
      Width = 230
      Height = 21
      Margins.Left = 100
      Margins.Right = 10
      ControlLabel.Width = 82
      ControlLabel.Height = 13
      ControlLabel.Caption = #1051#1086#1075#1080#1085' '#1080#1083#1080' Email:'
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
    object cbbRoot: TDBComboBoxEh
      AlignWithMargins = True
      Left = 100
      Top = 128
      Width = 230
      Height = 21
      Margins.Left = 100
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      ControlLabel.Width = 56
      ControlLabel.Height = 13
      ControlLabel.Caption = #1048#1085#1090#1077#1088#1092#1077#1081#1089
      ControlLabel.Visible = True
      ControlLabelLocation.Spacing = 8
      ControlLabelLocation.Offset = -1
      ControlLabelLocation.Position = lpLeftCenterEh
      Align = alTop
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        #1052#1077#1085#1077#1076#1078#1084#1077#1085#1090
        #1044#1080#1079#1072#1081#1085
        #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088)
      KeyItems.Strings = (
        '222'
        '333'
        '444'
        '777')
      TabOrder = 2
      Visible = True
    end
    object chkСохранитьПароль: TCheckBox
      AlignWithMargins = True
      Left = 100
      Top = 98
      Width = 230
      Height = 17
      Margins.Left = 100
      Margins.Right = 10
      Align = alTop
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 3
    end
  end
end
