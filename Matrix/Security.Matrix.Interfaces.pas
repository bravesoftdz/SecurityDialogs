unit Security.Matrix.Interfaces;

interface

Type
  TMatrixNotifyEvent = procedure(aID: Int64; aName: String; aEmail: String; aActive: Boolean; aPassword: String; aMatrixID: Integer; aIsMatrix: Boolean; var aError: string; var aChanged: Boolean) of Object;
  TResultNotifyEvent = procedure(const aResult: Boolean = false) of Object;

Type
  iPrivateMatrixEvents = interface
    ['{3023A08C-1ED5-4A65-B127-1FF9D340EB3B}']
    { Strict private declarations }
    procedure setID(Value: Int64);
    function getID: Int64;

    function getUpdatedAt: TDateTime;
    procedure setUpdatedAt(const Value: TDateTime);

    procedure setNameMatrix(Value: String);
    function getNameMatrix: String;

    procedure setEmail(Value: String);
    function getEmail: String;

    procedure setActive(Value: Boolean);
    function getActive: Boolean;

    procedure setPassword(Value: String);
    function getPassword: String;

    procedure setMatrixID(Value: Integer);
    function getMatrixID: Integer;

    procedure setIsMatrix(Value: Boolean);
    function getIsMatrix: Boolean;

    procedure setOnMatrix(const Value: TMatrixNotifyEvent);
    function getOnMatrix: TMatrixNotifyEvent;

    procedure setOnResult(const Value: TResultNotifyEvent);
    function getOnResult: TResultNotifyEvent;
  end;

  iMatrixViewEvents = interface(iPrivateMatrixEvents)
    ['{7F0739A8-F041-4DBB-8A3C-235C8FE5325A}']
    { Published declarations - Properties }
    property ID: Int64 read getID write setID;
    property UpdatedAt: TDateTime read getUpdatedAt write setUpdatedAt;
    property NameMatrix: String read getNameMatrix write setNameMatrix;
    property Email: String read getEmail write setEmail;
    property Active: Boolean read getActive write setActive;
    property Password: String read getPassword write setPassword;
    property MatrixID: Integer read getMatrixID write setMatrixID;
    property IsMatrix: Boolean read getIsMatrix write setIsMatrix;

    { Published declarations - Events }
    property OnMatrix: TMatrixNotifyEvent read getOnMatrix write setOnMatrix;
    property OnResult: TResultNotifyEvent read getOnResult write setOnResult;
  end;

  iPrivateMatrixViewProperties = interface
    ['{E58223C7-8FCF-48C4-B2EB-D93EB6FB84ED}']
    { Private declarations }
    function getComputerIP: string;
    function getServerIP: string;
    function getSigla: string;
    function getUpdatedAt: string;
    function getVersion: string;

    procedure setComputerIP(const Value: string);
    procedure setServerIP(const Value: string);
    procedure setSigla(const Value: string);
    procedure setUpdatedAt(const Value: string);
    procedure setVersion(const Value: string);
  end;

  iMatrixViewProperties = interface(iPrivateMatrixViewProperties)
    ['{487E4F2B-62DD-4353-AC0C-7E43CB4FDA8C}']
    { Public declarations }

    property ComputerIP: string read getComputerIP write setComputerIP;
    property ServerIP: string read getServerIP write setServerIP;
    property Sigla: string read getSigla write setSigla;
    property Version: string read getVersion write setVersion;
    property UpdatedAt: string read getUpdatedAt write setUpdatedAt;
  end;

  iMatrixView = interface
    ['{134C82E6-CCD9-4C0C-BB57-6A2E978CBEA2}']
    // function Properties: iPermissionViewProperties;
     function Events: iMatrixViewEvents;
  end;

implementation

end.
