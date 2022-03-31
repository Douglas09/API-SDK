unit mercurio.response.transportador.delete;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassTransportadorDelete = class
  private
    [Coluna('tra_idpk')]
    FTra_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Tra_idpk: string read FTra_idpk write FTra_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassTransportadorDelete }

constructor TResponseClassTransportadorDelete.Create;
begin
end;

destructor TResponseClassTransportadorDelete.Destroy;
begin

  inherited;
end;

constructor TResponseClassTransportadorDelete.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('tra_idpk', self.FTra_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassTransportadorDelete.CreateWithJsonString(const value : string);
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
