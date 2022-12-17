unit mercurio.response.login.logar;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TUsuario_tipo_permissao = class
  private
    [Coluna('upp_idpk')]
    FUpp_idpk: integer;
    [Coluna('upp_grupo')]
    FUpp_grupo: string;
    [Coluna('upp_descricao')]
    FUpp_descricao: string;
    [Coluna('upp_permissao')]
    FUpp_permissao: integer;
    [Coluna('upp_empresa_idpk')]
    FUpp_empresa_idpk: integer;
    [Coluna('upp_usuario_tipo_idpk')]
    FUpp_usuario_tipo_idpk: integer;
    [Coluna('upp_funcionalidade_chave')]
    FUpp_funcionalidade_chave: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Upp_idpk: integer read FUpp_idpk write FUpp_idpk;
    property Upp_grupo: string read FUpp_grupo write FUpp_grupo;
    property Upp_descricao: string read FUpp_descricao write FUpp_descricao;
    property Upp_permissao: integer read FUpp_permissao write FUpp_permissao;
    property Upp_empresa_idpk: integer read FUpp_empresa_idpk write FUpp_empresa_idpk;
    property Upp_usuario_tipo_idpk: integer read FUpp_usuario_tipo_idpk write FUpp_usuario_tipo_idpk;
    property Upp_funcionalidade_chave: string read FUpp_funcionalidade_chave write FUpp_funcionalidade_chave;
  end;

  TUsuario = class
  private
    [Coluna('usu_idpk')]
    FUsu_idpk: integer;
    [Coluna('usu_nome')]
    FUsu_nome: string;
    [Coluna('usu_email')]
    FUsu_email: string;
    [Coluna('usu_sistema_idpk')]
    FUsu_sistema_idpk: integer;
    [Coluna('usu_imagem_perfil')]
    FUsu_imagem_perfil: string;
    [Coluna('usu_renovar_senha')]
    FUsu_renovar_senha: integer;
    [Coluna('usu_representante_idpk')]
    FUsu_representante_idpk: string;
    [Coluna('usu_renovar_senha_token')]
    FUsu_renovar_senha_token: string;
    [Coluna('usu_renovar_senha_expiracao')]
    FUsu_renovar_senha_expiracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Usu_idpk: integer read FUsu_idpk write FUsu_idpk;
    property Usu_nome: string read FUsu_nome write FUsu_nome;
    property Usu_email: string read FUsu_email write FUsu_email;
    property Usu_sistema_idpk: integer read FUsu_sistema_idpk write FUsu_sistema_idpk;
    property Usu_imagem_perfil: string read FUsu_imagem_perfil write FUsu_imagem_perfil;
    property Usu_renovar_senha: integer read FUsu_renovar_senha write FUsu_renovar_senha;
    property Usu_representante_idpk: string read FUsu_representante_idpk write FUsu_representante_idpk;
    property Usu_renovar_senha_token: string read FUsu_renovar_senha_token write FUsu_renovar_senha_token;
    property Usu_renovar_senha_expiracao: string read FUsu_renovar_senha_expiracao write FUsu_renovar_senha_expiracao;
  end;

  TEmpresa_ramo_atividade = class
  private
    [Coluna('era_idpk')]
    FEra_idpk: integer;
    [Coluna('era_tipo')]
    FEra_tipo: string;
    [Coluna('era_ramointerno')]
    FEra_ramointerno: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Era_idpk: integer read FEra_idpk write FEra_idpk;
    property Era_tipo: string read FEra_tipo write FEra_tipo;
    property Era_ramointerno: integer read FEra_ramointerno write FEra_ramointerno;
  end;

  TEmpresa_fintech_taxa = class
  private
    [Coluna('esp_idpk')]
    FEsp_idpk: integer;
    [Coluna('esp_taxa')]
    FEsp_taxa: double;
    [Coluna('esp_tipo')]
    FEsp_tipo: string;
    [Coluna('esp_taxa_tipo')]
    FEsp_taxa_tipo: string;
    [Coluna('esp_empresa_idpk')]
    FEsp_empresa_idpk: integer;
    [Coluna('esp_ultima_alteracao')]
    FEsp_ultima_alteracao: string;
    [Coluna('esp_taxa_valor_maximo')]
    FEsp_taxa_valor_maximo: double;
    [Coluna('esp_taxa_valor_minimo')]
    FEsp_taxa_valor_minimo: double;
    [Coluna('esp_integracao_boleto_idpk')]
    FEsp_integracao_boleto_idpk: string;
    [Coluna('esp_integracao_cartao_idpk')]
    FEsp_integracao_cartao_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Esp_idpk: integer read FEsp_idpk write FEsp_idpk;
    property Esp_taxa: double read FEsp_taxa write FEsp_taxa;
    property Esp_tipo: string read FEsp_tipo write FEsp_tipo;
    property Esp_taxa_tipo: string read FEsp_taxa_tipo write FEsp_taxa_tipo;
    property Esp_empresa_idpk: integer read FEsp_empresa_idpk write FEsp_empresa_idpk;
    property Esp_ultima_alteracao: string read FEsp_ultima_alteracao write FEsp_ultima_alteracao;
    property Esp_taxa_valor_maximo: double read FEsp_taxa_valor_maximo write FEsp_taxa_valor_maximo;
    property Esp_taxa_valor_minimo: double read FEsp_taxa_valor_minimo write FEsp_taxa_valor_minimo;
    property Esp_integracao_boleto_idpk: string read FEsp_integracao_boleto_idpk write FEsp_integracao_boleto_idpk;
    property Esp_integracao_cartao_idpk: string read FEsp_integracao_cartao_idpk write FEsp_integracao_cartao_idpk;
  end;

  TRepresentante = class
  private
    [Coluna('rep_suporte_email')]
    FRep_suporte_email: string;
    [Coluna('rep_suporte_telefone')]
    FRep_suporte_telefone: string;
    [Coluna('rep_suporte_whatsapp')]
    FRep_suporte_whatsapp: string;
    [Coluna('rep_suporte_link_acesso_remoto')]
    FRep_suporte_link_acesso_remoto: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Rep_suporte_email: string read FRep_suporte_email write FRep_suporte_email;
    property Rep_suporte_telefone: string read FRep_suporte_telefone write FRep_suporte_telefone;
    property Rep_suporte_whatsapp: string read FRep_suporte_whatsapp write FRep_suporte_whatsapp;
    property Rep_suporte_link_acesso_remoto: string read FRep_suporte_link_acesso_remoto write FRep_suporte_link_acesso_remoto;
  end;

  TEmpresa_slug = class
  private
    [Coluna('ems_slug')]
    FEms_slug: string;
    [Coluna('ems_twitter')]
    FEms_twitter: string;
    [Coluna('ems_youtube')]
    FEms_youtube: string;
    [Coluna('ems_facebook')]
    FEms_facebook: string;
    [Coluna('ems_linkedin')]
    FEms_linkedin: string;
    [Coluna('ems_whatsapp')]
    FEms_whatsapp: string;
    [Coluna('ems_instagram')]
    FEms_instagram: string;
    [Coluna('ems_empresa_idpk')]
    FEms_empresa_idpk: integer;
    [Coluna('ems_sistema_idpk')]
    FEms_sistema_idpk: integer;
    [Coluna('ems_catalogo_ativo')]
    FEms_catalogo_ativo: string;
    [Coluna('ems_catalogo_exibir_preco')]
    FEms_catalogo_exibir_preco: string;
    [Coluna('ems_cliente_cobranca_ativa')]
    FEms_cliente_cobranca_ativa: string;
    [Coluna('ems_consulta_cliente_ativa')]
    FEms_consulta_cliente_ativa: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Ems_slug: string read FEms_slug write FEms_slug;
    property Ems_twitter: string read FEms_twitter write FEms_twitter;
    property Ems_youtube: string read FEms_youtube write FEms_youtube;
    property Ems_facebook: string read FEms_facebook write FEms_facebook;
    property Ems_linkedin: string read FEms_linkedin write FEms_linkedin;
    property Ems_whatsapp: string read FEms_whatsapp write FEms_whatsapp;
    property Ems_instagram: string read FEms_instagram write FEms_instagram;
    property Ems_empresa_idpk: integer read FEms_empresa_idpk write FEms_empresa_idpk;
    property Ems_sistema_idpk: integer read FEms_sistema_idpk write FEms_sistema_idpk;
    property Ems_catalogo_ativo: string read FEms_catalogo_ativo write FEms_catalogo_ativo;
    property Ems_catalogo_exibir_preco: string read FEms_catalogo_exibir_preco write FEms_catalogo_exibir_preco;
    property Ems_cliente_cobranca_ativa: string read FEms_cliente_cobranca_ativa write FEms_cliente_cobranca_ativa;
    property Ems_consulta_cliente_ativa: string read FEms_consulta_cliente_ativa write FEms_consulta_cliente_ativa;
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

  TEmpresa = class
  private
    [Coluna('crt')]
    FCrt: TCrt;
    [Coluna('cidade')]
    FCidade: TCidade;
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
    [Coluna('emp_ie_rg')]
    FEmp_ie_rg: string;
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
    [Coluna('empresa_slug')]
    FEmpresa_slug: TEmpresa_slug;
    [Coluna('emp_rg_estado')]
    FEmp_rg_estado: string;
    [Coluna('representante')]
    FRepresentante: TRepresentante;
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
    [Coluna('emp_notificacao')]
    FEmp_notificacao: integer;
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
    [Coluna('emp_logotipo_foto')]
    FEmp_logotipo_foto: string;
    [Coluna('emp_nome_fantasia')]
    FEmp_nome_fantasia: string;
    [Coluna('emp_webhook_token')]
    FEmp_webhook_token: string;
    [Coluna('emp_chave_cadastro')]
    FEmp_chave_cadastro: string;
    [Coluna('emp_contador_email')]
    FEmp_contador_email: string;
    [Coluna('emp_webhook_padrao')]
    FEmp_webhook_padrao: string;
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
    [Coluna('emp_ie_rg_indicador')]
    FEmp_ie_rg_indicador: integer;
    [Coluna('emp_financeiro_multa')]
    FEmp_financeiro_multa: double;
    [Coluna('emp_nome_razaosocial')]
    FEmp_nome_razaosocial: string;
    [Coluna('emp_sistema_tipo_uso')]
    FEmp_sistema_tipo_uso: string;
    [Coluna('emp_ultima_alteracao')]
    FEmp_ultima_alteracao: string;
    [Coluna('empresa_fintech_taxa')]
    FEmpresa_fintech_taxa: TList<TEmpresa_fintech_taxa>;
    [Coluna('emp_certificado_senha')]
    FEmp_certificado_senha: string;
    [Coluna('emp_financeiro_sabado')]
    FEmp_financeiro_sabado: integer;
    [Coluna('emp_fiscal_uf_emissao')]
    FEmp_fiscal_uf_emissao: string;
    [Coluna('emp_logradouro_numero')]
    FEmp_logradouro_numero: string;
    [Coluna('emp_certificado_csc_id')]
    FEmp_certificado_CSC_id: string;
    [Coluna('emp_financeiro_domingo')]
    FEmp_financeiro_domingo: integer;
    [Coluna('emp_financeiro_feriado')]
    FEmp_financeiro_feriado: integer;
    [Coluna('emp_logotipo_dataenvio')]
    FEmp_logotipo_dataenvio: string;
    [Coluna('emp_ramoatividade_idpk')]
    FEmp_ramoatividade_idpk: integer;
    [Coluna('emp_representante_idpk')]
    FEmp_representante_idpk: integer;
    [Coluna('emp_telefone_principal')]
    FEmp_telefone_principal: string;
    [Coluna('empresa_ramo_atividade')]
    FEmpresa_ramo_atividade: TEmpresa_ramo_atividade;
    [Coluna('emp_contador_logradouro')]
    FEmp_contador_logradouro: string;
    [Coluna('emp_cpf_responsavelsiga')]
    FEmp_cpf_responsavelsiga: string;
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
    [Coluna('emp_data_nascimento_abertura')]
    FEmp_data_nascimento_abertura: string;
    [Coluna('emp_financeiro_carencia_dias')]
    FEmp_financeiro_carencia_dias: integer;
    [Coluna('emp_imposto_funrural_aliquota')]
    FEmp_imposto_funrural_aliquota: double;
    [Coluna('emp_empresa_representante_idpk')]
    FEmp_empresa_representante_idpk: integer;
    [Coluna('emp_fintech_extrato_temporario')]
    FEmp_fintech_extrato_temporario: integer;
    [Coluna('emp_imposto_funrural_descontar')]
    FEmp_imposto_funrural_descontar: integer;
    [Coluna('emp_financeiro_categoria_venda_idpk')]
    FEmp_financeiro_categoria_venda_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Crt: TCrt read FCrt write FCrt;
    property Cidade: TCidade read FCidade write FCidade;
    property Emp_im: string read FEmp_im write FEmp_im;
    property Emp_cep: string read FEmp_cep write FEmp_cep;
    property Emp_cnae: string read FEmp_cnae write FEmp_cnae;
    property Emp_idpk: integer read FEmp_idpk write FEmp_idpk;
    property Emp_email: string read FEmp_email write FEmp_email;
    property Emp_ie_rg: string read FEmp_ie_rg write FEmp_ie_rg;
    property Emp_rntrc: string read FEmp_rntrc write FEmp_rntrc;
    property Emp_bairro: string read FEmp_bairro write FEmp_bairro;
    property Emp_cnpj_cpf: string read FEmp_cnpj_cpf write FEmp_cnpj_cpf;
    property Emp_crt_idpk: integer read FEmp_crt_idpk write FEmp_crt_idpk;
    property Emp_rg_orgao: string read FEmp_rg_orgao write FEmp_rg_orgao;
    property Empresa_slug: TEmpresa_slug read FEmpresa_slug write FEmpresa_slug;
    property Emp_rg_estado: string read FEmp_rg_estado write FEmp_rg_estado;
    property Representante: TRepresentante read FRepresentante write FRepresentante;
    property Emp_logradouro: string read FEmp_logradouro write FEmp_logradouro;
    property Emp_plano_idpk: integer read FEmp_plano_idpk write FEmp_plano_idpk;
    property Emp_rg_emissao: string read FEmp_rg_emissao write FEmp_rg_emissao;
    property Emp_usafiliais: integer read FEmp_usafiliais write FEmp_usafiliais;
    property Emp_certificado: string read FEmp_certificado write FEmp_certificado;
    property Emp_cidade_idpk: integer read FEmp_cidade_idpk write FEmp_cidade_idpk;
    property Emp_codigoseapi: integer read FEmp_codigoseapi write FEmp_codigoseapi;
    property Emp_complemento: string read FEmp_complemento write FEmp_complemento;
    property Emp_contador_uf: string read FEmp_contador_uf write FEmp_contador_uf;
    property Emp_notificacao: integer read FEmp_notificacao write FEmp_notificacao;
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
    property Emp_logotipo_foto: string read FEmp_logotipo_foto write FEmp_logotipo_foto;
    property Emp_nome_fantasia: string read FEmp_nome_fantasia write FEmp_nome_fantasia;
    property Emp_webhook_token: string read FEmp_webhook_token write FEmp_webhook_token;
    property Emp_chave_cadastro: string read FEmp_chave_cadastro write FEmp_chave_cadastro;
    property Emp_contador_email: string read FEmp_contador_email write FEmp_contador_email;
    property Emp_webhook_padrao: string read FEmp_webhook_padrao write FEmp_webhook_padrao;
    property Emp_certificado_CSC: string read FEmp_certificado_CSC write FEmp_certificado_CSC;
    property Emp_contador_bairro: string read FEmp_contador_bairro write FEmp_contador_bairro;
    property Emp_contador_cidade: string read FEmp_contador_cidade write FEmp_contador_cidade;
    property Emp_contador_numero: string read FEmp_contador_numero write FEmp_contador_numero;
    property Emp_doc_estrangeiro: string read FEmp_doc_estrangeiro write FEmp_doc_estrangeiro;
    property Emp_fiscal_ambiente: integer read FEmp_fiscal_ambiente write FEmp_fiscal_ambiente;
    property Emp_ie_rg_indicador: integer read FEmp_ie_rg_indicador write FEmp_ie_rg_indicador;
    property Emp_financeiro_multa: double read FEmp_financeiro_multa write FEmp_financeiro_multa;
    property Emp_nome_razaosocial: string read FEmp_nome_razaosocial write FEmp_nome_razaosocial;
    property Emp_sistema_tipo_uso: string read FEmp_sistema_tipo_uso write FEmp_sistema_tipo_uso;
    property Emp_ultima_alteracao: string read FEmp_ultima_alteracao write FEmp_ultima_alteracao;
    property Empresa_fintech_taxa: TList<TEmpresa_fintech_taxa> read FEmpresa_fintech_taxa write FEmpresa_fintech_taxa;
    property Emp_certificado_senha: string read FEmp_certificado_senha write FEmp_certificado_senha;
    property Emp_financeiro_sabado: integer read FEmp_financeiro_sabado write FEmp_financeiro_sabado;
    property Emp_fiscal_uf_emissao: string read FEmp_fiscal_uf_emissao write FEmp_fiscal_uf_emissao;
    property Emp_logradouro_numero: string read FEmp_logradouro_numero write FEmp_logradouro_numero;
    property Emp_certificado_CSC_id: string read FEmp_certificado_CSC_id write FEmp_certificado_CSC_id;
    property Emp_financeiro_domingo: integer read FEmp_financeiro_domingo write FEmp_financeiro_domingo;
    property Emp_financeiro_feriado: integer read FEmp_financeiro_feriado write FEmp_financeiro_feriado;
    property Emp_logotipo_dataenvio: string read FEmp_logotipo_dataenvio write FEmp_logotipo_dataenvio;
    property Emp_ramoatividade_idpk: integer read FEmp_ramoatividade_idpk write FEmp_ramoatividade_idpk;
    property Emp_representante_idpk: integer read FEmp_representante_idpk write FEmp_representante_idpk;
    property Emp_telefone_principal: string read FEmp_telefone_principal write FEmp_telefone_principal;
    property Empresa_ramo_atividade: TEmpresa_ramo_atividade read FEmpresa_ramo_atividade write FEmpresa_ramo_atividade;
    property Emp_contador_logradouro: string read FEmp_contador_logradouro write FEmp_contador_logradouro;
    property Emp_cpf_responsavelsiga: string read FEmp_cpf_responsavelsiga write FEmp_cpf_responsavelsiga;
    property Emp_imposto_icmscredito: double read FEmp_imposto_icmscredito write FEmp_imposto_icmscredito;
    property Emp_telefone_secundario: string read FEmp_telefone_secundario write FEmp_telefone_secundario;
    property Emp_certificado_validade: string read FEmp_certificado_validade write FEmp_certificado_validade;
    property Emp_contador_cidade_idpk: integer read FEmp_contador_cidade_idpk write FEmp_contador_cidade_idpk;
    property Emp_contador_complemento: string read FEmp_contador_complemento write FEmp_contador_complemento;
    property Emp_contador_razaosocial: string read FEmp_contador_razaosocial write FEmp_contador_razaosocial;
    property Emp_financeiro_juros_mes: double read FEmp_financeiro_juros_mes write FEmp_financeiro_juros_mes;
    property Emp_certificado_dataenvio: string read FEmp_certificado_dataenvio write FEmp_certificado_dataenvio;
    property Emp_imposto_permitecredito: integer read FEmp_imposto_permitecredito write FEmp_imposto_permitecredito;
    property Emp_data_nascimento_abertura: string read FEmp_data_nascimento_abertura write FEmp_data_nascimento_abertura;
    property Emp_financeiro_carencia_dias: integer read FEmp_financeiro_carencia_dias write FEmp_financeiro_carencia_dias;
    property Emp_imposto_funrural_aliquota: double read FEmp_imposto_funrural_aliquota write FEmp_imposto_funrural_aliquota;
    property Emp_empresa_representante_idpk: integer read FEmp_empresa_representante_idpk write FEmp_empresa_representante_idpk;
    property Emp_fintech_extrato_temporario: integer read FEmp_fintech_extrato_temporario write FEmp_fintech_extrato_temporario;
    property Emp_imposto_funrural_descontar: integer read FEmp_imposto_funrural_descontar write FEmp_imposto_funrural_descontar;
    property Emp_financeiro_categoria_venda_idpk: integer read FEmp_financeiro_categoria_venda_idpk write FEmp_financeiro_categoria_venda_idpk;
  end;

  TUsuario_empresa = class
  private
    [Coluna('empresa')]
    FEmpresa: TList<TEmpresa>;
    [Coluna('usuario')]
    FUsuario: TUsuario;
    [Coluna('use_idpk')]
    FUse_idpk: integer;
    [Coluna('use_status')]
    FUse_status: string;
    [Coluna('use_empresa_idpk')]
    FUse_empresa_idpk: integer;
    [Coluna('use_usuario_idpk')]
    FUse_usuario_idpk: integer;
    [Coluna('use_acessocompleto')]
    FUse_acessocompleto: integer;
    [Coluna('usuario_perfil_tipo')]
    FUsuario_perfil_tipo: string;
    [Coluna('use_ultima_alteracao')]
    FUse_ultima_alteracao: string;
    [Coluna('use_usuario_tipo_idpk')]
    FUse_usuario_tipo_idpk: integer;
    [Coluna('usuario_tipo_permissao')]
    FUsuario_tipo_permissao: TList<TUsuario_tipo_permissao>;
    [Coluna('use_tabela_comissao_idpk')]
    FUse_tabela_comissao_idpk: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Empresa: TList<TEmpresa> read FEmpresa write FEmpresa;
    property Usuario: TUsuario read FUsuario write FUsuario;
    property Use_idpk: integer read FUse_idpk write FUse_idpk;
    property Use_status: string read FUse_status write FUse_status;
    property Use_empresa_idpk: integer read FUse_empresa_idpk write FUse_empresa_idpk;
    property Use_usuario_idpk: integer read FUse_usuario_idpk write FUse_usuario_idpk;
    property Use_acessocompleto: integer read FUse_acessocompleto write FUse_acessocompleto;
    property Usuario_perfil_tipo: string read FUsuario_perfil_tipo write FUsuario_perfil_tipo;
    property Use_ultima_alteracao: string read FUse_ultima_alteracao write FUse_ultima_alteracao;
    property Use_usuario_tipo_idpk: integer read FUse_usuario_tipo_idpk write FUse_usuario_tipo_idpk;
    property Usuario_tipo_permissao: TList<TUsuario_tipo_permissao> read FUsuario_tipo_permissao write FUsuario_tipo_permissao;
    property Use_tabela_comissao_idpk: integer read FUse_tabela_comissao_idpk write FUse_tabela_comissao_idpk;
  end;

  TResponseClassLogin = class
  private
    [Coluna('token')]
    FToken: string;
    [Coluna('token_exp')]
    FToken_exp: string;
    [Coluna('usuario_empresa')]
    FUsuario_empresa: TList<TUsuario_empresa>;
    [Coluna('usu_idpk')]
    FUsu_idpk: integer;
    [Coluna('usu_nome')]
    FUsu_nome: string;
    [Coluna('usu_email')]
    FUsu_email: string;
    [Coluna('usu_imagem_perfil')]
    FUsu_imagem_perfil: string;
    [Coluna('tipo_acesso')]
    FTipo_acesso: string;
    [Coluna('usu_representante_idpk')]
    FUsu_representante_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Token: string read FToken write FToken;
    property Token_exp: string read FToken_exp write FToken_exp;
    property Usuario_empresa: TList<TUsuario_empresa> read FUsuario_empresa write FUsuario_empresa;
    property Usu_idpk: integer read FUsu_idpk write FUsu_idpk;
    property Usu_nome: string read FUsu_nome write FUsu_nome;
    property Usu_email: string read FUsu_email write FUsu_email;
    property Usu_imagem_perfil: string read FUsu_imagem_perfil write FUsu_imagem_perfil;
    property Tipo_acesso: string read FTipo_acesso write FTipo_acesso;
    property Usu_representante_idpk: string read FUsu_representante_idpk write FUsu_representante_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TUsuario_tipo_permissao }

constructor TUsuario_tipo_permissao.Create;
begin
end;

destructor TUsuario_tipo_permissao.Destroy;
begin

  inherited;
end;

constructor TUsuario_tipo_permissao.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('upp_idpk', self.FUpp_idpk); except end;
  try value.TryGetValue<string>('upp_grupo', self.FUpp_grupo); except end;
  try value.TryGetValue<string>('upp_descricao', self.FUpp_descricao); except end;
  try value.TryGetValue<integer>('upp_permissao', self.FUpp_permissao); except end;
  try value.TryGetValue<integer>('upp_empresa_idpk', self.FUpp_empresa_idpk); except end;
  try value.TryGetValue<integer>('upp_usuario_tipo_idpk', self.FUpp_usuario_tipo_idpk); except end;
  try value.TryGetValue<string>('upp_funcionalidade_chave', self.FUpp_funcionalidade_chave); except end;
end;

constructor TUsuario_tipo_permissao.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TUsuario }

constructor TUsuario.Create;
begin
end;

destructor TUsuario.Destroy;
begin

  inherited;
end;

constructor TUsuario.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('usu_idpk', self.FUsu_idpk); except end;
  try value.TryGetValue<string>('usu_nome', self.FUsu_nome); except end;
  try value.TryGetValue<string>('usu_email', self.FUsu_email); except end;
  try value.TryGetValue<integer>('usu_sistema_idpk', self.FUsu_sistema_idpk); except end;
  try value.TryGetValue<string>('usu_imagem_perfil', self.FUsu_imagem_perfil); except end;
  try value.TryGetValue<integer>('usu_renovar_senha', self.FUsu_renovar_senha); except end;
  try value.TryGetValue<string>('usu_representante_idpk', self.FUsu_representante_idpk); except end;
  try value.TryGetValue<string>('usu_renovar_senha_token', self.FUsu_renovar_senha_token); except end;
  try value.TryGetValue<string>('usu_renovar_senha_expiracao', self.FUsu_renovar_senha_expiracao); except end;
end;

constructor TUsuario.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TEmpresa_ramo_atividade }

constructor TEmpresa_ramo_atividade.Create;
begin
end;

destructor TEmpresa_ramo_atividade.Destroy;
begin

  inherited;
end;

constructor TEmpresa_ramo_atividade.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('era_idpk', self.FEra_idpk); except end;
  try value.TryGetValue<string>('era_tipo', self.FEra_tipo); except end;
  try value.TryGetValue<integer>('era_ramointerno', self.FEra_ramointerno); except end;
end;

constructor TEmpresa_ramo_atividade.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TEmpresa_fintech_taxa }

constructor TEmpresa_fintech_taxa.Create;
begin
end;

destructor TEmpresa_fintech_taxa.Destroy;
begin

  inherited;
end;

constructor TEmpresa_fintech_taxa.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('esp_idpk', self.FEsp_idpk); except end;
  try value.TryGetValue<double>('esp_taxa', self.FEsp_taxa); except end;
  try value.TryGetValue<string>('esp_tipo', self.FEsp_tipo); except end;
  try value.TryGetValue<string>('esp_taxa_tipo', self.FEsp_taxa_tipo); except end;
  try value.TryGetValue<integer>('esp_empresa_idpk', self.FEsp_empresa_idpk); except end;
  try value.TryGetValue<string>('esp_ultima_alteracao', self.FEsp_ultima_alteracao); except end;
  try value.TryGetValue<double>('esp_taxa_valor_maximo', self.FEsp_taxa_valor_maximo); except end;
  try value.TryGetValue<double>('esp_taxa_valor_minimo', self.FEsp_taxa_valor_minimo); except end;
  try value.TryGetValue<string>('esp_integracao_boleto_idpk', self.FEsp_integracao_boleto_idpk); except end;
  try value.TryGetValue<string>('esp_integracao_cartao_idpk', self.FEsp_integracao_cartao_idpk); except end;
end;

constructor TEmpresa_fintech_taxa.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TRepresentante }

constructor TRepresentante.Create;
begin
end;

destructor TRepresentante.Destroy;
begin

  inherited;
end;

constructor TRepresentante.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('rep_suporte_email', self.FRep_suporte_email); except end;
  try value.TryGetValue<string>('rep_suporte_telefone', self.FRep_suporte_telefone); except end;
  try value.TryGetValue<string>('rep_suporte_whatsapp', self.FRep_suporte_whatsapp); except end;
  try value.TryGetValue<string>('rep_suporte_link_acesso_remoto', self.FRep_suporte_link_acesso_remoto); except end;
end;

constructor TRepresentante.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TEmpresa_slug }

constructor TEmpresa_slug.Create;
begin
end;

destructor TEmpresa_slug.Destroy;
begin

  inherited;
end;

constructor TEmpresa_slug.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('ems_slug', self.FEms_slug); except end;
  try value.TryGetValue<string>('ems_twitter', self.FEms_twitter); except end;
  try value.TryGetValue<string>('ems_youtube', self.FEms_youtube); except end;
  try value.TryGetValue<string>('ems_facebook', self.FEms_facebook); except end;
  try value.TryGetValue<string>('ems_linkedin', self.FEms_linkedin); except end;
  try value.TryGetValue<string>('ems_whatsapp', self.FEms_whatsapp); except end;
  try value.TryGetValue<string>('ems_instagram', self.FEms_instagram); except end;
  try value.TryGetValue<integer>('ems_empresa_idpk', self.FEms_empresa_idpk); except end;
  try value.TryGetValue<integer>('ems_sistema_idpk', self.FEms_sistema_idpk); except end;
  try value.TryGetValue<string>('ems_catalogo_ativo', self.FEms_catalogo_ativo); except end;
  try value.TryGetValue<string>('ems_catalogo_exibir_preco', self.FEms_catalogo_exibir_preco); except end;
  try value.TryGetValue<string>('ems_cliente_cobranca_ativa', self.FEms_cliente_cobranca_ativa); except end;
  try value.TryGetValue<string>('ems_consulta_cliente_ativa', self.FEms_consulta_cliente_ativa); except end;
end;

constructor TEmpresa_slug.CreateWithJsonString(const value : string);
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

{ TEmpresa }

constructor TEmpresa.Create;
begin
  Crt := TCrt.Create;
  Cidade := TCidade.Create;
  Empresa_slug := TEmpresa_slug.Create;
  Representante := TRepresentante.Create;
  Empresa_fintech_taxa := TList<TEmpresa_fintech_taxa>.Create;
  Empresa_ramo_atividade := TEmpresa_ramo_atividade.Create;
end;

destructor TEmpresa.Destroy;
begin
  myFreeAndNil(Crt);
  myFreeAndNil(Cidade);
  myFreeAndNil(Empresa_slug);
  myFreeAndNil(Representante);
  while (Empresa_fintech_taxa.Count > 0) do
  begin
    myFreeAndNil(Empresa_fintech_taxa.items[0]);
    Empresa_fintech_taxa.Delete(0);
  end;
  myFreeAndNil(Empresa_fintech_taxa);
  myFreeAndNil(Empresa_ramo_atividade);

  inherited;
end;

constructor TEmpresa.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  obj := nil;
  arr := nil;
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
  try value.TryGetValue<string>('emp_im', self.FEmp_im); except end;
  try value.TryGetValue<string>('emp_cep', self.FEmp_cep); except end;
  try value.TryGetValue<string>('emp_cnae', self.FEmp_cnae); except end;
  try value.TryGetValue<integer>('emp_idpk', self.FEmp_idpk); except end;
  try value.TryGetValue<string>('emp_email', self.FEmp_email); except end;
  try value.TryGetValue<string>('emp_ie_rg', self.FEmp_ie_rg); except end;
  try value.TryGetValue<string>('emp_rntrc', self.FEmp_rntrc); except end;
  try value.TryGetValue<string>('emp_bairro', self.FEmp_bairro); except end;
  try value.TryGetValue<string>('emp_cnpj_cpf', self.FEmp_cnpj_cpf); except end;
  try value.TryGetValue<integer>('emp_crt_idpk', self.FEmp_crt_idpk); except end;
  try value.TryGetValue<string>('emp_rg_orgao', self.FEmp_rg_orgao); except end;
  try
    value.TryGetValue<TJSONObject>('empresa_slug', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FEmpresa_slug);
      self.FEmpresa_slug := TEmpresa_slug.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('emp_rg_estado', self.FEmp_rg_estado); except end;
  try
    value.TryGetValue<TJSONObject>('representante', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FRepresentante);
      self.FRepresentante := TRepresentante.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('emp_logradouro', self.FEmp_logradouro); except end;
  try value.TryGetValue<integer>('emp_plano_idpk', self.FEmp_plano_idpk); except end;
  try value.TryGetValue<string>('emp_rg_emissao', self.FEmp_rg_emissao); except end;
  try value.TryGetValue<integer>('emp_usafiliais', self.FEmp_usafiliais); except end;
  try value.TryGetValue<string>('emp_certificado', self.FEmp_certificado); except end;
  try value.TryGetValue<integer>('emp_cidade_idpk', self.FEmp_cidade_idpk); except end;
  try value.TryGetValue<integer>('emp_codigoseapi', self.FEmp_codigoseapi); except end;
  try value.TryGetValue<string>('emp_complemento', self.FEmp_complemento); except end;
  try value.TryGetValue<string>('emp_contador_uf', self.FEmp_contador_uf); except end;
  try value.TryGetValue<integer>('emp_notificacao', self.FEmp_notificacao); except end;
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
  try value.TryGetValue<string>('emp_logotipo_foto', self.FEmp_logotipo_foto); except end;
  try value.TryGetValue<string>('emp_nome_fantasia', self.FEmp_nome_fantasia); except end;
  try value.TryGetValue<string>('emp_webhook_token', self.FEmp_webhook_token); except end;
  try value.TryGetValue<string>('emp_chave_cadastro', self.FEmp_chave_cadastro); except end;
  try value.TryGetValue<string>('emp_contador_email', self.FEmp_contador_email); except end;
  try value.TryGetValue<string>('emp_webhook_padrao', self.FEmp_webhook_padrao); except end;
  try value.TryGetValue<string>('emp_certificado_CSC', self.FEmp_certificado_CSC); except end;
  try value.TryGetValue<string>('emp_contador_bairro', self.FEmp_contador_bairro); except end;
  try value.TryGetValue<string>('emp_contador_cidade', self.FEmp_contador_cidade); except end;
  try value.TryGetValue<string>('emp_contador_numero', self.FEmp_contador_numero); except end;
  try value.TryGetValue<string>('emp_doc_estrangeiro', self.FEmp_doc_estrangeiro); except end;
  try value.TryGetValue<integer>('emp_fiscal_ambiente', self.FEmp_fiscal_ambiente); except end;
  try value.TryGetValue<integer>('emp_ie_rg_indicador', self.FEmp_ie_rg_indicador); except end;
  try value.TryGetValue<double>('emp_financeiro_multa', self.FEmp_financeiro_multa); except end;
  try value.TryGetValue<string>('emp_nome_razaosocial', self.FEmp_nome_razaosocial); except end;
  try value.TryGetValue<string>('emp_sistema_tipo_uso', self.FEmp_sistema_tipo_uso); except end;
  try value.TryGetValue<string>('emp_ultima_alteracao', self.FEmp_ultima_alteracao); except end;
  try
    value.TryGetValue<TJSONArray>('empresa_fintech_taxa', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FEmpresa_fintech_taxa.add(
          TEmpresa_fintech_taxa.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('emp_certificado_senha', self.FEmp_certificado_senha); except end;
  try value.TryGetValue<integer>('emp_financeiro_sabado', self.FEmp_financeiro_sabado); except end;
  try value.TryGetValue<string>('emp_fiscal_uf_emissao', self.FEmp_fiscal_uf_emissao); except end;
  try value.TryGetValue<string>('emp_logradouro_numero', self.FEmp_logradouro_numero); except end;
  try value.TryGetValue<string>('emp_certificado_CSC_id', self.FEmp_certificado_CSC_id); except end;
  try value.TryGetValue<integer>('emp_financeiro_domingo', self.FEmp_financeiro_domingo); except end;
  try value.TryGetValue<integer>('emp_financeiro_feriado', self.FEmp_financeiro_feriado); except end;
  try value.TryGetValue<string>('emp_logotipo_dataenvio', self.FEmp_logotipo_dataenvio); except end;
  try value.TryGetValue<integer>('emp_ramoatividade_idpk', self.FEmp_ramoatividade_idpk); except end;
  try value.TryGetValue<integer>('emp_representante_idpk', self.FEmp_representante_idpk); except end;
  try value.TryGetValue<string>('emp_telefone_principal', self.FEmp_telefone_principal); except end;
  try
    value.TryGetValue<TJSONObject>('empresa_ramo_atividade', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FEmpresa_ramo_atividade);
      self.FEmpresa_ramo_atividade := TEmpresa_ramo_atividade.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('emp_contador_logradouro', self.FEmp_contador_logradouro); except end;
  try value.TryGetValue<string>('emp_cpf_responsavelsiga', self.FEmp_cpf_responsavelsiga); except end;
  try value.TryGetValue<double>('emp_imposto_icmscredito', self.FEmp_imposto_icmscredito); except end;
  try value.TryGetValue<string>('emp_telefone_secundario', self.FEmp_telefone_secundario); except end;
  try value.TryGetValue<string>('emp_certificado_validade', self.FEmp_certificado_validade); except end;
  try value.TryGetValue<integer>('emp_contador_cidade_idpk', self.FEmp_contador_cidade_idpk); except end;
  try value.TryGetValue<string>('emp_contador_complemento', self.FEmp_contador_complemento); except end;
  try value.TryGetValue<string>('emp_contador_razaosocial', self.FEmp_contador_razaosocial); except end;
  try value.TryGetValue<double>('emp_financeiro_juros_mes', self.FEmp_financeiro_juros_mes); except end;
  try value.TryGetValue<string>('emp_certificado_dataenvio', self.FEmp_certificado_dataenvio); except end;
  try value.TryGetValue<integer>('emp_imposto_permitecredito', self.FEmp_imposto_permitecredito); except end;
  try value.TryGetValue<string>('emp_data_nascimento_abertura', self.FEmp_data_nascimento_abertura); except end;
  try value.TryGetValue<integer>('emp_financeiro_carencia_dias', self.FEmp_financeiro_carencia_dias); except end;
  try value.TryGetValue<double>('emp_imposto_funrural_aliquota', self.FEmp_imposto_funrural_aliquota); except end;
  try value.TryGetValue<integer>('emp_empresa_representante_idpk', self.FEmp_empresa_representante_idpk); except end;
  try value.TryGetValue<integer>('emp_fintech_extrato_temporario', self.FEmp_fintech_extrato_temporario); except end;
  try value.TryGetValue<integer>('emp_imposto_funrural_descontar', self.FEmp_imposto_funrural_descontar); except end;
  try value.TryGetValue<integer>('emp_financeiro_categoria_venda_idpk', self.FEmp_financeiro_categoria_venda_idpk); except end;
end;

constructor TEmpresa.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TUsuario_empresa }

constructor TUsuario_empresa.Create;
begin
  Empresa := TList<TEmpresa>.Create;
  Usuario := TUsuario.Create;
  Usuario_tipo_permissao := TList<TUsuario_tipo_permissao>.Create;
end;

destructor TUsuario_empresa.Destroy;
begin
  while (Empresa.Count > 0) do
  begin
    myFreeAndNil(Empresa.items[0]);
    Empresa.Delete(0);
  end;
  myFreeAndNil(Empresa);
  myFreeAndNil(Usuario);
  while (Usuario_tipo_permissao.Count > 0) do
  begin
    myFreeAndNil(Usuario_tipo_permissao.items[0]);
    Usuario_tipo_permissao.Delete(0);
  end;
  myFreeAndNil(Usuario_tipo_permissao);

  inherited;
end;

constructor TUsuario_empresa.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  obj := nil;
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONArray>('empresa', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FEmpresa.add(
          TEmpresa.CreateWithJson(obj)
        );
      end;
  except
  end;
  try
    value.TryGetValue<TJSONObject>('usuario', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FUsuario);
      self.FUsuario := TUsuario.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('use_idpk', self.FUse_idpk); except end;
  try value.TryGetValue<string>('use_status', self.FUse_status); except end;
  try value.TryGetValue<integer>('use_empresa_idpk', self.FUse_empresa_idpk); except end;
  try value.TryGetValue<integer>('use_usuario_idpk', self.FUse_usuario_idpk); except end;
  try value.TryGetValue<integer>('use_acessocompleto', self.FUse_acessocompleto); except end;
  try value.TryGetValue<string>('usuario_perfil_tipo', self.FUsuario_perfil_tipo); except end;
  try value.TryGetValue<string>('use_ultima_alteracao', self.FUse_ultima_alteracao); except end;
  try value.TryGetValue<integer>('use_usuario_tipo_idpk', self.FUse_usuario_tipo_idpk); except end;
  try
    value.TryGetValue<TJSONArray>('usuario_tipo_permissao', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FUsuario_tipo_permissao.add(
          TUsuario_tipo_permissao.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<integer>('use_tabela_comissao_idpk', self.FUse_tabela_comissao_idpk); except end;
end;

constructor TUsuario_empresa.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TResponseClassLogin }

constructor TResponseClassLogin.Create;
begin
  Usuario_empresa := TList<TUsuario_empresa>.Create;
end;

destructor TResponseClassLogin.Destroy;
begin
  while (Usuario_empresa.Count > 0) do
  begin
    myFreeAndNil(Usuario_empresa.items[0]);
    Usuario_empresa.Delete(0);
  end;
  myFreeAndNil(Usuario_empresa);

  inherited;
end;

constructor TResponseClassLogin.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('token', self.FToken); except end;
  try value.TryGetValue<string>('token_exp', self.FToken_exp); except end;
  try
    value.TryGetValue<TJSONArray>('usuario_empresa', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FUsuario_empresa.add(
          TUsuario_empresa.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<integer>('usu_idpk', self.FUsu_idpk); except end;
  try value.TryGetValue<string>('usu_nome', self.FUsu_nome); except end;
  try value.TryGetValue<string>('usu_email', self.FUsu_email); except end;
  try value.TryGetValue<string>('usu_imagem_perfil', self.FUsu_imagem_perfil); except end;
  try value.TryGetValue<string>('tipo_acesso', self.FTipo_acesso); except end;
  try value.TryGetValue<string>('usu_representante_idpk', self.FUsu_representante_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassLogin.CreateWithJsonString(const value : string);
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
