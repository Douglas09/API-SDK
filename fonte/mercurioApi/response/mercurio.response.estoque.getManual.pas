unit mercurio.response.estoque.getManual;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('produto')]
    FProduto: string;
    [Coluna('emm_idpk')]
    FEmm_idpk: integer;
    [Coluna('emm_nome')]
    FEmm_nome: string;
    [Coluna('emm_origem')]
    FEmm_origem: string;
    [Coluna('emm_movimento')]
    FEmm_movimento: string;
    [Coluna('emm_observacao')]
    FEmm_observacao: string;
    [Coluna('emm_quantidade')]
    FEmm_quantidade: double;
    [Coluna('emm_filial_idpk')]
    FEmm_filial_idpk: string;
    [Coluna('emm_origem_idpk')]
    FEmm_origem_idpk: string;
    [Coluna('emm_empresa_idpk')]
    FEmm_empresa_idpk: integer;
    [Coluna('emm_produto_idpk')]
    FEmm_produto_idpk: integer;
    [Coluna('emm_produto_nome')]
    FEmm_produto_nome: string;
    [Coluna('emm_data_movimento')]
    FEmm_data_movimento: string;
    [Coluna('emm_valor_unitario')]
    FEmm_valor_unitario: double;
    [Coluna('emm_origem_documento')]
    FEmm_origem_documento: string;
    [Coluna('emm_ultima_alteracao')]
    FEmm_ultima_alteracao: string;
    [Coluna('emm_estoque_movimento_idpk')]
    FEmm_estoque_movimento_idpk: integer;
    [Coluna('emm_produto_variacao_estoque_idpk')]
    FEmm_produto_variacao_estoque_idpk: string;
    [Coluna('emm_produto_variacao_estoque_descricao')]
    FEmm_produto_variacao_estoque_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Produto: string read FProduto write FProduto;
    property Emm_idpk: integer read FEmm_idpk write FEmm_idpk;
    property Emm_nome: string read FEmm_nome write FEmm_nome;
    property Emm_origem: string read FEmm_origem write FEmm_origem;
    property Emm_movimento: string read FEmm_movimento write FEmm_movimento;
    property Emm_observacao: string read FEmm_observacao write FEmm_observacao;
    property Emm_quantidade: double read FEmm_quantidade write FEmm_quantidade;
    property Emm_filial_idpk: string read FEmm_filial_idpk write FEmm_filial_idpk;
    property Emm_origem_idpk: string read FEmm_origem_idpk write FEmm_origem_idpk;
    property Emm_empresa_idpk: integer read FEmm_empresa_idpk write FEmm_empresa_idpk;
    property Emm_produto_idpk: integer read FEmm_produto_idpk write FEmm_produto_idpk;
    property Emm_produto_nome: string read FEmm_produto_nome write FEmm_produto_nome;
    property Emm_data_movimento: string read FEmm_data_movimento write FEmm_data_movimento;
    property Emm_valor_unitario: double read FEmm_valor_unitario write FEmm_valor_unitario;
    property Emm_origem_documento: string read FEmm_origem_documento write FEmm_origem_documento;
    property Emm_ultima_alteracao: string read FEmm_ultima_alteracao write FEmm_ultima_alteracao;
    property Emm_estoque_movimento_idpk: integer read FEmm_estoque_movimento_idpk write FEmm_estoque_movimento_idpk;
    property Emm_produto_variacao_estoque_idpk: string read FEmm_produto_variacao_estoque_idpk write FEmm_produto_variacao_estoque_idpk;
    property Emm_produto_variacao_estoque_descricao: string read FEmm_produto_variacao_estoque_descricao write FEmm_produto_variacao_estoque_descricao;
  end;

  TResponseClassEstoqueGetManual = class
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
  try value.TryGetValue<integer>('emm_idpk', self.FEmm_idpk); except end;
  try value.TryGetValue<string>('emm_nome', self.FEmm_nome); except end;
  try value.TryGetValue<string>('emm_origem', self.FEmm_origem); except end;
  try value.TryGetValue<string>('emm_movimento', self.FEmm_movimento); except end;
  try value.TryGetValue<string>('emm_observacao', self.FEmm_observacao); except end;
  try value.TryGetValue<double>('emm_quantidade', self.FEmm_quantidade); except end;
  try value.TryGetValue<string>('emm_filial_idpk', self.FEmm_filial_idpk); except end;
  try value.TryGetValue<string>('emm_origem_idpk', self.FEmm_origem_idpk); except end;
  try value.TryGetValue<integer>('emm_empresa_idpk', self.FEmm_empresa_idpk); except end;
  try value.TryGetValue<integer>('emm_produto_idpk', self.FEmm_produto_idpk); except end;
  try value.TryGetValue<string>('emm_produto_nome', self.FEmm_produto_nome); except end;
  try value.TryGetValue<string>('emm_data_movimento', self.FEmm_data_movimento); except end;
  try value.TryGetValue<double>('emm_valor_unitario', self.FEmm_valor_unitario); except end;
  try value.TryGetValue<string>('emm_origem_documento', self.FEmm_origem_documento); except end;
  try value.TryGetValue<string>('emm_ultima_alteracao', self.FEmm_ultima_alteracao); except end;
  try value.TryGetValue<integer>('emm_estoque_movimento_idpk', self.FEmm_estoque_movimento_idpk); except end;
  try value.TryGetValue<string>('emm_produto_variacao_estoque_idpk', self.FEmm_produto_variacao_estoque_idpk); except end;
  try value.TryGetValue<string>('emm_produto_variacao_estoque_descricao', self.FEmm_produto_variacao_estoque_descricao); except end;
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

{ TResponseClassEstoqueGetManual }

constructor TResponseClassEstoqueGetManual.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassEstoqueGetManual.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassEstoqueGetManual.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassEstoqueGetManual.CreateWithJsonString(const value : string);
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
