unit mercurio.response.cliente.delete;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassClienteDelete = class
  private
    [Coluna('cli_idpk')]
    FCli_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Cli_idpk: string read FCli_idpk write FCli_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassClienteDelete }

constructor TResponseClassClienteDelete.Create;
begin
end;

destructor TResponseClassClienteDelete.Destroy;
begin

  inherited;
end;

constructor TResponseClassClienteDelete.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('cli_idpk', self.FCli_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassClienteDelete.CreateWithJsonString(const value : string);
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
