unit mercurio.response.cliente.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TTelefone = class
  private
    [Coluna('tel_idpk')]
    FTel_idpk: integer;
    [Coluna('tel_telefone')]
    FTel_telefone: string;
    [Coluna('tel_descricao')]
    FTel_descricao: string;
    [Coluna('tel_filial_idpk')]
    FTel_filial_idpk: string;
    [Coluna('tel_pessoa_idpk')]
    FTel_pessoa_idpk: integer;
    [Coluna('tel_empresa_idpk')]
    FTel_empresa_idpk: integer;
    [Coluna('tel_ultima_alteracao')]
    FTel_ultima_alteracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Tel_idpk: integer read FTel_idpk write FTel_idpk;
    property Tel_telefone: string read FTel_telefone write FTel_telefone;
    property Tel_descricao: string read FTel_descricao write FTel_descricao;
    property Tel_filial_idpk: string read FTel_filial_idpk write FTel_filial_idpk;
    property Tel_pessoa_idpk: integer read FTel_pessoa_idpk write FTel_pessoa_idpk;
    property Tel_empresa_idpk: integer read FTel_empresa_idpk write FTel_empresa_idpk;
    property Tel_ultima_alteracao: string read FTel_ultima_alteracao write FTel_ultima_alteracao;
  end;

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

  TEndereco = class
  private
    [Coluna('cidade')]
    FCidade: TCidade;
    [Coluna('end_cep')]
    FEnd_cep: string;
    [Coluna('end_idpk')]
    FEnd_idpk: integer;
    [Coluna('end_bairro')]
    FEnd_bairro: string;
    [Coluna('end_numero')]
    FEnd_numero: string;
    [Coluna('end_descricao')]
    FEnd_descricao: string;
    [Coluna('end_tipogeral')]
    FEnd_tipogeral: integer;
    [Coluna('end_logradouro')]
    FEnd_logradouro: string;
    [Coluna('end_cidade_idpk')]
    FEnd_cidade_idpk: integer;
    [Coluna('end_complemento')]
    FEnd_complemento: string;
    [Coluna('end_filial_idpk')]
    FEnd_filial_idpk: string;
    [Coluna('end_pessoa_idpk')]
    FEnd_pessoa_idpk: integer;
    [Coluna('end_tipoentrega')]
    FEnd_tipoentrega: integer;
    [Coluna('end_empresa_idpk')]
    FEnd_empresa_idpk: integer;
    [Coluna('end_ultima_alteracao')]
    FEnd_ultima_alteracao: string;
    [Coluna('end_tipocorrespondencia')]
    FEnd_tipocorrespondencia: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Cidade: TCidade read FCidade write FCidade;
    property End_cep: string read FEnd_cep write FEnd_cep;
    property End_idpk: integer read FEnd_idpk write FEnd_idpk;
    property End_bairro: string read FEnd_bairro write FEnd_bairro;
    property End_numero: string read FEnd_numero write FEnd_numero;
    property End_descricao: string read FEnd_descricao write FEnd_descricao;
    property End_tipogeral: integer read FEnd_tipogeral write FEnd_tipogeral;
    property End_logradouro: string read FEnd_logradouro write FEnd_logradouro;
    property End_cidade_idpk: integer read FEnd_cidade_idpk write FEnd_cidade_idpk;
    property End_complemento: string read FEnd_complemento write FEnd_complemento;
    property End_filial_idpk: string read FEnd_filial_idpk write FEnd_filial_idpk;
    property End_pessoa_idpk: integer read FEnd_pessoa_idpk write FEnd_pessoa_idpk;
    property End_tipoentrega: integer read FEnd_tipoentrega write FEnd_tipoentrega;
    property End_empresa_idpk: integer read FEnd_empresa_idpk write FEnd_empresa_idpk;
    property End_ultima_alteracao: string read FEnd_ultima_alteracao write FEnd_ultima_alteracao;
    property End_tipocorrespondencia: integer read FEnd_tipocorrespondencia write FEnd_tipocorrespondencia;
  end;

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
    FEndereco: TList<TEndereco>;
    [Coluna('pes_cnae')]
    FPes_cnae: string;
    [Coluna('pes_idpk')]
    FPes_idpk: integer;
    [Coluna('pes_sexo')]
    FPes_sexo: string;
    [Coluna('telefone')]
    FTelefone: TList<TTelefone>;
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
    property Endereco: TList<TEndereco> read FEndereco write FEndereco;
    property Pes_cnae: string read FPes_cnae write FPes_cnae;
    property Pes_idpk: integer read FPes_idpk write FPes_idpk;
    property Pes_sexo: string read FPes_sexo write FPes_sexo;
    property Telefone: TList<TTelefone> read FTelefone write FTelefone;
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
    [Coluna('cli_idpk')]
    FCli_idpk: integer;
    [Coluna('cli_renda')]
    FCli_renda: double;
    [Coluna('cli_limite')]
    FCli_limite: double;
    [Coluna('cli_status')]
    FCli_status: integer;
    [Coluna('cli_moradia')]
    FCli_moradia: integer;
    [Coluna('cli_profissao')]
    FCli_profissao: string;
    [Coluna('cli_filial_idpk')]
    FCli_filial_idpk: string;
    [Coluna('cli_indicadorie')]
    FCli_indicadorie: integer;
    [Coluna('cli_isuf_codigo')]
    FCli_isuf_codigo: string;
    [Coluna('cli_pessoa_idpk')]
    FCli_pessoa_idpk: integer;
    [Coluna('cli_referencia1')]
    FCli_referencia1: string;
    [Coluna('cli_referencia2')]
    FCli_referencia2: string;
    [Coluna('cli_datacadastro')]
    FCli_datacadastro: string;
    [Coluna('cli_empresa_idpk')]
    FCli_empresa_idpk: integer;
    [Coluna('cli_codigo_auxiliar')]
    FCli_codigo_auxiliar: string;
    [Coluna('cli_consumidorfinal')]
    FCli_consumidorfinal: integer;
    [Coluna('cli_clienteloja_idpk')]
    FCli_clienteloja_idpk: string;
    [Coluna('cli_codigoindividual')]
    FCli_codigoindividual: integer;
    [Coluna('cli_dataprevisaopgto')]
    FCli_dataprevisaopgto: string;
    [Coluna('cli_dataultimacompra')]
    FCli_dataultimacompra: string;
    [Coluna('cli_empresa_trabalho')]
    FCli_empresa_trabalho: string;
    [Coluna('cli_situacaocadastro')]
    FCli_situacaocadastro: integer;
    [Coluna('cli_ultima_alteracao')]
    FCli_ultima_alteracao: string;
    [Coluna('cli_clienteregiao_idpk')]
    FCli_clienteregiao_idpk: string;
    [Coluna('cli_ramos_atividade_idpk')]
    FCli_ramos_atividade_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pessoa: TPessoa read FPessoa write FPessoa;
    property Cli_idpk: integer read FCli_idpk write FCli_idpk;
    property Cli_renda: double read FCli_renda write FCli_renda;
    property Cli_limite: double read FCli_limite write FCli_limite;
    property Cli_status: integer read FCli_status write FCli_status;
    property Cli_moradia: integer read FCli_moradia write FCli_moradia;
    property Cli_profissao: string read FCli_profissao write FCli_profissao;
    property Cli_filial_idpk: string read FCli_filial_idpk write FCli_filial_idpk;
    property Cli_indicadorie: integer read FCli_indicadorie write FCli_indicadorie;
    property Cli_isuf_codigo: string read FCli_isuf_codigo write FCli_isuf_codigo;
    property Cli_pessoa_idpk: integer read FCli_pessoa_idpk write FCli_pessoa_idpk;
    property Cli_referencia1: string read FCli_referencia1 write FCli_referencia1;
    property Cli_referencia2: string read FCli_referencia2 write FCli_referencia2;
    property Cli_datacadastro: string read FCli_datacadastro write FCli_datacadastro;
    property Cli_empresa_idpk: integer read FCli_empresa_idpk write FCli_empresa_idpk;
    property Cli_codigo_auxiliar: string read FCli_codigo_auxiliar write FCli_codigo_auxiliar;
    property Cli_consumidorfinal: integer read FCli_consumidorfinal write FCli_consumidorfinal;
    property Cli_clienteloja_idpk: string read FCli_clienteloja_idpk write FCli_clienteloja_idpk;
    property Cli_codigoindividual: integer read FCli_codigoindividual write FCli_codigoindividual;
    property Cli_dataprevisaopgto: string read FCli_dataprevisaopgto write FCli_dataprevisaopgto;
    property Cli_dataultimacompra: string read FCli_dataultimacompra write FCli_dataultimacompra;
    property Cli_empresa_trabalho: string read FCli_empresa_trabalho write FCli_empresa_trabalho;
    property Cli_situacaocadastro: integer read FCli_situacaocadastro write FCli_situacaocadastro;
    property Cli_ultima_alteracao: string read FCli_ultima_alteracao write FCli_ultima_alteracao;
    property Cli_clienteregiao_idpk: string read FCli_clienteregiao_idpk write FCli_clienteregiao_idpk;
    property Cli_ramos_atividade_idpk: string read FCli_ramos_atividade_idpk write FCli_ramos_atividade_idpk;
  end;

  TResponseClassClienteGet = class
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

{ TTelefone }

constructor TTelefone.Create;
begin
end;

destructor TTelefone.Destroy;
begin

  inherited;
end;

constructor TTelefone.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('tel_idpk', self.FTel_idpk); except end;
  try value.TryGetValue<string>('tel_telefone', self.FTel_telefone); except end;
  try value.TryGetValue<string>('tel_descricao', self.FTel_descricao); except end;
  try value.TryGetValue<string>('tel_filial_idpk', self.FTel_filial_idpk); except end;
  try value.TryGetValue<integer>('tel_pessoa_idpk', self.FTel_pessoa_idpk); except end;
  try value.TryGetValue<integer>('tel_empresa_idpk', self.FTel_empresa_idpk); except end;
  try value.TryGetValue<string>('tel_ultima_alteracao', self.FTel_ultima_alteracao); except end;
end;

constructor TTelefone.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

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

{ TEndereco }

constructor TEndereco.Create;
begin
  Cidade := TCidade.Create;
end;

destructor TEndereco.Destroy;
begin
  myFreeAndNil(Cidade);

  inherited;
end;

constructor TEndereco.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONObject>('cidade', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FCidade);
      self.FCidade := TCidade.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('end_cep', self.FEnd_cep); except end;
  try value.TryGetValue<integer>('end_idpk', self.FEnd_idpk); except end;
  try value.TryGetValue<string>('end_bairro', self.FEnd_bairro); except end;
  try value.TryGetValue<string>('end_numero', self.FEnd_numero); except end;
  try value.TryGetValue<string>('end_descricao', self.FEnd_descricao); except end;
  try value.TryGetValue<integer>('end_tipogeral', self.FEnd_tipogeral); except end;
  try value.TryGetValue<string>('end_logradouro', self.FEnd_logradouro); except end;
  try value.TryGetValue<integer>('end_cidade_idpk', self.FEnd_cidade_idpk); except end;
  try value.TryGetValue<string>('end_complemento', self.FEnd_complemento); except end;
  try value.TryGetValue<string>('end_filial_idpk', self.FEnd_filial_idpk); except end;
  try value.TryGetValue<integer>('end_pessoa_idpk', self.FEnd_pessoa_idpk); except end;
  try value.TryGetValue<integer>('end_tipoentrega', self.FEnd_tipoentrega); except end;
  try value.TryGetValue<integer>('end_empresa_idpk', self.FEnd_empresa_idpk); except end;
  try value.TryGetValue<string>('end_ultima_alteracao', self.FEnd_ultima_alteracao); except end;
  try value.TryGetValue<integer>('end_tipocorrespondencia', self.FEnd_tipocorrespondencia); except end;
end;

constructor TEndereco.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

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
  Endereco := TList<TEndereco>.Create;
  Telefone := TList<TTelefone>.Create;
end;

destructor TPessoa.Destroy;
begin
  while (Email.Count > 0) do
  begin
    myFreeAndNil(Email.items[0]);
    Email.Delete(0);
  end;
  myFreeAndNil(Email);
  while (Endereco.Count > 0) do
  begin
    myFreeAndNil(Endereco.items[0]);
    Endereco.Delete(0);
  end;
  myFreeAndNil(Endereco);
  while (Telefone.Count > 0) do
  begin
    myFreeAndNil(Telefone.items[0]);
    Telefone.Delete(0);
  end;
  myFreeAndNil(Telefone);

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
  try
    value.TryGetValue<TJSONArray>('endereco', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FEndereco.add(
          TEndereco.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('pes_cnae', self.FPes_cnae); except end;
  try value.TryGetValue<integer>('pes_idpk', self.FPes_idpk); except end;
  try value.TryGetValue<string>('pes_sexo', self.FPes_sexo); except end;
  try
    value.TryGetValue<TJSONArray>('telefone', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FTelefone.add(
          TTelefone.CreateWithJson(obj)
        );
      end;
  except
  end;
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
  try value.TryGetValue<integer>('cli_idpk', self.FCli_idpk); except end;
  try value.TryGetValue<double>('cli_renda', self.FCli_renda); except end;
  try value.TryGetValue<double>('cli_limite', self.FCli_limite); except end;
  try value.TryGetValue<integer>('cli_status', self.FCli_status); except end;
  try value.TryGetValue<integer>('cli_moradia', self.FCli_moradia); except end;
  try value.TryGetValue<string>('cli_profissao', self.FCli_profissao); except end;
  try value.TryGetValue<string>('cli_filial_idpk', self.FCli_filial_idpk); except end;
  try value.TryGetValue<integer>('cli_indicadorie', self.FCli_indicadorie); except end;
  try value.TryGetValue<string>('cli_isuf_codigo', self.FCli_isuf_codigo); except end;
  try value.TryGetValue<integer>('cli_pessoa_idpk', self.FCli_pessoa_idpk); except end;
  try value.TryGetValue<string>('cli_referencia1', self.FCli_referencia1); except end;
  try value.TryGetValue<string>('cli_referencia2', self.FCli_referencia2); except end;
  try value.TryGetValue<string>('cli_datacadastro', self.FCli_datacadastro); except end;
  try value.TryGetValue<integer>('cli_empresa_idpk', self.FCli_empresa_idpk); except end;
  try value.TryGetValue<string>('cli_codigo_auxiliar', self.FCli_codigo_auxiliar); except end;
  try value.TryGetValue<integer>('cli_consumidorfinal', self.FCli_consumidorfinal); except end;
  try value.TryGetValue<string>('cli_clienteloja_idpk', self.FCli_clienteloja_idpk); except end;
  try value.TryGetValue<integer>('cli_codigoindividual', self.FCli_codigoindividual); except end;
  try value.TryGetValue<string>('cli_dataprevisaopgto', self.FCli_dataprevisaopgto); except end;
  try value.TryGetValue<string>('cli_dataultimacompra', self.FCli_dataultimacompra); except end;
  try value.TryGetValue<string>('cli_empresa_trabalho', self.FCli_empresa_trabalho); except end;
  try value.TryGetValue<integer>('cli_situacaocadastro', self.FCli_situacaocadastro); except end;
  try value.TryGetValue<string>('cli_ultima_alteracao', self.FCli_ultima_alteracao); except end;
  try value.TryGetValue<string>('cli_clienteregiao_idpk', self.FCli_clienteregiao_idpk); except end;
  try value.TryGetValue<string>('cli_ramos_atividade_idpk', self.FCli_ramos_atividade_idpk); except end;
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

{ TResponseClassClienteGet }

constructor TResponseClassClienteGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassClienteGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassClienteGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassClienteGet.CreateWithJsonString(const value : string);
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
