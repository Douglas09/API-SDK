unit mercurio.response.produto.delete;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassProdutoDelete = class
  private
    [Coluna('pro_idpk')]
    FPro_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pro_idpk: string read FPro_idpk write FPro_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassProdutoDelete }

constructor TResponseClassProdutoDelete.Create;
begin
end;

destructor TResponseClassProdutoDelete.Destroy;
begin

  inherited;
end;

constructor TResponseClassProdutoDelete.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('pro_idpk', self.FPro_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassProdutoDelete.CreateWithJsonString(const value : string);
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
