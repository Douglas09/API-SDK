unit mercurio.response.login.renovar;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassRenovar = class
  private
    [Coluna('token')]
    FToken: string;
    [Coluna('token_exp')]
    FToken_exp: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Token: string read FToken write FToken;
    property Token_exp: string read FToken_exp write FToken_exp;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassRenovar }

constructor TResponseClassRenovar.Create;
begin
end;

destructor TResponseClassRenovar.Destroy;
begin

  inherited;
end;

constructor TResponseClassRenovar.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('token', self.FToken); except end;
  try value.TryGetValue<string>('token_exp', self.FToken_exp); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassRenovar.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

end.
