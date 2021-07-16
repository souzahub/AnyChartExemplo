object MainForm: TMainForm
  AlignWithMargins = True
  Left = 0
  Top = 0
  ClientHeight = 748
  ClientWidth = 1108
  Caption = 'MainForm'
  OnShow = UniFormShow
  OldCreateOrder = False
  Script.Strings = (
    '// if (self.location.protocol != "https:") '
    '//   self.location.protocol = "https:";')
  MonitoredKeys.Keys = <>
  Font.Height = -13
  OnReady = UniFormReady
  OnScreenResize = UniFormScreenResize
  PixelsPerInch = 120
  TextHeight = 16
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 16316664
    object btnChart1: TUniBitBtn
      Left = 13
      Top = 11
      Width = 150
      Height = 41
      Hint = ''
      Caption = 'Carregar Chart 1'
      TabOrder = 1
      OnClick = btnChart1Click
    end
    object btnChart2: TUniBitBtn
      Left = 173
      Top = 11
      Width = 150
      Height = 41
      Hint = ''
      Caption = 'Carregar Chart 2'
      TabOrder = 2
      OnClick = btnChart2Click
    end
    object btnChart3: TUniBitBtn
      Left = 329
      Top = 11
      Width = 153
      Height = 41
      Hint = ''
      Caption = 'Carregar Chart 3'
      TabOrder = 3
      OnClick = btnChart3Click
    end
    object btnChart4: TUniBitBtn
      Left = 505
      Top = 11
      Width = 153
      Height = 41
      Hint = ''
      Caption = 'Carregar Chart 4'
      TabOrder = 4
      OnClick = btnChart4Click
    end
    object cbThemes: TUniComboBox
      Left = 712
      Top = 16
      Width = 233
      Height = 24
      Hint = ''
      Text = 'default'
      Items.Strings = (
        'default'
        'wines'
        'lightBlue'
        'darkBlue'
        'sea'
        'lightGlamour'
        'monochrome'
        'lightProvence'
        'darkTurquoise'
        'lightTurquoise'
        'pastel'
        'darkEarth')
      TabOrder = 5
      FieldLabel = 'Escolha o tema'
      SelectOnFocus = True
      IconItems = <>
      OnChange = cbThemesChange
    end
  end
  object Scrollbox: TUniScrollBox
    Left = 0
    Top = 65
    Width = 1108
    Height = 683
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 1
    LayoutConfig.Cls = 'scrollbox'
    ScrollHeight = 650
    object cp1: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1100
      Height = 330
      Hint = ''
      Margins.Bottom = 0
      ParentColor = False
      Align = alTop
      AutoScroll = True
      TabOrder = 0
      ScrollHeight = 330
      ScrollWidth = 1100
      object FrameChart1: TUniHTMLFrame
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 493
        Height = 310
        Hint = ''
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 10
        AutoScroll = True
        Align = alLeft
        ScrollHeight = 310
        ScrollWidth = 493
      end
      object FrameChart2: TUniHTMLFrame
        AlignWithMargins = True
        Left = 513
        Top = 10
        Width = 577
        Height = 310
        Hint = ''
        Margins.Left = 5
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 336
      Width = 1100
      Height = 314
      Hint = ''
      ParentColor = False
      Align = alTop
      AutoScroll = True
      TabOrder = 1
      ScrollHeight = 314
      ScrollWidth = 1100
      object FrameChart4: TUniHTMLFrame
        AlignWithMargins = True
        Left = 513
        Top = 3
        Width = 577
        Height = 308
        Hint = ''
        Margins.Left = 5
        Margins.Right = 10
        Align = alClient
      end
      object FrameChart3: TUniHTMLFrame
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 493
        Height = 308
        Hint = ''
        Margins.Left = 10
        Margins.Right = 5
        Align = alLeft
      end
    end
  end
end
