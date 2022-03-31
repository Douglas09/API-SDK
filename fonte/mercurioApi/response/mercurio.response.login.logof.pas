unit mercurio.response.login.logof;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassLogof = class
  private
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassLogof }

constructor TResponseClassLogof.Create;
begin
end;

destructor TResponseClassLogof.Destroy;
begin

  inherited;
end;

constructor TResponseClassLogof.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassLogof.CreateWithJsonString(const value : string);
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
