unit mercurio.response.usuarioEmpresaPushNotificationGet;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TAplicativo = class
  private
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
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Apl_data: string read FApl_data write FApl_data;
    property Apl_idpk: integer read FApl_idpk write FApl_idpk;
    property Apl_nome: string read FApl_nome write FApl_nome;
    property Apl_tipo: string read FApl_tipo write FApl_tipo;
    property Apl_package: string read FApl_package write FApl_package;
  end;

  TRegistros = class
  private
    [Coluna('uep_idpk')]
    FUep_idpk: integer;
    [Coluna('uep_token')]
    FUep_token: string;
    [Coluna('aplicativo')]
    FAplicativo: TAplicativo;
    [Coluna('uep_filial_idpk')]
    FUep_filial_idpk: string;
    [Coluna('uep_empresa_idpk')]
    FUep_empresa_idpk: integer;
    [Coluna('uep_aplicativo_idpk')]
    FUep_aplicativo_idpk: integer;
    [Coluna('uep_ultima_alteracao')]
    FUep_ultima_alteracao: string;
    [Coluna('uep_usuario_empresa_idpk')]
    FUep_usuario_empresa_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Uep_idpk: integer read FUep_idpk write FUep_idpk;
    property Uep_token: string read FUep_token write FUep_token;
    property Aplicativo: TAplicativo read FAplicativo write FAplicativo;
    property Uep_filial_idpk: string read FUep_filial_idpk write FUep_filial_idpk;
    property Uep_empresa_idpk: integer read FUep_empresa_idpk write FUep_empresa_idpk;
    property Uep_aplicativo_idpk: integer read FUep_aplicativo_idpk write FUep_aplicativo_idpk;
    property Uep_ultima_alteracao: string read FUep_ultima_alteracao write FUep_ultima_alteracao;
    property Uep_usuario_empresa_idpk: integer read FUep_usuario_empresa_idpk write FUep_usuario_empresa_idpk;
  end;

  TResponseClassUsuarioEmpresaPushNotificationGet = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('total_registros')]
    FTotal_registros: integer;
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
    property Total_registros: integer read FTotal_registros write FTotal_registros;
    property Status: string read FStatus write FStatus;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
  end;

implementation

uses System.SysUtils;

{ TAplicativo }

constructor TAplicativo.Create;
begin
end;

destructor TAplicativo.Destroy;
begin

  inherited;
end;

constructor TAplicativo.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('apl_data', self.FApl_data); except end;
  try value.TryGetValue<integer>('apl_idpk', self.FApl_idpk); except end;
  try value.TryGetValue<string>('apl_nome', self.FApl_nome); except end;
  try value.TryGetValue<string>('apl_tipo', self.FApl_tipo); except end;
  try value.TryGetValue<string>('apl_package', self.FApl_package); except end;
end;

constructor TAplicativo.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TRegistros }

constructor TRegistros.Create;
begin
  Aplicativo := TAplicativo.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Aplicativo);

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('uep_idpk', self.FUep_idpk); except end;
  try value.TryGetValue<string>('uep_token', self.FUep_token); except end;
  try
    value.TryGetValue<TJSONObject>('aplicativo', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FAplicativo);
      self.FAplicativo := TAplicativo.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('uep_filial_idpk', self.FUep_filial_idpk); except end;
  try value.TryGetValue<integer>('uep_empresa_idpk', self.FUep_empresa_idpk); except end;
  try value.TryGetValue<integer>('uep_aplicativo_idpk', self.FUep_aplicativo_idpk); except end;
  try value.TryGetValue<string>('uep_ultima_alteracao', self.FUep_ultima_alteracao); except end;
  try value.TryGetValue<integer>('uep_usuario_empresa_idpk', self.FUep_usuario_empresa_idpk); except end;
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

{ TResponseClassUsuarioEmpresaPushNotificationGet }

constructor TResponseClassUsuarioEmpresaPushNotificationGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassUsuarioEmpresaPushNotificationGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassUsuarioEmpresaPushNotificationGet.CreateWithJson(const value : TJSonObject);
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
  try value.TryGetValue<integer>('total_registros', self.FTotal_registros); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
end;

constructor TResponseClassUsuarioEmpresaPushNotificationGet.CreateWithJsonString(const value : string);
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
