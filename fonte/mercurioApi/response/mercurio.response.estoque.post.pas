unit mercurio.response.estoque.post;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
 TRegistros = class
 private
  [Coluna('emm_idpk')]
  FEmm_idpk: string;
 public
  constructor Create;
  destructor Destroy; override;

  constructor CreateWithJson(const value : TJSonObject);
  constructor CreateWithJsonString(const value : string);
  property Emm_idpk: string read FEmm_idpk write FEmm_idpk;
 end;

 TResponseClassEstoquePost = class
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

  try value.TryGetValue<string>('emm_idpk', self.FEmm_idpk); except end;
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

{ TResponseClassEstoquePost }

constructor TResponseClassEstoquePost.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassEstoquePost.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassEstoquePost.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassEstoquePost.CreateWithJsonString(const value : string);
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
