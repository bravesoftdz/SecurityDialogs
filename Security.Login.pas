unit Security.Login;

interface

uses
   System.SysUtils, System.Classes, Vcl.ExtCtrls, System.UITypes, Vcl.StdCtrls,

   Security.Login.Interfaces,
   Security.Login.View
     ;

type
   TAuthNotifyEvent   = Security.Login.Interfaces.TAuthNotifyEvent;
   TResultNotifyEvent = Security.Login.Interfaces.TResultNotifyEvent;
//   TSecurityLoginView = Security.Login.View.TSecurityLoginView;

   TSecurityLogin = class(TComponent)
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;

      strict private
         FView: TSecurityLoginView;

         FOnAuth  : TAuthNotifyEvent;
         FOnResult: TResultNotifyEvent;
      private
         procedure SetComputerIP(const Value: string);
         procedure SetServerIP(const Value: string);
         procedure SetSigla(const Value: string);
         procedure SetUpdatedAt(const Value: string);
         procedure SetVersion(const Value: string);
         function getComputerIP: string;
         function getLogo: TImage;
         function getServerIP: string;
         function getSigla: string;
         function getUpdatedAt: string;
         function getVersion: string;
         { Private declarations }
      protected
         { Protected declarations }
      public
         { Public declarations }
         function View: iLoginView;

         property Logo: TImage read getLogo;

         procedure Execute;

      public
         { Published hide declarations }
         property ServerIP  : string read getServerIP write SetServerIP;
         property ComputerIP: string read getComputerIP write SetComputerIP;
         property Sigla     : string read getSigla write SetSigla;
         property Version   : string read getVersion write SetVersion;
         property UpdatedAt : string read getUpdatedAt write SetUpdatedAt;

      published
         { Published declarations }
         property OnAuthenticate: TAuthNotifyEvent read FOnAuth write FOnAuth;
         property OnResult      : TResultNotifyEvent read FOnResult write FOnResult;
   end;

implementation

{ -$R Security.Login.rc Security.Login.dcr }

uses
   Vcl.Forms
     ;

{ TSecurityLogin }

constructor TSecurityLogin.Create(AOwner: TComponent);
begin
   FView := TSecurityLoginView.Create(Screen.FocusedForm);
   inherited;
end;

destructor TSecurityLogin.Destroy;
begin
   FreeAndNil(FView);
   inherited;
end;

function TSecurityLogin.getComputerIP: string;
begin
   Result := View.Properties.ComputerIP;
end;

function TSecurityLogin.getLogo: TImage;
begin
   Result := FView.ImageLogo;
end;

function TSecurityLogin.getServerIP: string;
begin
   Result := View.Properties.ServerIP;
end;

function TSecurityLogin.getSigla: string;
begin
   Result := View.Properties.Sigla;
end;

function TSecurityLogin.getUpdatedAt: string;
begin
   Result := View.Properties.UpdatedAt;
end;

function TSecurityLogin.getVersion: string;
begin
   Result := View.Properties.Version;
end;

procedure TSecurityLogin.SetComputerIP(const Value: string);
begin
   View.Properties.ComputerIP := Value;
end;

procedure TSecurityLogin.SetServerIP(const Value: string);
begin
   View.Properties.ServerIP := Value;
end;

procedure TSecurityLogin.SetSigla(const Value: string);
begin
   View.Properties.Sigla := Value;
end;

procedure TSecurityLogin.SetUpdatedAt(const Value: string);
begin
   View.Properties.UpdatedAt := Value;
end;

procedure TSecurityLogin.SetVersion(const Value: string);
begin
   View.Properties.Version := Value;
end;

function TSecurityLogin.View: iLoginView;
begin
   Result := FView;
end;

procedure TSecurityLogin.Execute;
begin
   FView.OnAuth   := Self.FOnAuth;
   FView.OnResult := Self.FOnResult;

   FView.Show;
end;

end.
