unit Test.SecurityDialogsView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Security.User, Security.Matrix, Security.Permission, Security.ChangePassword, Security.Login, Security.Manage, Security.ChangePassword.View, Security.Matrix.View,
  Security.Login.View

    ;

type
  TSecurityDialogsView = class(TForm)
    FlowPanel: TFlowPanel;
    ButtonLogin: TButton;
    ButtonChangePassword: TButton;
    ButtonPermission: TButton;
    ButtonMatrix: TButton;
    ButtonUser: TButton;
    ButtonManage: TButton;
    MemoEvent: TMemo;
    SecurityLogin1: TSecurityLogin;
    SecurityMatrix1: TSecurityMatrix;
    SecurityChangePassword1: TSecurityChangePassword;
    Manage1: TSecurityManage;
    SecurityUser1: TSecurityUser;
    procedure ButtonLoginClick(Sender: TObject);
    procedure OnAuthenticate(const aEmail, aPassword: string; var aAuthenticated: Boolean; var aEmailError, aPasswordError: string);
    procedure OnResult(const aResult: Boolean);
    procedure ButtonChangePasswordClick(Sender: TObject);
    procedure OnChangePassword(const aID: Int64; const aNewPassword: string; var aError: string; var aChanged: Boolean);
    procedure ButtonPermissionClick(Sender: TObject);
    procedure OnPermission(aID: Int64; aCan, aName: string; var aError: string; var aChanged: Boolean);
    procedure ButtonDevClick(Sender: TObject);
  private
    procedure SetLog(Legend: Variant; const Value: Variant);
    { Private declarations }
  public
    { Public declarations }
    property Log[Legend: Variant]: Variant write SetLog;
  end;

var
  Form2: TSecurityDialogsView;

implementation

{$R *.dfm}


procedure TSecurityDialogsView.SetLog(Legend: Variant; const Value: Variant);
begin
  MemoEvent.Lines.Append(
    Format('%20-s = %s', [VarToStr(Legend), VarToStr(Value)])
    );
end;

procedure TSecurityDialogsView.ButtonLoginClick(Sender: TObject);
begin
  with Manage1 do
  begin
    // Legendas
    Login.ServerIP   := '192.168.0.1';
    Login.ComputerIP := '192.168.0.12';
    Login.Sigla      := 'Test';
    Login.Version    := '1.0.0.1';
    Login.UpdatedAt  := DateToStr(Date);
    // Login.Logo.Picture.LoadFromFile('D:\res\Logo\Logo SETSL 150px.jpg');

    // Execute
    Log['SAIDA'] := 'Result: ';

    Login.Execute;
  end;
end;

procedure TSecurityDialogsView.OnAuthenticate(const aEmail, aPassword: string; var aAuthenticated: Boolean; var aEmailError, aPasswordError: string);
begin
  Log['LOCAL']          := 'LoginAuthenticate';
  Log['aEmail']         := aEmail;
  Log['aPassword']      := aPassword;
  Log['aAuthenticated'] := aAuthenticated;
  Log['aEmailError']    := aPassword;
  Log['aPasswordError'] := aPasswordError;

  if not aEmail.Equals('luisnt') then
    aEmailError := 'Login Inv�lido!';

  if not aPassword.Equals('7ujkl05') then
    aPasswordError := 'Senha Inv�lida!';

  aAuthenticated := SameStr(aEmailError + aPasswordError, EmptyStr);
end;

procedure TSecurityDialogsView.ButtonChangePasswordClick(Sender: TObject);
begin
  with Manage1 do
  begin
    // Legendas
    ChangePassword.ServerIP   := '192.168.0.1';
    ChangePassword.ComputerIP := '192.168.0.12';
    ChangePassword.Sigla      := 'Test';
    ChangePassword.Version    := '1.0.0.1';
    ChangePassword.UpdatedAt  := DateToStr(Date);
    // ChangePassword.Logo.Picture.LoadFromFile('D:\res\Logo\Logo SETSL 150px.jpg');

    // Config
    ChangePassword.ID       := 1;
    ChangePassword.Password := '123';
    ChangePassword.Usuario  := 'LuisNt : Luis Alfredo G Caldas Neto';

    // Execute
    Log['SAIDA'] := 'Result: ';

    ChangePassword.Execute;
  end;
end;

procedure TSecurityDialogsView.OnChangePassword(const aID: Int64; const aNewPassword: string; var aError: string; var aChanged: Boolean);
begin
  aError              := EmptyStr;
  Log['LOCAL']        := 'ChangePassword';
  Log['aID']          := aID;
  Log['aNewPassword'] := aNewPassword;
  Log['aError']       := aError;
  Log['aChanged']     := aChanged;
  aChanged            := SameStr(aError, EmptyStr);
end;

procedure TSecurityDialogsView.ButtonPermissionClick(Sender: TObject);
begin
  with Manage1 do
  begin
    // Legendas
    Permission.ServerIP   := '192.168.0.1';
    Permission.ComputerIP := '192.168.0.12';
    Permission.Sigla      := 'Test';
    Permission.Version    := '1.0.0.1';
    Permission.UpdatedIn  := DateToStr(Date);
    // Permission.Logo.Picture.LoadFromFile('D:\res\Logo\Logo SETSL 150px.jpg');

    // Config
    Permission.ID             := 0;
    Permission.UpdatedAt      := Now;
    Permission.Can            := '01.01.01.00';
    Permission.NamePermission := 'Teste de Permiss�o';

    // Execute
    Log['SAIDA'] := 'Result: ';

    Permission.Execute;
  end;
end;

procedure TSecurityDialogsView.OnPermission(aID: Int64; aCan, aName: string; var aError: string; var aChanged: Boolean);
begin
  Log['LOCAL']    := 'Permission';
  Log['aID']      := aID;
  Log['aCan']     := aCan;
  Log['aName']    := aName;
  Log['aError']   := aError;
  Log['aChanged'] := aChanged;
  aChanged        := true;
end;

procedure TSecurityDialogsView.OnResult(const aResult: Boolean);
begin
  Log['SAIDA'] := BoolToStr(aResult, true);
end;

procedure TSecurityDialogsView.ButtonDevClick(Sender: TObject);
begin
  Log['LOCAL'] := TButton(Sender).Name + ' Em Desenvolvimento';
end;

initialization

ReportMemoryLeaksOnShutdown := true;

end.
