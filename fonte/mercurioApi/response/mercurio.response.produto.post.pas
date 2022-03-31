unit mercurio.response.produto.post;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('pro_idpk')]
    FPro_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pro_idpk: string read FPro_idpk write FPro_idpk;
  end;

  TResponseClassProdutoPost = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Registros: TList<TRegistros> read FRegistros write FRegistros;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TRegistros }

constructor TRegistros.Create;
begin
end;

destructor TRegistros.Destroy;
begin

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('pro_idpk', self.FPro_idpk); except end;
end;

constructor TRegistros.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TResponseClassProdutoPost }

constructor TResponseClassProdutoPost.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassProdutoPost.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassProdutoPost.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONArray>('registros', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FRegistros.add(
          TRegistros.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassProdutoPost.CreateWithJsonString(const value : string);
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
