object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1053#1077#1095#1077#1090#1082#1072#1103' '#1084#1086#1076#1077#1083#1100' '#1079#1085#1072#1085#1080#1081
  ClientHeight = 372
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 95
    Width = 707
    Height = 277
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      BorderWidth = 1
      Caption = #1060#1091#1085#1082#1094#1080#1080' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090#1080
      object ListBox1: TListBox
        Left = 0
        Top = 0
        Width = 129
        Height = 247
        Align = alLeft
        ItemHeight = 13
        Items.Strings = (
          #1042#1088#1077#1084#1103' '#1079#1072#1090#1088#1072#1090#1099
          #1059#1088#1086#1074#1077#1085#1100' '#1084#1086#1090#1080#1074#1072#1094#1080#1080
          #1054#1078#1080#1076#1072#1077#1084#1086#1077' '#1074#1088#1077#1084#1103' ')
        TabOrder = 0
        OnClick = ListBox1Click
      end
      object Chart1: TChart
        Left = 129
        Top = 0
        Width = 568
        Height = 247
        Legend.CheckBoxesStyle = cbsRadio
        Legend.FontSeriesColor = True
        Legend.TextStyle = ltsPlain
        Legend.VertSpacing = 6
        SubFoot.Font.Height = -16
        Title.Text.Strings = (
          'TChart')
        Chart3DPercent = 8
        View3D = False
        View3DOptions.Zoom = 102
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 135
        ExplicitTop = -1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TLineSeries
          Marks.Style = smsValue
          Marks.DrawEvery = 8
          ValueFormat = '0.0'
          Brush.BackColor = clDefault
          Pointer.HorizSize = 13
          Pointer.InflateMargins = True
          Pointer.Shadow.HorizSize = -2
          Pointer.Shadow.VertSize = -2
          Pointer.Style = psRectangle
          Pointer.VertSize = 13
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series2: TLineSeries
          Marks.Font.Height = -9
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1103
      ImageIndex = 1
      OnResize = TabSheet2Resize
      OnShow = TabSheet2Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 249
        Align = alLeft
        TabOrder = 0
        object Chart2: TChart
          Left = 1
          Top = 1
          Width = 335
          Height = 113
          Legend.Alignment = laBottom
          Title.Text.Strings = (
            'TChart')
          View3D = False
          Align = alTop
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series4: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series5: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series6: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series10: TBarSeries
            Marks.Visible = False
            Marks.Style = smsXValue
            ValueFormat = '0'
            BarWidthPercent = 1
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
        object Chart3: TChart
          Left = 1
          Top = 114
          Width = 335
          Height = 134
          Legend.Alignment = laBottom
          Title.Text.Strings = (
            'TChart')
          View3D = False
          Align = alClient
          TabOrder = 1
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series7: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series8: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series9: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series11: TBarSeries
            Marks.Visible = False
            BarWidthPercent = 1
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
      end
      object Panel3: TPanel
        Left = 337
        Top = 0
        Width = 362
        Height = 249
        Align = alRight
        TabOrder = 1
        object Chart4: TChart
          Left = 1
          Top = 1
          Width = 360
          Height = 134
          Legend.Alignment = laBottom
          Title.Text.Strings = (
            'TChart')
          View3D = False
          Align = alTop
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series12: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series13: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series14: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Chart5: TChart
          Left = 1
          Top = 135
          Width = 360
          Height = 113
          Legend.Alignment = laBottom
          Legend.LegendStyle = lsSeries
          Title.Text.Strings = (
            'TChart')
          View3D = False
          Align = alClient
          TabOrder = 1
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series15: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
      ImageIndex = 2
      object Chart6: TChart
        Left = 0
        Top = 0
        Width = 699
        Height = 249
        Legend.Alignment = laBottom
        Legend.LegendStyle = lsSeries
        Title.Text.Strings = (
          'TChart')
        View3D = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series16: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series17: TPointSeries
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 95
    Align = alTop
    Color = clInactiveBorder
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 14
      Width = 130
      Height = 13
      Caption = #1042#1088#1077#1084#1103' '#1079#1072#1090#1088#1072#1090#1099' '#1074' '#1084#1080#1085#1091#1090#1072#1093
    end
    object Label2: TLabel
      Left = 156
      Top = 14
      Width = 100
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1084#1086#1090#1080#1074#1072#1094#1080#1080
    end
    object Label3: TLabel
      Left = 226
      Top = 64
      Width = 12
      Height = 13
      Caption = '50'
    end
    object Label4: TLabel
      Left = 263
      Top = 64
      Width = 43
      Height = 13
      Caption = #1042#1099#1089#1086#1082#1080#1081
    end
    object Label5: TLabel
      Left = 156
      Top = 64
      Width = 36
      Height = 13
      Caption = #1053#1080#1079#1082#1080#1081
    end
    object Label6: TLabel
      Left = 328
      Top = 14
      Width = 106
      Height = 13
      Caption = #1052#1077#1090#1086#1076' '#1089#1091#1087#1077#1088#1087#1086#1079#1080#1094#1080#1080
    end
    object Label7: TLabel
      Left = 464
      Top = 14
      Width = 72
      Height = 13
      Caption = #1057#1082#1072#1083#1103#1088#1080#1079#1072#1094#1080#1103
    end
    object SpinEdit1: TSpinEdit
      Left = 4
      Top = 33
      Width = 49
      Height = 22
      MaxValue = 240
      MinValue = 15
      TabOrder = 0
      Value = 30
    end
    object TrackBar1: TTrackBar
      Left = 156
      Top = 33
      Width = 150
      Height = 25
      Max = 100
      Position = 50
      TabOrder = 1
      OnChange = TrackBar1Change
    end
    object ComboBox1: TComboBox
      Left = 328
      Top = 33
      Width = 113
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Max Combination'
      Items.Strings = (
        'Max Combination'
        'Sum Combination')
    end
    object Button1: TButton
      Left = 589
      Top = 31
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
    object ComboBox2: TComboBox
      Left = 464
      Top = 33
      Width = 107
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = #1062#1077#1085#1090#1088' '#1090#1103#1078#1077#1089#1090#1080
      Items.Strings = (
        #1062#1077#1085#1090#1088' '#1090#1103#1078#1077#1089#1090#1080
        #1052#1077#1090#1086#1076' '#1084#1072#1082#1089#1080#1084#1091#1084#1072)
    end
  end
end
