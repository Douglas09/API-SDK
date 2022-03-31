unit mercurio.response.fornecedor.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TEmail = class
  private
    [Coluna('ema_idpk')]
    FEma_idpk: integer;
    [Coluna('ema_email')]
    FEma_email: string;
    [Coluna('ema_geral')]
    FEma_geral: integer;
    [Coluna('ema_comercial')]
    FEma_comercial: integer;
    [Coluna('ema_descricao')]
    FEma_descricao: string;
    [Coluna('ema_financeiro')]
    FEma_financeiro: integer;
    [Coluna('ema_filial_idpk')]
    FEma_filial_idpk: string;
    [Coluna('ema_pessoa_idpk')]
    FEma_pessoa_idpk: integer;
    [Coluna('ema_empresa_idpk')]
    FEma_empresa_idpk: integer;
    [Coluna('ema_ultima_alteracao')]
    FEma_ultima_alteracao: string;
    [Coluna('ema_documentos_fiscais')]
    FEma_documentos_fiscais: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Ema_idpk: integer read FEma_idpk write FEma_idpk;
    property Ema_email: string read FEma_email write FEma_email;
    property Ema_geral: integer read FEma_geral write FEma_geral;
    property Ema_comercial: integer read FEma_comercial write FEma_comercial;
    property Ema_descricao: string read FEma_descricao write FEma_descricao;
    property Ema_financeiro: integer read FEma_financeiro write FEma_financeiro;
    property Ema_filial_idpk: string read FEma_filial_idpk write FEma_filial_idpk;
    property Ema_pessoa_idpk: integer read FEma_pessoa_idpk write FEma_pessoa_idpk;
    property Ema_empresa_idpk: integer read FEma_empresa_idpk write FEma_empresa_idpk;
    property Ema_ultima_alteracao: string read FEma_ultima_alteracao write FEma_ultima_alteracao;
    property Ema_documentos_fiscais: integer read FEma_documentos_fiscais write FEma_documentos_fiscais;
  end;

  TPessoa = class
  private
    [Coluna('email')]
    FEmail: TList<TEmail>;
    [Coluna('pes_im')]
    FPes_im: string;
    [Coluna('pes_cnh')]
    FPes_cnh: string;
    [Coluna('endereco')]
    FEndereco: string;
    [Coluna('pes_cnae')]
    FPes_cnae: string;
    [Coluna('pes_idpk')]
    FPes_idpk: integer;
    [Coluna('pes_sexo')]
    FPes_sexo: string;
    [Coluna('telefone')]
    FTelefone: string;
    [Coluna('pes_ie_rg')]
    FPes_ie_rg: string;
    [Coluna('pes_conjuge')]
    FPes_conjuge: string;
    [Coluna('pessoa_foto')]
    FPessoa_foto: string;
    [Coluna('pes_cnpj_cpf')]
    FPes_cnpj_cpf: string;
    [Coluna('pes_filiacao')]
    FPes_filiacao: string;
    [Coluna('pes_rg_orgao')]
    FPes_rg_orgao: string;
    [Coluna('pes_rg_estado')]
    FPes_rg_estado: string;
    [Coluna('pes_rg_emissao')]
    FPes_rg_emissao: string;
    [Coluna('pes_cnae_codigo')]
    FPes_cnae_codigo: string;
    [Coluna('pes_filial_idpk')]
    FPes_filial_idpk: string;
    [Coluna('pes_observacoes')]
    FPes_observacoes: string;
    [Coluna('pes_responsavel')]
    FPes_responsavel: string;
    [Coluna('pes_tipo_pessoa')]
    FPes_tipo_pessoa: string;
    [Coluna('pes_cnh_validade')]
    FPes_cnh_validade: string;
    [Coluna('pes_empresa_idpk')]
    FPes_empresa_idpk: integer;
    [Coluna('pes_estado_civil')]
    FPes_estado_civil: string;
    [Coluna('pes_nome_fantasia')]
    FPes_nome_fantasia: string;
    [Coluna('pes_cnae_descricao')]
    FPes_cnae_descricao: string;
    [Coluna('pes_doc_estrangeiro')]
    FPes_doc_estrangeiro: string;
    [Coluna('pes_nome_razaosocial')]
    FPes_nome_razaosocial: string;
    [Coluna('pes_ultima_alteracao')]
    FPes_ultima_alteracao: string;
    [Coluna('pes_data_nascimento_abertura')]
    FPes_data_nascimento_abertura: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Email: TList<TEmail> read FEmail write FEmail;
    property Pes_im: string read FPes_im write FPes_im;
    property Pes_cnh: string read FPes_cnh write FPes_cnh;
    property Endereco: string read FEndereco write FEndereco;
    property Pes_cnae: string read FPes_cnae write FPes_cnae;
    property Pes_idpk: integer read FPes_idpk write FPes_idpk;
    property Pes_sexo: string read FPes_sexo write FPes_sexo;
    property Telefone: string read FTelefone write FTelefone;
    property Pes_ie_rg: string read FPes_ie_rg write FPes_ie_rg;
    property Pes_conjuge: string read FPes_conjuge write FPes_conjuge;
    property Pessoa_foto: string read FPessoa_foto write FPessoa_foto;
    property Pes_cnpj_cpf: string read FPes_cnpj_cpf write FPes_cnpj_cpf;
    property Pes_filiacao: string read FPes_filiacao write FPes_filiacao;
    property Pes_rg_orgao: string read FPes_rg_orgao write FPes_rg_orgao;
    property Pes_rg_estado: string read FPes_rg_estado write FPes_rg_estado;
    property Pes_rg_emissao: string read FPes_rg_emissao write FPes_rg_emissao;
    property Pes_cnae_codigo: string read FPes_cnae_codigo write FPes_cnae_codigo;
    property Pes_filial_idpk: string read FPes_filial_idpk write FPes_filial_idpk;
    property Pes_observacoes: string read FPes_observacoes write FPes_observacoes;
    property Pes_responsavel: string read FPes_responsavel write FPes_responsavel;
    property Pes_tipo_pessoa: string read FPes_tipo_pessoa write FPes_tipo_pessoa;
    property Pes_cnh_validade: string read FPes_cnh_validade write FPes_cnh_validade;
    property Pes_empresa_idpk: integer read FPes_empresa_idpk write FPes_empresa_idpk;
    property Pes_estado_civil: string read FPes_estado_civil write FPes_estado_civil;
    property Pes_nome_fantasia: string read FPes_nome_fantasia write FPes_nome_fantasia;
    property Pes_cnae_descricao: string read FPes_cnae_descricao write FPes_cnae_descricao;
    property Pes_doc_estrangeiro: string read FPes_doc_estrangeiro write FPes_doc_estrangeiro;
    property Pes_nome_razaosocial: string read FPes_nome_razaosocial write FPes_nome_razaosocial;
    property Pes_ultima_alteracao: string read FPes_ultima_alteracao write FPes_ultima_alteracao;
    property Pes_data_nascimento_abertura: string read FPes_data_nascimento_abertura write FPes_data_nascimento_abertura;
  end;

  TRegistros = class
  private
    [Coluna('pessoa')]
    FPessoa: TPessoa;
    [Coluna('for_idpk')]
    FFor_idpk: integer;
    [Coluna('for_site')]
    FFor_site: string;
    [Coluna('for_banco')]
    FFor_banco: string;
    [Coluna('for_conta')]
    FFor_conta: string;
    [Coluna('for_agencia')]
    FFor_agencia: string;
    [Coluna('for_filial_idpk')]
    FFor_filial_idpk: string;
    [Coluna('for_pessoa_idpk')]
    FFor_pessoa_idpk: integer;
    [Coluna('for_empresa_idpk')]
    FFor_empresa_idpk: integer;
    [Coluna('for_data_cadastro')]
    FFor_data_cadastro: string;
    [Coluna('for_pedido_minimo')]
    FFor_pedido_minimo: double;
    [Coluna('for_ultima_alteracao')]
    FFor_ultima_alteracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pessoa: TPessoa read FPessoa write FPessoa;
    property For_idpk: integer read FFor_idpk write FFor_idpk;
    property For_site: string read FFor_site write FFor_site;
    property For_banco: string read FFor_banco write FFor_banco;
    property For_conta: string read FFor_conta write FFor_conta;
    property For_agencia: string read FFor_agencia write FFor_agencia;
    property For_filial_idpk: string read FFor_filial_idpk write FFor_filial_idpk;
    property For_pessoa_idpk: integer read FFor_pessoa_idpk write FFor_pessoa_idpk;
    property For_empresa_idpk: integer read FFor_empresa_idpk write FFor_empresa_idpk;
    property For_data_cadastro: string read FFor_data_cadastro write FFor_data_cadastro;
    property For_pedido_minimo: double read FFor_pedido_minimo write FFor_pedido_minimo;
    property For_ultima_alteracao: string read FFor_ultima_alteracao write FFor_ultima_alteracao;
  end;

  TResponseClassFornecedorGet = class
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

{ TEmail }

constructor TEmail.Create;
begin
end;

destructor TEmail.Destroy;
begin

  inherited;
end;

constructor TEmail.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('ema_idpk', self.FEma_idpk); except end;
  try value.TryGetValue<string>('ema_email', self.FEma_email); except end;
  try value.TryGetValue<integer>('ema_geral', self.FEma_geral); except end;
  try value.TryGetValue<integer>('ema_comercial', self.FEma_comercial); except end;
  try value.TryGetValue<string>('ema_descricao', self.FEma_descricao); except end;
  try value.TryGetValue<integer>('ema_financeiro', self.FEma_financeiro); except end;
  try value.TryGetValue<string>('ema_filial_idpk', self.FEma_filial_idpk); except end;
  try value.TryGetValue<integer>('ema_pessoa_idpk', self.FEma_pessoa_idpk); except end;
  try value.TryGetValue<integer>('ema_empresa_idpk', self.FEma_empresa_idpk); except end;
  try value.TryGetValue<string>('ema_ultima_alteracao', self.FEma_ultima_alteracao); except end;
  try value.TryGetValue<integer>('ema_documentos_fiscais', self.FEma_documentos_fiscais); except end;
end;

constructor TEmail.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TPessoa }

constructor TPessoa.Create;
begin
  Email := TList<TEmail>.Create;
end;

destructor TPessoa.Destroy;
begin
  while (Email.Count > 0) do
  begin
    myFreeAndNil(Email.items[0]);
    Email.Delete(0);
  end;
  myFreeAndNil(Email);

  inherited;
end;

constructor TPessoa.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONArray>('email', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FEmail.add(
          TEmail.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('pes_im', self.FPes_im); except end;
  try value.TryGetValue<string>('pes_cnh', self.FPes_cnh); except end;
  try value.TryGetValue<string>('endereco', self.FEndereco); except end;
  try value.TryGetValue<string>('pes_cnae', self.FPes_cnae); except end;
  try value.TryGetValue<integer>('pes_idpk', self.FPes_idpk); except end;
  try value.TryGetValue<string>('pes_sexo', self.FPes_sexo); except end;
  try value.TryGetValue<string>('telefone', self.FTelefone); except end;
  try value.TryGetValue<string>('pes_ie_rg', self.FPes_ie_rg); except end;
  try value.TryGetValue<string>('pes_conjuge', self.FPes_conjuge); except end;
  try value.TryGetValue<string>('pessoa_foto', self.FPessoa_foto); except end;
  try value.TryGetValue<string>('pes_cnpj_cpf', self.FPes_cnpj_cpf); except end;
  try value.TryGetValue<string>('pes_filiacao', self.FPes_filiacao); except end;
  try value.TryGetValue<string>('pes_rg_orgao', self.FPes_rg_orgao); except end;
  try value.TryGetValue<string>('pes_rg_estado', self.FPes_rg_estado); except end;
  try value.TryGetValue<string>('pes_rg_emissao', self.FPes_rg_emissao); except end;
  try value.TryGetValue<string>('pes_cnae_codigo', self.FPes_cnae_codigo); except end;
  try value.TryGetValue<string>('pes_filial_idpk', self.FPes_filial_idpk); except end;
  try value.TryGetValue<string>('pes_observacoes', self.FPes_observacoes); except end;
  try value.TryGetValue<string>('pes_responsavel', self.FPes_responsavel); except end;
  try value.TryGetValue<string>('pes_tipo_pessoa', self.FPes_tipo_pessoa); except end;
  try value.TryGetValue<string>('pes_cnh_validade', self.FPes_cnh_validade); except end;
  try value.TryGetValue<integer>('pes_empresa_idpk', self.FPes_empresa_idpk); except end;
  try value.TryGetValue<string>('pes_estado_civil', self.FPes_estado_civil); except end;
  try value.TryGetValue<string>('pes_nome_fantasia', self.FPes_nome_fantasia); except end;
  try value.TryGetValue<string>('pes_cnae_descricao', self.FPes_cnae_descricao); except end;
  try value.TryGetValue<string>('pes_doc_estrangeiro', self.FPes_doc_estrangeiro); except end;
  try value.TryGetValue<string>('pes_nome_razaosocial', self.FPes_nome_razaosocial); except end;
  try value.TryGetValue<string>('pes_ultima_alteracao', self.FPes_ultima_alteracao); except end;
  try value.TryGetValue<string>('pes_data_nascimento_abertura', self.FPes_data_nascimento_abertura); except end;
end;

constructor TPessoa.CreateWithJsonString(const value : string);
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
  Pessoa := TPessoa.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Pessoa);

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONObject>('pessoa', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FPessoa);
      self.FPessoa := TPessoa.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('for_idpk', self.FFor_idpk); except end;
  try value.TryGetValue<string>('for_site', self.FFor_site); except end;
  try value.TryGetValue<string>('for_banco', self.FFor_banco); except end;
  try value.TryGetValue<string>('for_conta', self.FFor_conta); except end;
  try value.TryGetValue<string>('for_agencia', self.FFor_agencia); except end;
  try value.TryGetValue<string>('for_filial_idpk', self.FFor_filial_idpk); except end;
  try value.TryGetValue<integer>('for_pessoa_idpk', self.FFor_pessoa_idpk); except end;
  try value.TryGetValue<integer>('for_empresa_idpk', self.FFor_empresa_idpk); except end;
  try value.TryGetValue<string>('for_data_cadastro', self.FFor_data_cadastro); except end;
  try value.TryGetValue<double>('for_pedido_minimo', self.FFor_pedido_minimo); except end;
  try value.TryGetValue<string>('for_ultima_alteracao', self.FFor_ultima_alteracao); except end;
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

{ TResponseClassFornecedorGet }

constructor TResponseClassFornecedorGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFornecedorGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFornecedorGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassFornecedorGet.CreateWithJsonString(const value : string);
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
