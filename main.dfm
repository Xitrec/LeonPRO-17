object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'LeonPRO'
  ClientHeight = 589
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainPageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1021
    Height = 564
    ActivePage = tsЗаказы
    Align = alClient
    TabOrder = 0
    object tsЗаказы: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      object splitter: TSplitter
        Left = 0
        Top = 352
        Width = 1013
        Height = 8
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = -3
        ExplicitTop = 362
      end
      object pnlClient: TPanel
        Left = 0
        Top = 0
        Width = 1013
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlClient'
        TabOrder = 0
        object TabSet: TTabSet
          AlignWithMargins = True
          Left = 5
          Top = 320
          Width = 1003
          Height = 24
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alBottom
          BackgroundColor = 16185078
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          SelectedColor = clInactiveBorder
          SoftTop = True
          Style = tsModernTabs
          Tabs.Strings = (
            #1042#1089#1077' '#1079#1072#1082#1072#1079#1099
            #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
            #1052#1072#1082#1077#1090#1080#1088#1086#1074#1072#1085#1080#1077
            #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
            #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
            #1042#1099#1076#1072#1095#1072
            #1044#1086#1087#1083#1072#1090#1072
            #1047#1072#1074#1077#1088#1096#1077#1085)
          TabIndex = 0
          UnselectedColor = 16185078
          OnClick = TabSetClick
        end
        object DBGridEh1: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1007
          Height = 314
          Align = alClient
          AutoFitColWidths = True
          DataSource = dmServer.dsЗаказы
          DynProps = <>
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          OnDblClick = DBGridEh1DblClick
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object pnlButtom: TPanel
        Left = 0
        Top = 360
        Width = 1013
        Height = 176
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnlButtom'
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1007
          Height = 170
          Align = alClient
          AutoFitColWidths = True
          DataSource = dmServer.dsСостав
          DynProps = <>
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object tsСтатистика: TTabSheet
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ImageIndex = 1
    end
    object tsРасходы: TTabSheet
      Caption = #1056#1072#1089#1093#1086#1076#1099
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 25
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 570
    Width = 1027
    Height = 19
    Panels = <>
  end
  object Menu: TMainMenu
    Left = 32
    Top = 80
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      object N4: TMenuItem
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1053#1086#1074#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        OnClick = N5Click
      end
    end
  end
end
