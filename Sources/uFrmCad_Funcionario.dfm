object FrmCad_Funcionario: TFrmCad_Funcionario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro'
  ClientHeight = 250
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 293
    Height = 250
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 17
      Top = 77
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label1: TLabel
      Left = 17
      Top = 29
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 17
      Top = 125
      Width = 36
      Height = 13
      Caption = 'Sal'#225'rio:'
    end
    object EdtCPF: TEdit
      Left = 17
      Top = 96
      Width = 121
      Height = 21
      MaxLength = 11
      TabOrder = 1
      TextHint = 'CPF'
      OnKeyPress = EdtCPFKeyPress
    end
    object EdtSalario: TEdit
      Left = 17
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 2
      TextHint = 'Sal'#225'rio'
      OnKeyPress = EdtSalarioKeyPress
    end
    object EdtNome: TEdit
      Left = 17
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
      TextHint = 'Nome'
    end
    object BtnCadastrar: TButton
      Left = 160
      Top = 184
      Width = 115
      Height = 40
      Caption = 'CADASTRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnCadastrarClick
    end
    object RGVenGes: TRadioGroup
      Left = 17
      Top = 173
      Width = 121
      Height = 59
      Caption = 'Tipos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'Vendedor'
        'Gestor')
      ParentFont = False
      TabOrder = 5
      OnClick = RGVenGesClick
    end
    object EdtHExtra: TEdit
      Left = 144
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 3
      TextHint = 'Hora Extra'
      Visible = False
    end
  end
end
