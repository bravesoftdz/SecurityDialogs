object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 269
  ClientWidth = 612
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
  object FlowPanel: TFlowPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 606
    Height = 30
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = ' '
    ShowCaption = False
    TabOrder = 0
    object ButtonLogin: TButton
      Left = 0
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Login'
      TabOrder = 0
      OnClick = ButtonLoginClick
    end
    object ButtonChangePassword: TButton
      Left = 100
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Change Password'
      TabOrder = 1
      OnClick = ButtonChangePasswordClick
    end
    object ButtonPermission: TButton
      Left = 200
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Permission'
      TabOrder = 2
      OnClick = ButtonPermissionClick
    end
    object ButtonMatrix: TButton
      Left = 300
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Matrix'
      TabOrder = 3
      OnClick = ButtonMatrixClick
    end
    object ButtonUser: TButton
      Left = 400
      Top = 0
      Width = 100
      Height = 25
      Caption = 'User'
      TabOrder = 4
      OnClick = ButtonDevClick
    end
    object ButtonManage: TButton
      Left = 500
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Manage'
      TabOrder = 5
      OnClick = ButtonDevClick
    end
  end
  object MemoEvent: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 39
    Width = 606
    Height = 227
    Align = alClient
    TabOrder = 1
  end
  object Manage: TSecurityManage
    Login = Login
    ChangePassword = ChangePassword
    Permission = Permission
    Matrix = Matrix
    User = User
    Left = 542
    Top = 42
  end
  object Login: TSecurityLogin
    OnAuthenticate = OnAuthenticate
    OnResult = OnResult
    Left = 40
    Top = 42
  end
  object ChangePassword: TSecurityChangePassword
    ID = 0
    OnChangePassword = OnChangePassword
    OnResult = OnResult
    Left = 140
    Top = 42
  end
  object Permission: TSecurityPermission
    ID = 0
    Can = '  .  .  .  '
    OnPermission = OnPermission
    OnResult = OnResult
    Left = 240
    Top = 42
  end
  object Matrix: TSecurityMatrix
    ID = 0
    Active = False
    MatrixID = 0
    IsMatrix = False
    OnMatrix = MatrixMatrix
    OnResult = OnResult
    Left = 341
    Top = 42
  end
  object User: TSecurityUser
    Left = 441
    Top = 42
  end
end
