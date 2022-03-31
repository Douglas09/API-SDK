unit mercurio.response.financeiroConta.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TBanco = class
  private
    [Coluna('banco')]
    FBanco: string;
    [Coluna('fcb_idpk')]
    FFcb_idpk: integer;
    [Coluna('fcb_conta')]
    FFcb_conta: string;
    [Coluna('fcb_agencia')]
    FFcb_agencia: string;
    [Coluna('fcb_conta_tipo')]
    FFcb_conta_tipo: string;
    [Coluna('fcb_pessoa_tipo')]
    FFcb_pessoa_tipo: string;
    [Coluna('fcb_conta_digito')]
    FFcb_conta_digito: string;
    [Coluna('fcb_agencia_digito')]
    FFcb_agencia_digito: string;
    [Coluna('fcb_ultima_alteracao')]
    FFcb_ultima_alteracao: string;
    [Coluna('fcb_cobranca_boleto_ativa')]
    FFcb_cobranca_boleto_ativa: string;
    [Coluna('fcb_financeiro_banco_idpk')]
    FFcb_financeiro_banco_idpk: string;
    [Coluna('fcb_financeiro_conta_idpk')]
    FFcb_financeiro_conta_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Banco: string read FBanco write FBanco;
    property Fcb_idpk: integer read FFcb_idpk write FFcb_idpk;
    property Fcb_conta: string read FFcb_conta write FFcb_conta;
    property Fcb_agencia: string read FFcb_agencia write FFcb_agencia;
    property Fcb_conta_tipo: string read FFcb_conta_tipo write FFcb_conta_tipo;
    property Fcb_pessoa_tipo: string read FFcb_pessoa_tipo write FFcb_pessoa_tipo;
    property Fcb_conta_digito: string read FFcb_conta_digito write FFcb_conta_digito;
    property Fcb_agencia_digito: string read FFcb_agencia_digito write FFcb_agencia_digito;
    property Fcb_ultima_alteracao: string read FFcb_ultima_alteracao write FFcb_ultima_alteracao;
    property Fcb_cobranca_boleto_ativa: string read FFcb_cobranca_boleto_ativa write FFcb_cobranca_boleto_ativa;
    property Fcb_financeiro_banco_idpk: string read FFcb_financeiro_banco_idpk write FFcb_financeiro_banco_idpk;
    property Fcb_financeiro_conta_idpk: integer read FFcb_financeiro_conta_idpk write FFcb_financeiro_conta_idpk;
  end;

  TSocios = class
  private
    [Coluna('csp_uf')]
    FCsp_uf: string;
    [Coluna('csp_cep')]
    FCsp_cep: string;
    [Coluna('csp_mae')]
    FCsp_mae: string;
    [Coluna('csp_fone')]
    FCsp_fone: string;
    [Coluna('csp_idpk')]
    FCsp_idpk: integer;
    [Coluna('csp_nome')]
    FCsp_nome: string;
    [Coluna('csp_pais')]
    FCsp_pais: string;
    [Coluna('csp_email')]
    FCsp_email: string;
    [Coluna('csp_bairro')]
    FCsp_bairro: string;
    [Coluna('csp_cidade')]
    FCsp_cidade: string;
    [Coluna('csp_numero')]
    FCsp_numero: string;
    [Coluna('csp_cnpj_cpf')]
    FCsp_cnpj_cpf: string;
    [Coluna('csp_fone_pais')]
    FCsp_fone_pais: string;
    [Coluna('csp_logradouro')]
    FCsp_logradouro: string;
    [Coluna('csp_nascimento')]
    FCsp_nascimento: string;
    [Coluna('csp_complemento')]
    FCsp_complemento: string;
    [Coluna('csp_cnpj_cpf_pais')]
    FCsp_cnpj_cpf_pais: string;
    [Coluna('csp_ultima_alteracao')]
    FCsp_ultima_alteracao: string;
    [Coluna('csp_financeiro_conta_pixapay_idpk')]
    FCsp_financeiro_conta_pixapay_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Csp_uf: string read FCsp_uf write FCsp_uf;
    property Csp_cep: string read FCsp_cep write FCsp_cep;
    property Csp_mae: string read FCsp_mae write FCsp_mae;
    property Csp_fone: string read FCsp_fone write FCsp_fone;
    property Csp_idpk: integer read FCsp_idpk write FCsp_idpk;
    property Csp_nome: string read FCsp_nome write FCsp_nome;
    property Csp_pais: string read FCsp_pais write FCsp_pais;
    property Csp_email: string read FCsp_email write FCsp_email;
    property Csp_bairro: string read FCsp_bairro write FCsp_bairro;
    property Csp_cidade: string read FCsp_cidade write FCsp_cidade;
    property Csp_numero: string read FCsp_numero write FCsp_numero;
    property Csp_cnpj_cpf: string read FCsp_cnpj_cpf write FCsp_cnpj_cpf;
    property Csp_fone_pais: string read FCsp_fone_pais write FCsp_fone_pais;
    property Csp_logradouro: string read FCsp_logradouro write FCsp_logradouro;
    property Csp_nascimento: string read FCsp_nascimento write FCsp_nascimento;
    property Csp_complemento: string read FCsp_complemento write FCsp_complemento;
    property Csp_cnpj_cpf_pais: string read FCsp_cnpj_cpf_pais write FCsp_cnpj_cpf_pais;
    property Csp_ultima_alteracao: string read FCsp_ultima_alteracao write FCsp_ultima_alteracao;
    property Csp_financeiro_conta_pixapay_idpk: integer read FCsp_financeiro_conta_pixapay_idpk write FCsp_financeiro_conta_pixapay_idpk;
  end;

  TPixapay = class
  private
    [Coluna('socios')]
    FSocios: TList<TSocios>;
    [Coluna('fcp_fone')]
    FFcp_fone: string;
    [Coluna('fcp_idpk')]
    FFcp_idpk: integer;
    [Coluna('fcp_email')]
    FFcp_email: string;
    [Coluna('documentos')]
    FDocumentos: string;
    [Coluna('fcp_ambiente')]
    FFcp_ambiente: string;
    [Coluna('fcp_cnpj_cpf')]
    FFcp_cnpj_cpf: string;
    [Coluna('fcp_pix_tipo')]
    FFcp_pix_tipo: string;
    [Coluna('fcp_pix_usar')]
    FFcp_pix_usar: integer;
    [Coluna('fcp_fone_pais')]
    FFcp_fone_pais: string;
    [Coluna('fcp_conta_tipo')]
    FFcp_conta_tipo: string;
    [Coluna('fcp_pix_status')]
    FFcp_pix_status: string;
    [Coluna('fcp_saque_tipo')]
    FFcp_saque_tipo: string;
    [Coluna('fcp_boleto_tipo')]
    FFcp_boleto_tipo: string;
    [Coluna('fcp_boleto_usar')]
    FFcp_boleto_usar: integer;
    [Coluna('fcp_endereco_uf')]
    FFcp_endereco_uf: string;
    [Coluna('fcp_banco_numero')]
    FFcp_banco_numero: string;
    [Coluna('fcp_cliente_tipo')]
    FFcp_cliente_tipo: string;
    [Coluna('fcp_empresa_idpk')]
    FFcp_empresa_idpk: integer;
    [Coluna('fcp_empresa_nome')]
    FFcp_empresa_nome: string;
    [Coluna('fcp_empresa_tipo')]
    FFcp_empresa_tipo: string;
    [Coluna('fcp_endereco_cep')]
    FFcp_endereco_cep: string;
    [Coluna('fcp_banco_agencia')]
    FFcp_banco_agencia: string;
    [Coluna('fcp_boleto_status')]
    FFcp_boleto_status: string;
    [Coluna('fcp_cnpj_cpf_pais')]
    FFcp_cnpj_cpf_pais: string;
    [Coluna('fcp_endereco_pais')]
    FFcp_endereco_pais: string;
    [Coluna('fcp_endereco_bairro')]
    FFcp_endereco_bairro: string;
    [Coluna('fcp_endereco_cidade')]
    FFcp_endereco_cidade: string;
    [Coluna('fcp_endereco_numero')]
    FFcp_endereco_numero: string;
    [Coluna('fcp_banco_conta_tipo')]
    FFcp_banco_conta_tipo: string;
    [Coluna('fcp_empresa_abertura')]
    FFcp_empresa_abertura: string;
    [Coluna('fcp_ultima_alteracao')]
    FFcp_ultima_alteracao: string;
    [Coluna('fcp_banco_conta_numero')]
    FFcp_banco_conta_numero: string;
    [Coluna('fcp_banco_titular_nome')]
    FFcp_banco_titular_nome: string;
    [Coluna('fcp_saque_valor_minimo')]
    FFcp_saque_valor_minimo: double;
    [Coluna('fcp_endereco_logradouro')]
    FFcp_endereco_logradouro: string;
    [Coluna('fcp_banco_agencia_digito')]
    FFcp_banco_agencia_digito: string;
    [Coluna('fcp_endereco_complemento')]
    FFcp_endereco_complemento: string;
    [Coluna('fcp_financeiro_conta_idpk')]
    FFcp_financeiro_conta_idpk: integer;
    [Coluna('fcp_banco_titular_documento')]
    FFcp_banco_titular_documento: string;
    [Coluna('fcp_banco_conta_numero_digito')]
    FFcp_banco_conta_numero_digito: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Socios: TList<TSocios> read FSocios write FSocios;
    property Fcp_fone: string read FFcp_fone write FFcp_fone;
    property Fcp_idpk: integer read FFcp_idpk write FFcp_idpk;
    property Fcp_email: string read FFcp_email write FFcp_email;
    property Documentos: string read FDocumentos write FDocumentos;
    property Fcp_ambiente: string read FFcp_ambiente write FFcp_ambiente;
    property Fcp_cnpj_cpf: string read FFcp_cnpj_cpf write FFcp_cnpj_cpf;
    property Fcp_pix_tipo: string read FFcp_pix_tipo write FFcp_pix_tipo;
    property Fcp_pix_usar: integer read FFcp_pix_usar write FFcp_pix_usar;
    property Fcp_fone_pais: string read FFcp_fone_pais write FFcp_fone_pais;
    property Fcp_conta_tipo: string read FFcp_conta_tipo write FFcp_conta_tipo;
    property Fcp_pix_status: string read FFcp_pix_status write FFcp_pix_status;
    property Fcp_saque_tipo: string read FFcp_saque_tipo write FFcp_saque_tipo;
    property Fcp_boleto_tipo: string read FFcp_boleto_tipo write FFcp_boleto_tipo;
    property Fcp_boleto_usar: integer read FFcp_boleto_usar write FFcp_boleto_usar;
    property Fcp_endereco_uf: string read FFcp_endereco_uf write FFcp_endereco_uf;
    property Fcp_banco_numero: string read FFcp_banco_numero write FFcp_banco_numero;
    property Fcp_cliente_tipo: string read FFcp_cliente_tipo write FFcp_cliente_tipo;
    property Fcp_empresa_idpk: integer read FFcp_empresa_idpk write FFcp_empresa_idpk;
    property Fcp_empresa_nome: string read FFcp_empresa_nome write FFcp_empresa_nome;
    property Fcp_empresa_tipo: string read FFcp_empresa_tipo write FFcp_empresa_tipo;
    property Fcp_endereco_cep: string read FFcp_endereco_cep write FFcp_endereco_cep;
    property Fcp_banco_agencia: string read FFcp_banco_agencia write FFcp_banco_agencia;
    property Fcp_boleto_status: string read FFcp_boleto_status write FFcp_boleto_status;
    property Fcp_cnpj_cpf_pais: string read FFcp_cnpj_cpf_pais write FFcp_cnpj_cpf_pais;
    property Fcp_endereco_pais: string read FFcp_endereco_pais write FFcp_endereco_pais;
    property Fcp_endereco_bairro: string read FFcp_endereco_bairro write FFcp_endereco_bairro;
    property Fcp_endereco_cidade: string read FFcp_endereco_cidade write FFcp_endereco_cidade;
    property Fcp_endereco_numero: string read FFcp_endereco_numero write FFcp_endereco_numero;
    property Fcp_banco_conta_tipo: string read FFcp_banco_conta_tipo write FFcp_banco_conta_tipo;
    property Fcp_empresa_abertura: string read FFcp_empresa_abertura write FFcp_empresa_abertura;
    property Fcp_ultima_alteracao: string read FFcp_ultima_alteracao write FFcp_ultima_alteracao;
    property Fcp_banco_conta_numero: string read FFcp_banco_conta_numero write FFcp_banco_conta_numero;
    property Fcp_banco_titular_nome: string read FFcp_banco_titular_nome write FFcp_banco_titular_nome;
    property Fcp_saque_valor_minimo: double read FFcp_saque_valor_minimo write FFcp_saque_valor_minimo;
    property Fcp_endereco_logradouro: string read FFcp_endereco_logradouro write FFcp_endereco_logradouro;
    property Fcp_banco_agencia_digito: string read FFcp_banco_agencia_digito write FFcp_banco_agencia_digito;
    property Fcp_endereco_complemento: string read FFcp_endereco_complemento write FFcp_endereco_complemento;
    property Fcp_financeiro_conta_idpk: integer read FFcp_financeiro_conta_idpk write FFcp_financeiro_conta_idpk;
    property Fcp_banco_titular_documento: string read FFcp_banco_titular_documento write FFcp_banco_titular_documento;
    property Fcp_banco_conta_numero_digito: string read FFcp_banco_conta_numero_digito write FFcp_banco_conta_numero_digito;
  end;

  TRegistros = class
  private
    [Coluna('pixapay')]
    FPixapay: TPixapay;
    [Coluna('banco')]
    FBanco: TBanco;
    [Coluna('fco_idpk')]
    FFco_idpk: integer;
    [Coluna('fco_tipo')]
    FFco_tipo: string;
    [Coluna('fco_descricao')]
    FFco_descricao: string;
    [Coluna('fco_filial_idpk')]
    FFco_filial_idpk: string;
    [Coluna('fco_conta_padrao')]
    FFco_conta_padrao: integer;
    [Coluna('fco_empresa_idpk')]
    FFco_empresa_idpk: integer;
    [Coluna('fco_saldo_inicial')]
    FFco_saldo_inicial: double;
    [Coluna('fco_saldo_inicial_data')]
    FFco_saldo_inicial_data: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pixapay: TPixapay read FPixapay write FPixapay;
    property Banco: TBanco read FBanco write FBanco;
    property Fco_idpk: integer read FFco_idpk write FFco_idpk;
    property Fco_tipo: string read FFco_tipo write FFco_tipo;
    property Fco_descricao: string read FFco_descricao write FFco_descricao;
    property Fco_filial_idpk: string read FFco_filial_idpk write FFco_filial_idpk;
    property Fco_conta_padrao: integer read FFco_conta_padrao write FFco_conta_padrao;
    property Fco_empresa_idpk: integer read FFco_empresa_idpk write FFco_empresa_idpk;
    property Fco_saldo_inicial: double read FFco_saldo_inicial write FFco_saldo_inicial;
    property Fco_saldo_inicial_data: string read FFco_saldo_inicial_data write FFco_saldo_inicial_data;
  end;

  TResponseClassFinanceiroContaGet = class
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

{ TBanco }

constructor TBanco.Create;
begin
end;

destructor TBanco.Destroy;
begin

  inherited;
end;

constructor TBanco.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('banco', self.FBanco); except end;
  try value.TryGetValue<integer>('fcb_idpk', self.FFcb_idpk); except end;
  try value.TryGetValue<string>('fcb_conta', self.FFcb_conta); except end;
  try value.TryGetValue<string>('fcb_agencia', self.FFcb_agencia); except end;
  try value.TryGetValue<string>('fcb_conta_tipo', self.FFcb_conta_tipo); except end;
  try value.TryGetValue<string>('fcb_pessoa_tipo', self.FFcb_pessoa_tipo); except end;
  try value.TryGetValue<string>('fcb_conta_digito', self.FFcb_conta_digito); except end;
  try value.TryGetValue<string>('fcb_agencia_digito', self.FFcb_agencia_digito); except end;
  try value.TryGetValue<string>('fcb_ultima_alteracao', self.FFcb_ultima_alteracao); except end;
  try value.TryGetValue<string>('fcb_cobranca_boleto_ativa', self.FFcb_cobranca_boleto_ativa); except end;
  try value.TryGetValue<string>('fcb_financeiro_banco_idpk', self.FFcb_financeiro_banco_idpk); except end;
  try value.TryGetValue<integer>('fcb_financeiro_conta_idpk', self.FFcb_financeiro_conta_idpk); except end;
end;

constructor TBanco.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TSocios }

constructor TSocios.Create;
begin
end;

destructor TSocios.Destroy;
begin

  inherited;
end;

constructor TSocios.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('csp_uf', self.FCsp_uf); except end;
  try value.TryGetValue<string>('csp_cep', self.FCsp_cep); except end;
  try value.TryGetValue<string>('csp_mae', self.FCsp_mae); except end;
  try value.TryGetValue<string>('csp_fone', self.FCsp_fone); except end;
  try value.TryGetValue<integer>('csp_idpk', self.FCsp_idpk); except end;
  try value.TryGetValue<string>('csp_nome', self.FCsp_nome); except end;
  try value.TryGetValue<string>('csp_pais', self.FCsp_pais); except end;
  try value.TryGetValue<string>('csp_email', self.FCsp_email); except end;
  try value.TryGetValue<string>('csp_bairro', self.FCsp_bairro); except end;
  try value.TryGetValue<string>('csp_cidade', self.FCsp_cidade); except end;
  try value.TryGetValue<string>('csp_numero', self.FCsp_numero); except end;
  try value.TryGetValue<string>('csp_cnpj_cpf', self.FCsp_cnpj_cpf); except end;
  try value.TryGetValue<string>('csp_fone_pais', self.FCsp_fone_pais); except end;
  try value.TryGetValue<string>('csp_logradouro', self.FCsp_logradouro); except end;
  try value.TryGetValue<string>('csp_nascimento', self.FCsp_nascimento); except end;
  try value.TryGetValue<string>('csp_complemento', self.FCsp_complemento); except end;
  try value.TryGetValue<string>('csp_cnpj_cpf_pais', self.FCsp_cnpj_cpf_pais); except end;
  try value.TryGetValue<string>('csp_ultima_alteracao', self.FCsp_ultima_alteracao); except end;
  try value.TryGetValue<integer>('csp_financeiro_conta_pixapay_idpk', self.FCsp_financeiro_conta_pixapay_idpk); except end;
end;

constructor TSocios.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TPixapay }

constructor TPixapay.Create;
begin
  Socios := TList<TSocios>.Create;
end;

destructor TPixapay.Destroy;
begin
  while (Socios.Count > 0) do
  begin
    myFreeAndNil(Socios.items[0]);
    Socios.Delete(0);
  end;
  myFreeAndNil(Socios);

  inherited;
end;

constructor TPixapay.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONArray>('socios', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FSocios.add(
          TSocios.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('fcp_fone', self.FFcp_fone); except end;
  try value.TryGetValue<integer>('fcp_idpk', self.FFcp_idpk); except end;
  try value.TryGetValue<string>('fcp_email', self.FFcp_email); except end;
  try value.TryGetValue<string>('documentos', self.FDocumentos); except end;
  try value.TryGetValue<string>('fcp_ambiente', self.FFcp_ambiente); except end;
  try value.TryGetValue<string>('fcp_cnpj_cpf', self.FFcp_cnpj_cpf); except end;
  try value.TryGetValue<string>('fcp_pix_tipo', self.FFcp_pix_tipo); except end;
  try value.TryGetValue<integer>('fcp_pix_usar', self.FFcp_pix_usar); except end;
  try value.TryGetValue<string>('fcp_fone_pais', self.FFcp_fone_pais); except end;
  try value.TryGetValue<string>('fcp_conta_tipo', self.FFcp_conta_tipo); except end;
  try value.TryGetValue<string>('fcp_pix_status', self.FFcp_pix_status); except end;
  try value.TryGetValue<string>('fcp_saque_tipo', self.FFcp_saque_tipo); except end;
  try value.TryGetValue<string>('fcp_boleto_tipo', self.FFcp_boleto_tipo); except end;
  try value.TryGetValue<integer>('fcp_boleto_usar', self.FFcp_boleto_usar); except end;
  try value.TryGetValue<string>('fcp_endereco_uf', self.FFcp_endereco_uf); except end;
  try value.TryGetValue<string>('fcp_banco_numero', self.FFcp_banco_numero); except end;
  try value.TryGetValue<string>('fcp_cliente_tipo', self.FFcp_cliente_tipo); except end;
  try value.TryGetValue<integer>('fcp_empresa_idpk', self.FFcp_empresa_idpk); except end;
  try value.TryGetValue<string>('fcp_empresa_nome', self.FFcp_empresa_nome); except end;
  try value.TryGetValue<string>('fcp_empresa_tipo', self.FFcp_empresa_tipo); except end;
  try value.TryGetValue<string>('fcp_endereco_cep', self.FFcp_endereco_cep); except end;
  try value.TryGetValue<string>('fcp_banco_agencia', self.FFcp_banco_agencia); except end;
  try value.TryGetValue<string>('fcp_boleto_status', self.FFcp_boleto_status); except end;
  try value.TryGetValue<string>('fcp_cnpj_cpf_pais', self.FFcp_cnpj_cpf_pais); except end;
  try value.TryGetValue<string>('fcp_endereco_pais', self.FFcp_endereco_pais); except end;
  try value.TryGetValue<string>('fcp_endereco_bairro', self.FFcp_endereco_bairro); except end;
  try value.TryGetValue<string>('fcp_endereco_cidade', self.FFcp_endereco_cidade); except end;
  try value.TryGetValue<string>('fcp_endereco_numero', self.FFcp_endereco_numero); except end;
  try value.TryGetValue<string>('fcp_banco_conta_tipo', self.FFcp_banco_conta_tipo); except end;
  try value.TryGetValue<string>('fcp_empresa_abertura', self.FFcp_empresa_abertura); except end;
  try value.TryGetValue<string>('fcp_ultima_alteracao', self.FFcp_ultima_alteracao); except end;
  try value.TryGetValue<string>('fcp_banco_conta_numero', self.FFcp_banco_conta_numero); except end;
  try value.TryGetValue<string>('fcp_banco_titular_nome', self.FFcp_banco_titular_nome); except end;
  try value.TryGetValue<double>('fcp_saque_valor_minimo', self.FFcp_saque_valor_minimo); except end;
  try value.TryGetValue<string>('fcp_endereco_logradouro', self.FFcp_endereco_logradouro); except end;
  try value.TryGetValue<string>('fcp_banco_agencia_digito', self.FFcp_banco_agencia_digito); except end;
  try value.TryGetValue<string>('fcp_endereco_complemento', self.FFcp_endereco_complemento); except end;
  try value.TryGetValue<integer>('fcp_financeiro_conta_idpk', self.FFcp_financeiro_conta_idpk); except end;
  try value.TryGetValue<string>('fcp_banco_titular_documento', self.FFcp_banco_titular_documento); except end;
  try value.TryGetValue<string>('fcp_banco_conta_numero_digito', self.FFcp_banco_conta_numero_digito); except end;
end;

constructor TPixapay.CreateWithJsonString(const value : string);
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
  Pixapay := TPixapay.Create;
  Banco := TBanco.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Pixapay);
  myFreeAndNil(Banco);

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
    value.TryGetValue<TJSONObject>('pixapay', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FPixapay);
      self.FPixapay := TPixapay.CreateWithJson(obj);
    end;
  except
  end;
  try
    value.TryGetValue<TJSONObject>('banco', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FBanco);
      self.FBanco := TBanco.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('fco_idpk', self.FFco_idpk); except end;
  try value.TryGetValue<string>('fco_tipo', self.FFco_tipo); except end;
  try value.TryGetValue<string>('fco_descricao', self.FFco_descricao); except end;
  try value.TryGetValue<string>('fco_filial_idpk', self.FFco_filial_idpk); except end;
  try value.TryGetValue<integer>('fco_conta_padrao', self.FFco_conta_padrao); except end;
  try value.TryGetValue<integer>('fco_empresa_idpk', self.FFco_empresa_idpk); except end;
  try value.TryGetValue<double>('fco_saldo_inicial', self.FFco_saldo_inicial); except end;
  try value.TryGetValue<string>('fco_saldo_inicial_data', self.FFco_saldo_inicial_data); except end;
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

{ TResponseClassFinanceiroContaGet }

constructor TResponseClassFinanceiroContaGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFinanceiroContaGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFinanceiroContaGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassFinanceiroContaGet.CreateWithJsonString(const value : string);
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
