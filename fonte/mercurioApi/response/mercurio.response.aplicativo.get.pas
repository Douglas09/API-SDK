unit mercurio.response.aplicativo.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('apl_url')]
    FApl_url: string;
    [Coluna('apl_data')]
    FApl_data: string;
    [Coluna('apl_idpk')]
    FApl_idpk: integer;
    [Coluna('apl_nome')]
    FApl_nome: string;
    [Coluna('apl_tipo')]
    FApl_tipo: string;
    [Coluna('apl_package')]
    FApl_package: string;
    [Coluna('apl_sistema_idpk')]
    FApl_sistema_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Apl_url: string read FApl_url write FApl_url;
    property Apl_data: string read FApl_data write FApl_data;
    property Apl_idpk: integer read FApl_idpk write FApl_idpk;
    property Apl_nome: string read FApl_nome write FApl_nome;
    property Apl_tipo: string read FApl_tipo write FApl_tipo;
    property Apl_package: string read FApl_package write FApl_package;
    property Apl_sistema_idpk: integer read FApl_sistema_idpk write FApl_sistema_idpk;
  end;

  TResponseClassAplicativoGet = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('status')]
    FStatus: string;
    [Coluna('codigo')]
    FCodigo: string;
    [Coluna('tag')]
    FTag: string;
    [Coluna('mensagem')]
    FMensagem: string;
    [Coluna('mensagem_original')]
    FMensagem_original: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Registros: TList<TRegistros> read FRegistros write FRegistros;
    property Status: string read FStatus write FStatus;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
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

  try value.TryGetValue<string>('apl_url', self.FApl_url); except end;
  try value.TryGetValue<string>('apl_data', self.FApl_data); except end;
  try value.TryGetValue<integer>('apl_idpk', self.FApl_idpk); except end;
  try value.TryGetValue<string>('apl_nome', self.FApl_nome); except end;
  try value.TryGetValue<string>('apl_tipo', self.FApl_tipo); except end;
  try value.TryGetValue<string>('apl_package', self.FApl_package); except end;
  try value.TryGetValue<integer>('apl_sistema_idpk', self.FApl_sistema_idpk); except end;
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

{ TResponseClassAplicativoGet }

constructor TResponseClassAplicativoGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassAplicativoGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassAplicativoGet.CreateWithJson(const value : TJSonObject);
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
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
end;

constructor TResponseClassAplicativoGet.CreateWithJsonString(const value : string);
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
