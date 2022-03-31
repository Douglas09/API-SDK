unit mercurio.response.formaPagamento.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('fop_idpk')]
    FFop_idpk: integer;
    [Coluna('fop_descricao')]
    FFop_descricao: string;
    [Coluna('fop_empresa_idpk')]
    FFop_empresa_idpk: integer;
    [Coluna('fop_classificacao')]
    FFop_classificacao: integer;
    [Coluna('fop_dias_intervalo')]
    FFop_dias_intervalo: integer;
    [Coluna('fop_ultima_alteracao')]
    FFop_ultima_alteracao: string;
    [Coluna('fop_numero_maximo_parcelas')]
    FFop_numero_maximo_parcelas: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fop_idpk: integer read FFop_idpk write FFop_idpk;
    property Fop_descricao: string read FFop_descricao write FFop_descricao;
    property Fop_empresa_idpk: integer read FFop_empresa_idpk write FFop_empresa_idpk;
    property Fop_classificacao: integer read FFop_classificacao write FFop_classificacao;
    property Fop_dias_intervalo: integer read FFop_dias_intervalo write FFop_dias_intervalo;
    property Fop_ultima_alteracao: string read FFop_ultima_alteracao write FFop_ultima_alteracao;
    property Fop_numero_maximo_parcelas: integer read FFop_numero_maximo_parcelas write FFop_numero_maximo_parcelas;
  end;

  TResponseClassFormaPagamentoGet = class
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

  try value.TryGetValue<integer>('fop_idpk', self.FFop_idpk); except end;
  try value.TryGetValue<string>('fop_descricao', self.FFop_descricao); except end;
  try value.TryGetValue<integer>('fop_empresa_idpk', self.FFop_empresa_idpk); except end;
  try value.TryGetValue<integer>('fop_classificacao', self.FFop_classificacao); except end;
  try value.TryGetValue<integer>('fop_dias_intervalo', self.FFop_dias_intervalo); except end;
  try value.TryGetValue<string>('fop_ultima_alteracao', self.FFop_ultima_alteracao); except end;
  try value.TryGetValue<integer>('fop_numero_maximo_parcelas', self.FFop_numero_maximo_parcelas); except end;
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

{ TResponseClassFormaPagamentoGet }

constructor TResponseClassFormaPagamentoGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFormaPagamentoGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFormaPagamentoGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassFormaPagamentoGet.CreateWithJsonString(const value : string);
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
