unit mercurio.response.fornecedor.put;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassFornecedorPut = class
  private
    [Coluna('for_idpk')]
    FFor_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property For_idpk: string read FFor_idpk write FFor_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassFornecedorPut }

constructor TResponseClassFornecedorPut.Create;
begin
end;

destructor TResponseClassFornecedorPut.Destroy;
begin

  inherited;
end;

constructor TResponseClassFornecedorPut.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('for_idpk', self.FFor_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassFornecedorPut.CreateWithJsonString(const value : string);
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
