unit mercurio.response.estoque.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('produto')]
    FProduto: string;
    [Coluna('esm_idpk')]
    FEsm_idpk: integer;
    [Coluna('esm_nome')]
    FEsm_nome: string;
    [Coluna('esm_origem')]
    FEsm_origem: string;
    [Coluna('esm_movimento')]
    FEsm_movimento: string;
    [Coluna('esm_observacao')]
    FEsm_observacao: string;
    [Coluna('esm_quantidade')]
    FEsm_quantidade: double;
    [Coluna('esm_filial_idpk')]
    FEsm_filial_idpk: string;
    [Coluna('esm_origem_idpk')]
    FEsm_origem_idpk: string;
    [Coluna('esm_empresa_idpk')]
    FEsm_empresa_idpk: integer;
    [Coluna('esm_produto_idpk')]
    FEsm_produto_idpk: string;
    [Coluna('esm_produto_nome')]
    FEsm_produto_nome: string;
    [Coluna('esm_data_movimento')]
    FEsm_data_movimento: string;
    [Coluna('esm_valor_unitario')]
    FEsm_valor_unitario: double;
    [Coluna('esm_origem_documento')]
    FEsm_origem_documento: string;
    [Coluna('esm_ultima_alteracao')]
    FEsm_ultima_alteracao: string;
    [Coluna('esm_produto_variacao_estoque_idpk')]
    FEsm_produto_variacao_estoque_idpk: string;
    [Coluna('esm_produto_variacao_estoque_descricao')]
    FEsm_produto_variacao_estoque_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Produto: string read FProduto write FProduto;
    property Esm_idpk: integer read FEsm_idpk write FEsm_idpk;
    property Esm_nome: string read FEsm_nome write FEsm_nome;
    property Esm_origem: string read FEsm_origem write FEsm_origem;
    property Esm_movimento: string read FEsm_movimento write FEsm_movimento;
    property Esm_observacao: string read FEsm_observacao write FEsm_observacao;
    property Esm_quantidade: double read FEsm_quantidade write FEsm_quantidade;
    property Esm_filial_idpk: string read FEsm_filial_idpk write FEsm_filial_idpk;
    property Esm_origem_idpk: string read FEsm_origem_idpk write FEsm_origem_idpk;
    property Esm_empresa_idpk: integer read FEsm_empresa_idpk write FEsm_empresa_idpk;
    property Esm_produto_idpk: string read FEsm_produto_idpk write FEsm_produto_idpk;
    property Esm_produto_nome: string read FEsm_produto_nome write FEsm_produto_nome;
    property Esm_data_movimento: string read FEsm_data_movimento write FEsm_data_movimento;
    property Esm_valor_unitario: double read FEsm_valor_unitario write FEsm_valor_unitario;
    property Esm_origem_documento: string read FEsm_origem_documento write FEsm_origem_documento;
    property Esm_ultima_alteracao: string read FEsm_ultima_alteracao write FEsm_ultima_alteracao;
    property Esm_produto_variacao_estoque_idpk: string read FEsm_produto_variacao_estoque_idpk write FEsm_produto_variacao_estoque_idpk;
    property Esm_produto_variacao_estoque_descricao: string read FEsm_produto_variacao_estoque_descricao write FEsm_produto_variacao_estoque_descricao;
  end;

  TResponseClassEstoqueGet = class
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

  try value.TryGetValue<string>('produto', self.FProduto); except end;
  try value.TryGetValue<integer>('esm_idpk', self.FEsm_idpk); except end;
  try value.TryGetValue<string>('esm_nome', self.FEsm_nome); except end;
  try value.TryGetValue<string>('esm_origem', self.FEsm_origem); except end;
  try value.TryGetValue<string>('esm_movimento', self.FEsm_movimento); except end;
  try value.TryGetValue<string>('esm_observacao', self.FEsm_observacao); except end;
  try value.TryGetValue<double>('esm_quantidade', self.FEsm_quantidade); except end;
  try value.TryGetValue<string>('esm_filial_idpk', self.FEsm_filial_idpk); except end;
  try value.TryGetValue<string>('esm_origem_idpk', self.FEsm_origem_idpk); except end;
  try value.TryGetValue<integer>('esm_empresa_idpk', self.FEsm_empresa_idpk); except end;
  try value.TryGetValue<string>('esm_produto_idpk', self.FEsm_produto_idpk); except end;
  try value.TryGetValue<string>('esm_produto_nome', self.FEsm_produto_nome); except end;
  try value.TryGetValue<string>('esm_data_movimento', self.FEsm_data_movimento); except end;
  try value.TryGetValue<double>('esm_valor_unitario', self.FEsm_valor_unitario); except end;
  try value.TryGetValue<string>('esm_origem_documento', self.FEsm_origem_documento); except end;
  try value.TryGetValue<string>('esm_ultima_alteracao', self.FEsm_ultima_alteracao); except end;
  try value.TryGetValue<string>('esm_produto_variacao_estoque_idpk', self.FEsm_produto_variacao_estoque_idpk); except end;
  try value.TryGetValue<string>('esm_produto_variacao_estoque_descricao', self.FEsm_produto_variacao_estoque_descricao); except end;
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

{ TResponseClassEstoqueGet }

constructor TResponseClassEstoqueGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassEstoqueGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassEstoqueGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassEstoqueGet.CreateWithJsonString(const value : string);
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
