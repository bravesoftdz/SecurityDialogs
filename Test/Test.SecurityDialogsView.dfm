object SecurityDialogsView: TSecurityDialogsView
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 290
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    622
    290)
  PixelsPerInch = 96
  TextHeight = 13
  object FlowPanel: TFlowPanel
    Left = 8
    Top = 8
    Width = 605
    Height = 30
    Anchors = [akLeft, akTop, akRight]
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
      OnClick = ButtonDevClick
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
    Left = 8
    Top = 41
    Width = 605
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object TSecurityLoginView
    Left = 0
    Top = 0
    ClientHeight = 201
    ClientWidth = 304
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OldCreateOrder = False
    PixelsPerInch = 96
    TextHeight = 13
  end
  object SecurityLogin1: TSecurityLogin
    OnAuthenticate = @1
    OnResult = @2
    Left = 182
    Top = 86
  end
  object TSecurityMatrixView
    Left = 0
    Top = 0
    ClientHeight = 201
    ClientWidth = 304
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OldCreateOrder = False
    ID = 0
    Active = False
    MatrixID = 0
    IsMatrix = False
    PixelsPerInch = 96
    TextHeight = 13
  end
  object SecurityMatrix1: TSecurityMatrix
    ID = 0
    Active = False
    MatrixID = 0
    IsMatrix = False
    Left = 344
    Top = 82
  end
  object TSecurityChangePasswordView
    Left = 0
    Top = 0
    ClientHeight = 201
    ClientWidth = 304
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OldCreateOrder = False
    ID = 0
    PixelsPerInch = 96
    TextHeight = 13
  end
  object SecurityChangePassword1: TSecurityChangePassword
    ID = 0
    OnChangePassword = @3
    OnResult = @2
    Left = 300
    Top = 146
  end
  object Manage1: TSecurityManage
    Left = 182
    Top = 144
  end
  object SecurityUser1: TSecurityUser
    Left = 410
    Top = 126
  end
end
