unit mercurio.response.empresa.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TPais = class
  private
    [Coluna('pai_idpk')]
    FPai_idpk: integer;
    [Coluna('pai_descricao')]
    FPai_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pai_idpk: integer read FPai_idpk write FPai_idpk;
    property Pai_descricao: string read FPai_descricao write FPai_descricao;
  end;

  TCidade = class
  private
    [Coluna('pais')]
    FPais: TPais;
    [Coluna('cid_uf')]
    FCid_uf: string;
    [Coluna('cid_ibge')]
    FCid_ibge: string;
    [Coluna('cid_idpk')]
    FCid_idpk: integer;
    [Coluna('cid_cidade')]
    FCid_cidade: string;
    [Coluna('cid_timezone')]
    FCid_timezone: string;
    [Coluna('cid_pais_idpk')]
    FCid_pais_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pais: TPais read FPais write FPais;
    property Cid_uf: string read FCid_uf write FCid_uf;
    property Cid_ibge: string read FCid_ibge write FCid_ibge;
    property Cid_idpk: integer read FCid_idpk write FCid_idpk;
    property Cid_cidade: string read FCid_cidade write FCid_cidade;
    property Cid_timezone: string read FCid_timezone write FCid_timezone;
    property Cid_pais_idpk: integer read FCid_pais_idpk write FCid_pais_idpk;
  end;

  TCrt = class
  private
    [Coluna('crt_crt')]
    FCrt_crt: integer;
    [Coluna('crt_idpk')]
    FCrt_idpk: integer;
    [Coluna('crt_descricao')]
    FCrt_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Crt_crt: integer read FCrt_crt write FCrt_crt;
    property Crt_idpk: integer read FCrt_idpk write FCrt_idpk;
    property Crt_descricao: string read FCrt_descricao write FCrt_descricao;
  end;

  TRegistros = class
  private
    [Coluna('crt')]
    FCrt: TCrt;
    [Coluna('cidade')]
    FCidade: TCidade;
    [Coluna('emp_ie')]
    FEmp_ie: string;
    [Coluna('emp_im')]
    FEmp_im: string;
    [Coluna('emp_cep')]
    FEmp_cep: string;
    [Coluna('emp_cnae')]
    FEmp_cnae: string;
    [Coluna('emp_idpk')]
    FEmp_idpk: integer;
    [Coluna('emp_email')]
    FEmp_email: string;
    [Coluna('emp_rntrc')]
    FEmp_rntrc: string;
    [Coluna('emp_bairro')]
    FEmp_bairro: string;
    [Coluna('emp_cnpj_cpf')]
    FEmp_cnpj_cpf: string;
    [Coluna('emp_crt_idpk')]
    FEmp_crt_idpk: integer;
    [Coluna('emp_rg_orgao')]
    FEmp_rg_orgao: string;
    [Coluna('emp_rg_estado')]
    FEmp_rg_estado: string;
    [Coluna('emp_logradouro')]
    FEmp_logradouro: string;
    [Coluna('emp_plano_idpk')]
    FEmp_plano_idpk: integer;
    [Coluna('emp_rg_emissao')]
    FEmp_rg_emissao: string;
    [Coluna('emp_usafiliais')]
    FEmp_usafiliais: integer;
    [Coluna('emp_certificado')]
    FEmp_certificado: string;
    [Coluna('emp_cidade_idpk')]
    FEmp_cidade_idpk: integer;
    [Coluna('emp_codigoseapi')]
    FEmp_codigoseapi: integer;
    [Coluna('emp_complemento')]
    FEmp_complemento: string;
    [Coluna('emp_contador_uf')]
    FEmp_contador_uf: string;
    [Coluna('emp_observacoes')]
    FEmp_observacoes: string;
    [Coluna('emp_responsavel')]
    FEmp_responsavel: string;
    [Coluna('emp_tipo_pessoa')]
    FEmp_tipo_pessoa: string;
    [Coluna('emp_contador_cep')]
    FEmp_contador_cep: string;
    [Coluna('emp_contador_cpf')]
    FEmp_contador_cpf: string;
    [Coluna('emp_contador_crc')]
    FEmp_contador_crc: string;
    [Coluna('emp_microempresa')]
    FEmp_microempresa: integer;
    [Coluna('emp_sistema_idpk')]
    FEmp_sistema_idpk: integer;
    [Coluna('emp_contador_cnpj')]
    FEmp_contador_cnpj: string;
    [Coluna('emp_contador_fone')]
    FEmp_contador_fone: string;
    [Coluna('emp_contador_ibge')]
    FEmp_contador_ibge: string;
    [Coluna('emp_contador_nome')]
    FEmp_contador_nome: string;
    [Coluna('emp_imposto_texto')]
    FEmp_imposto_texto: string;
    [Coluna('emp_logotipo_foto')]
    FEmp_logotipo_foto: string;
    [Coluna('emp_nome_fantasia')]
    FEmp_nome_fantasia: string;
    [Coluna('emp_chave_cadastro')]
    FEmp_chave_cadastro: string;
    [Coluna('emp_contador_email')]
    FEmp_contador_email: string;
    [Coluna('emp_certificado_csc')]
    FEmp_certificado_CSC: string;
    [Coluna('emp_contador_bairro')]
    FEmp_contador_bairro: string;
    [Coluna('emp_contador_cidade')]
    FEmp_contador_cidade: string;
    [Coluna('emp_contador_numero')]
    FEmp_contador_numero: string;
    [Coluna('emp_doc_estrangeiro')]
    FEmp_doc_estrangeiro: string;
    [Coluna('emp_fiscal_ambiente')]
    FEmp_fiscal_ambiente: integer;
    [Coluna('emp_financeiro_multa')]
    FEmp_financeiro_multa: double;
    [Coluna('emp_imposto_fcpgerar')]
    FEmp_imposto_fcpgerar: integer;
    [Coluna('emp_nome_razaosocial')]
    FEmp_nome_razaosocial: string;
    [Coluna('emp_ultima_alteracao')]
    FEmp_ultima_alteracao: string;
    [Coluna('emp_certificado_senha')]
    FEmp_certificado_senha: string;
    [Coluna('emp_financeiro_sabado')]
    FEmp_financeiro_sabado: integer;
    [Coluna('emp_fiscal_uf_emissao')]
    FEmp_fiscal_uf_emissao: string;
    [Coluna('emp_imposto_creditosn')]
    FEmp_imposto_creditosn: double;
    [Coluna('emp_logradouro_numero')]
    FEmp_logradouro_numero: string;
    [Coluna('emp_certificado_csc_id')]
    FEmp_certificado_CSC_id: string;
    [Coluna('emp_financeiro_domingo')]
    FEmp_financeiro_domingo: integer;
    [Coluna('emp_financeiro_feriado')]
    FEmp_financeiro_feriado: integer;
    [Coluna('emp_imposto_cfoppadrao')]
    FEmp_imposto_cfoppadrao: string;
    [Coluna('emp_logotipo_dataenvio')]
    FEmp_logotipo_dataenvio: string;
    [Coluna('emp_ramoatividade_idpk')]
    FEmp_ramoatividade_idpk: integer;
    [Coluna('emp_representante_idpk')]
    FEmp_representante_idpk: string;
    [Coluna('emp_telefone_principal')]
    FEmp_telefone_principal: string;
    [Coluna('emp_contador_logradouro')]
    FEmp_contador_logradouro: string;
    [Coluna('emp_cpf_responsavelsiga')]
    FEmp_cpf_responsavelsiga: string;
    [Coluna('emp_imposto_aliquotapis')]
    FEmp_imposto_aliquotapis: double;
    [Coluna('emp_imposto_fcpaliquota')]
    FEmp_imposto_fcpaliquota: double;
    [Coluna('emp_imposto_icmscredito')]
    FEmp_imposto_icmscredito: double;
    [Coluna('emp_telefone_secundario')]
    FEmp_telefone_secundario: string;
    [Coluna('emp_certificado_validade')]
    FEmp_certificado_validade: string;
    [Coluna('emp_contador_cidade_idpk')]
    FEmp_contador_cidade_idpk: integer;
    [Coluna('emp_contador_complemento')]
    FEmp_contador_complemento: string;
    [Coluna('emp_contador_razaosocial')]
    FEmp_contador_razaosocial: string;
    [Coluna('emp_financeiro_juros_mes')]
    FEmp_financeiro_juros_mes: double;
    [Coluna('emp_certificado_dataenvio')]
    FEmp_certificado_dataenvio: string;
    [Coluna('emp_imposto_permitecredito')]
    FEmp_imposto_permitecredito: integer;
    [Coluna('emp_produto_variacao_tipo1')]
    FEmp_produto_variacao_tipo1: string;
    [Coluna('emp_produto_variacao_tipo2')]
    FEmp_produto_variacao_tipo2: string;
    [Coluna('emp_imposto_aliqiuotacofins')]
    FEmp_imposto_aliqiuotacofins: double;
    [Coluna('emp_imposto_contribuinteipi')]
    FEmp_imposto_contribuinteipi: integer;
    [Coluna('emp_imposto_regimepiscofins')]
    FEmp_imposto_regimepiscofins: integer;
    [Coluna('emp_data_nascimento_abertura')]
    FEmp_data_nascimento_abertura: string;
    [Coluna('emp_financeiro_carencia_dias')]
    FEmp_financeiro_carencia_dias: integer;
    [Coluna('emp_imposto_funrural_aliquota')]
    FEmp_imposto_funrural_aliquota: double;
    [Coluna('emp_imposto_gerardescontonota')]
    FEmp_imposto_gerardescontonota: integer;
    [Coluna('emp_imposto_funrural_descontar')]
    FEmp_imposto_funrural_descontar: integer;
    [Coluna('emp_imposto_piscofinsmonofasico')]
    FEmp_imposto_piscofinsmonofasico: integer;
    [Coluna('emp_imposto_icmsstcalculoreverso')]
    FEmp_imposto_icmsstcalculoreverso: integer;
    [Coluna('emp_imposto_substitutotributario')]
    FEmp_imposto_substitutotributario: integer;
    [Coluna('emp_financeiro_categoria_venda_idpk')]
    FEmp_financeiro_categoria_venda_idpk: string;
    [Coluna('emp_imposto_gerarfretenotapercentual')]
    FEmp_imposto_gerarfretenotapercentual: double;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Crt: TCrt read FCrt write FCrt;
    property Cidade: TCidade read FCidade write FCidade;
    property Emp_ie: string read FEmp_ie write FEmp_ie;
    property Emp_im: string read FEmp_im write FEmp_im;
    property Emp_cep: string read FEmp_cep write FEmp_cep;
    property Emp_cnae: string read FEmp_cnae write FEmp_cnae;
    property Emp_idpk: integer read FEmp_idpk write FEmp_idpk;
    property Emp_email: string read FEmp_email write FEmp_email;
    property Emp_rntrc: string read FEmp_rntrc write FEmp_rntrc;
    property Emp_bairro: string read FEmp_bairro write FEmp_bairro;
    property Emp_cnpj_cpf: string read FEmp_cnpj_cpf write FEmp_cnpj_cpf;
    property Emp_crt_idpk: integer read FEmp_crt_idpk write FEmp_crt_idpk;
    property Emp_rg_orgao: string read FEmp_rg_orgao write FEmp_rg_orgao;
    property Emp_rg_estado: string read FEmp_rg_estado write FEmp_rg_estado;
    property Emp_logradouro: string read FEmp_logradouro write FEmp_logradouro;
    property Emp_plano_idpk: integer read FEmp_plano_idpk write FEmp_plano_idpk;
    property Emp_rg_emissao: string read FEmp_rg_emissao write FEmp_rg_emissao;
    property Emp_usafiliais: integer read FEmp_usafiliais write FEmp_usafiliais;
    property Emp_certificado: string read FEmp_certificado write FEmp_certificado;
    property Emp_cidade_idpk: integer read FEmp_cidade_idpk write FEmp_cidade_idpk;
    property Emp_codigoseapi: integer read FEmp_codigoseapi write FEmp_codigoseapi;
    property Emp_complemento: string read FEmp_complemento write FEmp_complemento;
    property Emp_contador_uf: string read FEmp_contador_uf write FEmp_contador_uf;
    property Emp_observacoes: string read FEmp_observacoes write FEmp_observacoes;
    property Emp_responsavel: string read FEmp_responsavel write FEmp_responsavel;
    property Emp_tipo_pessoa: string read FEmp_tipo_pessoa write FEmp_tipo_pessoa;
    property Emp_contador_cep: string read FEmp_contador_cep write FEmp_contador_cep;
    property Emp_contador_cpf: string read FEmp_contador_cpf write FEmp_contador_cpf;
    property Emp_contador_crc: string read FEmp_contador_crc write FEmp_contador_crc;
    property Emp_microempresa: integer read FEmp_microempresa write FEmp_microempresa;
    property Emp_sistema_idpk: integer read FEmp_sistema_idpk write FEmp_sistema_idpk;
    property Emp_contador_cnpj: string read FEmp_contador_cnpj write FEmp_contador_cnpj;
    property Emp_contador_fone: string read FEmp_contador_fone write FEmp_contador_fone;
    property Emp_contador_ibge: string read FEmp_contador_ibge write FEmp_contador_ibge;
    property Emp_contador_nome: string read FEmp_contador_nome write FEmp_contador_nome;
    property Emp_imposto_texto: string read FEmp_imposto_texto write FEmp_imposto_texto;
    property Emp_logotipo_foto: string read FEmp_logotipo_foto write FEmp_logotipo_foto;
    property Emp_nome_fantasia: string read FEmp_nome_fantasia write FEmp_nome_fantasia;
    property Emp_chave_cadastro: string read FEmp_chave_cadastro write FEmp_chave_cadastro;
    property Emp_contador_email: string read FEmp_contador_email write FEmp_contador_email;
    property Emp_certificado_CSC: string read FEmp_certificado_CSC write FEmp_certificado_CSC;
    property Emp_contador_bairro: string read FEmp_contador_bairro write FEmp_contador_bairro;
    property Emp_contador_cidade: string read FEmp_contador_cidade write FEmp_contador_cidade;
    property Emp_contador_numero: string read FEmp_contador_numero write FEmp_contador_numero;
    property Emp_doc_estrangeiro: string read FEmp_doc_estrangeiro write FEmp_doc_estrangeiro;
    property Emp_fiscal_ambiente: integer read FEmp_fiscal_ambiente write FEmp_fiscal_ambiente;
    property Emp_financeiro_multa: double read FEmp_financeiro_multa write FEmp_financeiro_multa;
    property Emp_imposto_fcpgerar: integer read FEmp_imposto_fcpgerar write FEmp_imposto_fcpgerar;
    property Emp_nome_razaosocial: string read FEmp_nome_razaosocial write FEmp_nome_razaosocial;
    property Emp_ultima_alteracao: string read FEmp_ultima_alteracao write FEmp_ultima_alteracao;
    property Emp_certificado_senha: string read FEmp_certificado_senha write FEmp_certificado_senha;
    property Emp_financeiro_sabado: integer read FEmp_financeiro_sabado write FEmp_financeiro_sabado;
    property Emp_fiscal_uf_emissao: string read FEmp_fiscal_uf_emissao write FEmp_fiscal_uf_emissao;
    property Emp_imposto_creditosn: double read FEmp_imposto_creditosn write FEmp_imposto_creditosn;
    property Emp_logradouro_numero: string read FEmp_logradouro_numero write FEmp_logradouro_numero;
    property Emp_certificado_CSC_id: string read FEmp_certificado_CSC_id write FEmp_certificado_CSC_id;
    property Emp_financeiro_domingo: integer read FEmp_financeiro_domingo write FEmp_financeiro_domingo;
    property Emp_financeiro_feriado: integer read FEmp_financeiro_feriado write FEmp_financeiro_feriado;
    property Emp_imposto_cfoppadrao: string read FEmp_imposto_cfoppadrao write FEmp_imposto_cfoppadrao;
    property Emp_logotipo_dataenvio: string read FEmp_logotipo_dataenvio write FEmp_logotipo_dataenvio;
    property Emp_ramoatividade_idpk: integer read FEmp_ramoatividade_idpk write FEmp_ramoatividade_idpk;
    property Emp_representante_idpk: string read FEmp_representante_idpk write FEmp_representante_idpk;
    property Emp_telefone_principal: string read FEmp_telefone_principal write FEmp_telefone_principal;
    property Emp_contador_logradouro: string read FEmp_contador_logradouro write FEmp_contador_logradouro;
    property Emp_cpf_responsavelsiga: string read FEmp_cpf_responsavelsiga write FEmp_cpf_responsavelsiga;
    property Emp_imposto_aliquotapis: double read FEmp_imposto_aliquotapis write FEmp_imposto_aliquotapis;
    property Emp_imposto_fcpaliquota: double read FEmp_imposto_fcpaliquota write FEmp_imposto_fcpaliquota;
    property Emp_imposto_icmscredito: double read FEmp_imposto_icmscredito write FEmp_imposto_icmscredito;
    property Emp_telefone_secundario: string read FEmp_telefone_secundario write FEmp_telefone_secundario;
    property Emp_certificado_validade: string read FEmp_certificado_validade write FEmp_certificado_validade;
    property Emp_contador_cidade_idpk: integer read FEmp_contador_cidade_idpk write FEmp_contador_cidade_idpk;
    property Emp_contador_complemento: string read FEmp_contador_complemento write FEmp_contador_complemento;
    property Emp_contador_razaosocial: string read FEmp_contador_razaosocial write FEmp_contador_razaosocial;
    property Emp_financeiro_juros_mes: double read FEmp_financeiro_juros_mes write FEmp_financeiro_juros_mes;
    property Emp_certificado_dataenvio: string read FEmp_certificado_dataenvio write FEmp_certificado_dataenvio;
    property Emp_imposto_permitecredito: integer read FEmp_imposto_permitecredito write FEmp_imposto_permitecredito;
    property Emp_produto_variacao_tipo1: string read FEmp_produto_variacao_tipo1 write FEmp_produto_variacao_tipo1;
    property Emp_produto_variacao_tipo2: string read FEmp_produto_variacao_tipo2 write FEmp_produto_variacao_tipo2;
    property Emp_imposto_aliqiuotacofins: double read FEmp_imposto_aliqiuotacofins write FEmp_imposto_aliqiuotacofins;
    property Emp_imposto_contribuinteipi: integer read FEmp_imposto_contribuinteipi write FEmp_imposto_contribuinteipi;
    property Emp_imposto_regimepiscofins: integer read FEmp_imposto_regimepiscofins write FEmp_imposto_regimepiscofins;
    property Emp_data_nascimento_abertura: string read FEmp_data_nascimento_abertura write FEmp_data_nascimento_abertura;
    property Emp_financeiro_carencia_dias: integer read FEmp_financeiro_carencia_dias write FEmp_financeiro_carencia_dias;
    property Emp_imposto_funrural_aliquota: double read FEmp_imposto_funrural_aliquota write FEmp_imposto_funrural_aliquota;
    property Emp_imposto_gerardescontonota: integer read FEmp_imposto_gerardescontonota write FEmp_imposto_gerardescontonota;
    property Emp_imposto_funrural_descontar: integer read FEmp_imposto_funrural_descontar write FEmp_imposto_funrural_descontar;
    property Emp_imposto_piscofinsmonofasico: integer read FEmp_imposto_piscofinsmonofasico write FEmp_imposto_piscofinsmonofasico;
    property Emp_imposto_icmsstcalculoreverso: integer read FEmp_imposto_icmsstcalculoreverso write FEmp_imposto_icmsstcalculoreverso;
    property Emp_imposto_substitutotributario: integer read FEmp_imposto_substitutotributario write FEmp_imposto_substitutotributario;
    property Emp_financeiro_categoria_venda_idpk: string read FEmp_financeiro_categoria_venda_idpk write FEmp_financeiro_categoria_venda_idpk;
    property Emp_imposto_gerarfretenotapercentual: double read FEmp_imposto_gerarfretenotapercentual write FEmp_imposto_gerarfretenotapercentual;
  end;

  TResponseClassEmpresaGet = class
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

{ TPais }

constructor TPais.Create;
begin
end;

destructor TPais.Destroy;
begin

  inherited;
end;

constructor TPais.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('pai_idpk', self.FPai_idpk); except end;
  try value.TryGetValue<string>('pai_descricao', self.FPai_descricao); except end;
end;

constructor TPais.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TCidade }

constructor TCidade.Create;
begin
  Pais := TPais.Create;
end;

destructor TCidade.Destroy;
begin
  myFreeAndNil(Pais);

  inherited;
end;

constructor TCidade.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONObject>('pais', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FPais);
      self.FPais := TPais.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('cid_uf', self.FCid_uf); except end;
  try value.TryGetValue<string>('cid_ibge', self.FCid_ibge); except end;
  try value.TryGetValue<integer>('cid_idpk', self.FCid_idpk); except end;
  try value.TryGetValue<string>('cid_cidade', self.FCid_cidade); except end;
  try value.TryGetValue<string>('cid_timezone', self.FCid_timezone); except end;
  try value.TryGetValue<integer>('cid_pais_idpk', self.FCid_pais_idpk); except end;
end;

constructor TCidade.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TCrt }

constructor TCrt.Create;
begin
end;

destructor TCrt.Destroy;
begin

  inherited;
end;

constructor TCrt.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('crt_crt', self.FCrt_crt); except end;
  try value.TryGetValue<integer>('crt_idpk', self.FCrt_idpk); except end;
  try value.TryGetValue<string>('crt_descricao', self.FCrt_descricao); except end;
end;

constructor TCrt.CreateWithJsonString(const value : string);
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
  Crt := TCrt.Create;
  Cidade := TCidade.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Crt);
  myFreeAndNil(Cidade);

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
    value.TryGetValue<TJSONObject>('crt', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FCrt);
      self.FCrt := TCrt.CreateWithJson(obj);
    end;
  except
  end;
  try
    value.TryGetValue<TJSONObject>('cidade', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FCidade);
      self.FCidade := TCidade.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('emp_ie', self.FEmp_ie); except end;
  try value.TryGetValue<string>('emp_im', self.FEmp_im); except end;
  try value.TryGetValue<string>('emp_cep', self.FEmp_cep); except end;
  try value.TryGetValue<string>('emp_cnae', self.FEmp_cnae); except end;
  try value.TryGetValue<integer>('emp_idpk', self.FEmp_idpk); except end;
  try value.TryGetValue<string>('emp_email', self.FEmp_email); except end;
  try value.TryGetValue<string>('emp_rntrc', self.FEmp_rntrc); except end;
  try value.TryGetValue<string>('emp_bairro', self.FEmp_bairro); except end;
  try value.TryGetValue<string>('emp_cnpj_cpf', self.FEmp_cnpj_cpf); except end;
  try value.TryGetValue<integer>('emp_crt_idpk', self.FEmp_crt_idpk); except end;
  try value.TryGetValue<string>('emp_rg_orgao', self.FEmp_rg_orgao); except end;
  try value.TryGetValue<string>('emp_rg_estado', self.FEmp_rg_estado); except end;
  try value.TryGetValue<string>('emp_logradouro', self.FEmp_logradouro); except end;
  try value.TryGetValue<integer>('emp_plano_idpk', self.FEmp_plano_idpk); except end;
  try value.TryGetValue<string>('emp_rg_emissao', self.FEmp_rg_emissao); except end;
  try value.TryGetValue<integer>('emp_usafiliais', self.FEmp_usafiliais); except end;
  try value.TryGetValue<string>('emp_certificado', self.FEmp_certificado); except end;
  try value.TryGetValue<integer>('emp_cidade_idpk', self.FEmp_cidade_idpk); except end;
  try value.TryGetValue<integer>('emp_codigoseapi', self.FEmp_codigoseapi); except end;
  try value.TryGetValue<string>('emp_complemento', self.FEmp_complemento); except end;
  try value.TryGetValue<string>('emp_contador_uf', self.FEmp_contador_uf); except end;
  try value.TryGetValue<string>('emp_observacoes', self.FEmp_observacoes); except end;
  try value.TryGetValue<string>('emp_responsavel', self.FEmp_responsavel); except end;
  try value.TryGetValue<string>('emp_tipo_pessoa', self.FEmp_tipo_pessoa); except end;
  try value.TryGetValue<string>('emp_contador_cep', self.FEmp_contador_cep); except end;
  try value.TryGetValue<string>('emp_contador_cpf', self.FEmp_contador_cpf); except end;
  try value.TryGetValue<string>('emp_contador_crc', self.FEmp_contador_crc); except end;
  try value.TryGetValue<integer>('emp_microempresa', self.FEmp_microempresa); except end;
  try value.TryGetValue<integer>('emp_sistema_idpk', self.FEmp_sistema_idpk); except end;
  try value.TryGetValue<string>('emp_contador_cnpj', self.FEmp_contador_cnpj); except end;
  try value.TryGetValue<string>('emp_contador_fone', self.FEmp_contador_fone); except end;
  try value.TryGetValue<string>('emp_contador_ibge', self.FEmp_contador_ibge); except end;
  try value.TryGetValue<string>('emp_contador_nome', self.FEmp_contador_nome); except end;
  try value.TryGetValue<string>('emp_imposto_texto', self.FEmp_imposto_texto); except end;
  try value.TryGetValue<string>('emp_logotipo_foto', self.FEmp_logotipo_foto); except end;
  try value.TryGetValue<string>('emp_nome_fantasia', self.FEmp_nome_fantasia); except end;
  try value.TryGetValue<string>('emp_chave_cadastro', self.FEmp_chave_cadastro); except end;
  try value.TryGetValue<string>('emp_contador_email', self.FEmp_contador_email); except end;
  try value.TryGetValue<string>('emp_certificado_CSC', self.FEmp_certificado_CSC); except end;
  try value.TryGetValue<string>('emp_contador_bairro', self.FEmp_contador_bairro); except end;
  try value.TryGetValue<string>('emp_contador_cidade', self.FEmp_contador_cidade); except end;
  try value.TryGetValue<string>('emp_contador_numero', self.FEmp_contador_numero); except end;
  try value.TryGetValue<string>('emp_doc_estrangeiro', self.FEmp_doc_estrangeiro); except end;
  try value.TryGetValue<integer>('emp_fiscal_ambiente', self.FEmp_fiscal_ambiente); except end;
  try value.TryGetValue<double>('emp_financeiro_multa', self.FEmp_financeiro_multa); except end;
  try value.TryGetValue<integer>('emp_imposto_fcpgerar', self.FEmp_imposto_fcpgerar); except end;
  try value.TryGetValue<string>('emp_nome_razaosocial', self.FEmp_nome_razaosocial); except end;
  try value.TryGetValue<string>('emp_ultima_alteracao', self.FEmp_ultima_alteracao); except end;
  try value.TryGetValue<string>('emp_certificado_senha', self.FEmp_certificado_senha); except end;
  try value.TryGetValue<integer>('emp_financeiro_sabado', self.FEmp_financeiro_sabado); except end;
  try value.TryGetValue<string>('emp_fiscal_uf_emissao', self.FEmp_fiscal_uf_emissao); except end;
  try value.TryGetValue<double>('emp_imposto_creditosn', self.FEmp_imposto_creditosn); except end;
  try value.TryGetValue<string>('emp_logradouro_numero', self.FEmp_logradouro_numero); except end;
  try value.TryGetValue<string>('emp_certificado_CSC_id', self.FEmp_certificado_CSC_id); except end;
  try value.TryGetValue<integer>('emp_financeiro_domingo', self.FEmp_financeiro_domingo); except end;
  try value.TryGetValue<integer>('emp_financeiro_feriado', self.FEmp_financeiro_feriado); except end;
  try value.TryGetValue<string>('emp_imposto_cfoppadrao', self.FEmp_imposto_cfoppadrao); except end;
  try value.TryGetValue<string>('emp_logotipo_dataenvio', self.FEmp_logotipo_dataenvio); except end;
  try value.TryGetValue<integer>('emp_ramoatividade_idpk', self.FEmp_ramoatividade_idpk); except end;
  try value.TryGetValue<string>('emp_representante_idpk', self.FEmp_representante_idpk); except end;
  try value.TryGetValue<string>('emp_telefone_principal', self.FEmp_telefone_principal); except end;
  try value.TryGetValue<string>('emp_contador_logradouro', self.FEmp_contador_logradouro); except end;
  try value.TryGetValue<string>('emp_cpf_responsavelsiga', self.FEmp_cpf_responsavelsiga); except end;
  try value.TryGetValue<double>('emp_imposto_aliquotapis', self.FEmp_imposto_aliquotapis); except end;
  try value.TryGetValue<double>('emp_imposto_fcpaliquota', self.FEmp_imposto_fcpaliquota); except end;
  try value.TryGetValue<double>('emp_imposto_icmscredito', self.FEmp_imposto_icmscredito); except end;
  try value.TryGetValue<string>('emp_telefone_secundario', self.FEmp_telefone_secundario); except end;
  try value.TryGetValue<string>('emp_certificado_validade', self.FEmp_certificado_validade); except end;
  try value.TryGetValue<integer>('emp_contador_cidade_idpk', self.FEmp_contador_cidade_idpk); except end;
  try value.TryGetValue<string>('emp_contador_complemento', self.FEmp_contador_complemento); except end;
  try value.TryGetValue<string>('emp_contador_razaosocial', self.FEmp_contador_razaosocial); except end;
  try value.TryGetValue<double>('emp_financeiro_juros_mes', self.FEmp_financeiro_juros_mes); except end;
  try value.TryGetValue<string>('emp_certificado_dataenvio', self.FEmp_certificado_dataenvio); except end;
  try value.TryGetValue<integer>('emp_imposto_permitecredito', self.FEmp_imposto_permitecredito); except end;
  try value.TryGetValue<string>('emp_produto_variacao_tipo1', self.FEmp_produto_variacao_tipo1); except end;
  try value.TryGetValue<string>('emp_produto_variacao_tipo2', self.FEmp_produto_variacao_tipo2); except end;
  try value.TryGetValue<double>('emp_imposto_aliqiuotacofins', self.FEmp_imposto_aliqiuotacofins); except end;
  try value.TryGetValue<integer>('emp_imposto_contribuinteipi', self.FEmp_imposto_contribuinteipi); except end;
  try value.TryGetValue<integer>('emp_imposto_regimepiscofins', self.FEmp_imposto_regimepiscofins); except end;
  try value.TryGetValue<string>('emp_data_nascimento_abertura', self.FEmp_data_nascimento_abertura); except end;
  try value.TryGetValue<integer>('emp_financeiro_carencia_dias', self.FEmp_financeiro_carencia_dias); except end;
  try value.TryGetValue<double>('emp_imposto_funrural_aliquota', self.FEmp_imposto_funrural_aliquota); except end;
  try value.TryGetValue<integer>('emp_imposto_gerardescontonota', self.FEmp_imposto_gerardescontonota); except end;
  try value.TryGetValue<integer>('emp_imposto_funrural_descontar', self.FEmp_imposto_funrural_descontar); except end;
  try value.TryGetValue<integer>('emp_imposto_piscofinsmonofasico', self.FEmp_imposto_piscofinsmonofasico); except end;
  try value.TryGetValue<integer>('emp_imposto_icmsstcalculoreverso', self.FEmp_imposto_icmsstcalculoreverso); except end;
  try value.TryGetValue<integer>('emp_imposto_substitutotributario', self.FEmp_imposto_substitutotributario); except end;
  try value.TryGetValue<string>('emp_financeiro_categoria_venda_idpk', self.FEmp_financeiro_categoria_venda_idpk); except end;
  try value.TryGetValue<double>('emp_imposto_gerarfretenotapercentual', self.FEmp_imposto_gerarfretenotapercentual); except end;
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

{ TResponseClassEmpresaGet }

constructor TResponseClassEmpresaGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassEmpresaGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassEmpresaGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassEmpresaGet.CreateWithJsonString(const value : string);
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
