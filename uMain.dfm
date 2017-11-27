object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1077#1090#1086#1076' '#1063#1077#1073#1077#1096#1077#1074#1072
  ClientHeight = 84
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    361
    84)
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TEsRegexEdit
    Left = 8
    Top = 8
    Width = 345
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = '0'
    OnChange = EditChange
    Pattern = '^[+-]?[\d]+($|[\.][\d]+|([\.][\d]+[Ee]|[Ee])[+-]?\d+)$'
    AllowNeutral = True
    IndicateState = All
    ExplicitWidth = 233
  end
  object GridPanel1: TGridPanel
    Left = 8
    Top = 35
    Width = 345
    Height = 41
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = LabelFx1
        Row = 0
      end
      item
        Column = 1
        Control = LabelFx2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    ExplicitWidth = 309
    DesignSize = (
      345
      41)
    object LabelFx1: TLabel
      Left = 77
      Top = 14
      Width = 18
      Height = 13
      Anchors = []
      Caption = 'Fx1'
      ExplicitLeft = 71
    end
    object LabelFx2: TLabel
      Left = 249
      Top = 14
      Width = 18
      Height = 13
      Anchors = []
      Caption = 'Fx2'
      ExplicitLeft = 225
    end
  end
end
