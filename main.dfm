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
        Top = 355
        Width = 1013
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 352
      end
      object pnlClient: TPanel
        Left = 0
        Top = 41
        Width = 1013
        Height = 314
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlClient'
        TabOrder = 0
        object TabSet: TTabSet
          AlignWithMargins = True
          Left = 5
          Top = 282
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
          Height = 276
          Align = alClient
          AutoFitColWidths = True
          DataSource = dmServer.dsЗаказы
          DynProps = <>
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          OnDblClick = Изменить
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
        ShowCaption = False
        TabOrder = 1
        object splLeft: TSplitter
          AlignWithMargins = True
          Left = 431
          Top = 3
          Width = 5
          Height = 170
        end
        object pnlInfo: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 422
          Height = 170
          Align = alLeft
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'pnlInfo'
          ShowCaption = False
          TabOrder = 0
        end
        object DBGridEh2: TDBGridEh
          AlignWithMargins = True
          Left = 442
          Top = 3
          Width = 568
          Height = 170
          Align = alClient
          AutoFitColWidths = True
          DataSource = dmServer.dsСостав
          DynProps = <>
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1013
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 2
        object СтрокаПоиска: TDBEditEh
          AlignWithMargins = True
          Left = 520
          Top = 10
          Width = 483
          Height = 21
          Margins.Left = 5
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          DynProps = <>
          EditButtons = <
            item
              ShortCut = 0
              Style = ebsMinusEh
              Visible = False
            end>
          EmptyDataInfo.Text = #57626' '#1053#1072#1081#1090#1080'...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Visible = True
        end
        object btnУдалитьЗаказ: TButton
          AlignWithMargins = True
          Left = 180
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #57607' '#1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Удалить
        end
        object btnИзменить: TButton
          AlignWithMargins = True
          Left = 95
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #57604' '#1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Изменить
        end
        object btnНовыйЗаказ: TButton
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #57650' '#1057#1086#1079#1076#1072#1090#1100
          TabOrder = 3
          OnClick = НовыйЗаказ
        end
        object btnПечать: TButton
          AlignWithMargins = True
          Left = 435
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #58102' '#1055#1077#1095#1072#1090#1100
          TabOrder = 4
          OnClick = ПечатьЗаказа
        end
        object btnПапка: TButton
          AlignWithMargins = True
          Left = 265
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #58033' '#1055#1072#1087#1082#1072
          TabOrder = 5
          OnClick = ОткрытьПапку
        end
        object btnНаписать: TButton
          AlignWithMargins = True
          Left = 350
          Top = 8
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          Caption = #57625' '#1053#1072#1087#1080#1089#1072#1090#1100
          TabOrder = 6
          OnClick = НаписатьПисьмо
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
    Top = 88
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
  object pmMail: TPopupMenu
    Left = 103
    Top = 92
    object N3: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
      OnClick = N7Click
    end
    object N6: TMenuItem
      Tag = 1
      Caption = #1052#1072#1082#1077#1090
      OnClick = N7Click
    end
    object N7: TMenuItem
      Tag = 2
      Caption = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      OnClick = N7Click
    end
  end
  object pmPrint: TPopupMenu
    Left = 184
    Top = 88
    object N8: TMenuItem
      Tag = 1
      Caption = #1041#1083#1072#1085#1082' '#1079#1072#1082#1072#1079#1072
      OnClick = Печать
    end
    object N9: TMenuItem
      Caption = #1041#1083#1072#1085#1082' '#1082#1083#1080#1077#1085#1090#1072
      OnClick = Печать
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Tag = 2
      Caption = #1043#1072#1088#1072#1085#1090#1080#1103
      OnClick = Печать
    end
    object N12: TMenuItem
      Tag = 3
      Caption = #1055#1088#1080#1093#1086#1076#1085#1080#1082
      OnClick = Печать
    end
  end
end
