unit mercurio.api.financeiro_movimento_boleto.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('fmb_data')]
    FFmb_data: string;
    [Coluna('fmb_idpk')]
    FFmb_idpk: integer;
    [Coluna('fmb_taxa')]
    FFmb_taxa: double;
    [Coluna('fmb_chave')]
    FFmb_chave: string;
    [Coluna('fmb_multa')]
    FFmb_multa: double;
    [Coluna('fmb_valor')]
    FFmb_valor: double;
    [Coluna('fmb_status')]
    FFmb_status: string;
    [Coluna('fmb_usuario')]
    FFmb_usuario: string;
    [Coluna('fmb_webhook')]
    FFmb_webhook: string;
    [Coluna('fmb_link_url')]
    FFmb_link_url: string;
    [Coluna('fmb_instrucao')]
    FFmb_instrucao: string;
    [Coluna('fmb_sacado_uf')]
    FFmb_sacado_uf: string;
    [Coluna('fmb_referencia')]
    FFmb_referencia: string;
    [Coluna('fmb_sacado_cep')]
    FFmb_sacado_cep: string;
    [Coluna('fmb_vencimento')]
    FFmb_vencimento: string;
    [Coluna('fmb_cobranca_id')]
    FFmb_cobranca_id: string;
    [Coluna('fmb_filial_idpk')]
    FFmb_filial_idpk: string;
    [Coluna('fmb_sacado_nome')]
    FFmb_sacado_nome: string;
    [Coluna('fmb_sacado_pais')]
    FFmb_sacado_pais: string;
    [Coluna('fmb_cliente_idpk')]
    FFmb_cliente_idpk: string;
    [Coluna('fmb_empresa_idpk')]
    FFmb_empresa_idpk: integer;
    [Coluna('fmb_juros_mensal')]
    FFmb_juros_mensal: double;
    [Coluna('fmb_nosso_numero')]
    FFmb_nosso_numero: string;
    [Coluna('fmb_usuario_idpk')]
    FFmb_usuario_idpk: integer;
    [Coluna('fmb_desconto_tipo')]
    FFmb_desconto_tipo: string;
    [Coluna('fmb_sacado_bairro')]
    FFmb_sacado_bairro: string;
    [Coluna('fmb_sacado_cidade')]
    FFmb_sacado_cidade: string;
    [Coluna('fmb_webhook_token')]
    FFmb_webhook_token: string;
    [Coluna('fmb_desconto_valor')]
    FFmb_desconto_valor: double;
    [Coluna('fmb_cobranca_criada')]
    FFmb_cobranca_criada: string;
    [Coluna('fmb_linha_digitavel')]
    FFmb_linha_digitavel: string;
    [Coluna('fmb_sacado_cnpj_cpf')]
    FFmb_sacado_cnpj_cpf: string;
    [Coluna('fmb_sacado_endereco')]
    FFmb_sacado_endereco: string;
    [Coluna('fmb_numero_documento')]
    FFmb_numero_documento: string;
    [Coluna('fmb_ultima_alteracao')]
    FFmb_ultima_alteracao: string;
    [Coluna('fmb_cobranca_gerada_por')]
    FFmb_cobranca_gerada_por: integer;
    [Coluna('fmb_financeiro_conta_idpk')]
    FFmb_financeiro_conta_idpk: integer;
    [Coluna('fmb_cobranca_valor_liquido')]
    FFmb_cobranca_valor_liquido: double;
    [Coluna('fmb_sacado_endereco_numero')]
    FFmb_sacado_endereco_numero: string;
    [Coluna('fmb_cobranca_data_pagamento')]
    FFmb_cobranca_data_pagamento: string;
    [Coluna('fmb_cobranca_valor_recebido')]
    FFmb_cobranca_valor_recebido: double;
    [Coluna('fmb_financeiro_conta_idpk_2')]
    FFmb_financeiro_conta_idpk_2: string;
    [Coluna('fmb_cobranca_data_liquidacao')]
    FFmb_cobranca_data_liquidacao: string;
    [Coluna('fmb_financeiro_movimento_idpk')]
    FFmb_financeiro_movimento_idpk: string;
    [Coluna('fmb_sacado_endereco_complemento')]
    FFmb_sacado_endereco_complemento: string;
    [Coluna('fmb_financeiro_movimento_pix_idpk')]
    FFmb_financeiro_movimento_pix_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fmb_data: string read FFmb_data write FFmb_data;
    property Fmb_idpk: integer read FFmb_idpk write FFmb_idpk;
    property Fmb_taxa: double read FFmb_taxa write FFmb_taxa;
    property Fmb_chave: string read FFmb_chave write FFmb_chave;
    property Fmb_multa: double read FFmb_multa write FFmb_multa;
    property Fmb_valor: double read FFmb_valor write FFmb_valor;
    property Fmb_status: string read FFmb_status write FFmb_status;
    property Fmb_usuario: string read FFmb_usuario write FFmb_usuario;
    property Fmb_webhook: string read FFmb_webhook write FFmb_webhook;
    property Fmb_link_url: string read FFmb_link_url write FFmb_link_url;
    property Fmb_instrucao: string read FFmb_instrucao write FFmb_instrucao;
    property Fmb_sacado_uf: string read FFmb_sacado_uf write FFmb_sacado_uf;
    property Fmb_referencia: string read FFmb_referencia write FFmb_referencia;
    property Fmb_sacado_cep: string read FFmb_sacado_cep write FFmb_sacado_cep;
    property Fmb_vencimento: string read FFmb_vencimento write FFmb_vencimento;
    property Fmb_cobranca_id: string read FFmb_cobranca_id write FFmb_cobranca_id;
    property Fmb_filial_idpk: string read FFmb_filial_idpk write FFmb_filial_idpk;
    property Fmb_sacado_nome: string read FFmb_sacado_nome write FFmb_sacado_nome;
    property Fmb_sacado_pais: string read FFmb_sacado_pais write FFmb_sacado_pais;
    property Fmb_cliente_idpk: string read FFmb_cliente_idpk write FFmb_cliente_idpk;
    property Fmb_empresa_idpk: integer read FFmb_empresa_idpk write FFmb_empresa_idpk;
    property Fmb_juros_mensal: double read FFmb_juros_mensal write FFmb_juros_mensal;
    property Fmb_nosso_numero: string read FFmb_nosso_numero write FFmb_nosso_numero;
    property Fmb_usuario_idpk: integer read FFmb_usuario_idpk write FFmb_usuario_idpk;
    property Fmb_desconto_tipo: string read FFmb_desconto_tipo write FFmb_desconto_tipo;
    property Fmb_sacado_bairro: string read FFmb_sacado_bairro write FFmb_sacado_bairro;
    property Fmb_sacado_cidade: string read FFmb_sacado_cidade write FFmb_sacado_cidade;
    property Fmb_webhook_token: string read FFmb_webhook_token write FFmb_webhook_token;
    property Fmb_desconto_valor: double read FFmb_desconto_valor write FFmb_desconto_valor;
    property Fmb_cobranca_criada: string read FFmb_cobranca_criada write FFmb_cobranca_criada;
    property Fmb_linha_digitavel: string read FFmb_linha_digitavel write FFmb_linha_digitavel;
    property Fmb_sacado_cnpj_cpf: string read FFmb_sacado_cnpj_cpf write FFmb_sacado_cnpj_cpf;
    property Fmb_sacado_endereco: string read FFmb_sacado_endereco write FFmb_sacado_endereco;
    property Fmb_numero_documento: string read FFmb_numero_documento write FFmb_numero_documento;
    property Fmb_ultima_alteracao: string read FFmb_ultima_alteracao write FFmb_ultima_alteracao;
    property Fmb_cobranca_gerada_por: integer read FFmb_cobranca_gerada_por write FFmb_cobranca_gerada_por;
    property Fmb_financeiro_conta_idpk: integer read FFmb_financeiro_conta_idpk write FFmb_financeiro_conta_idpk;
    property Fmb_cobranca_valor_liquido: double read FFmb_cobranca_valor_liquido write FFmb_cobranca_valor_liquido;
    property Fmb_sacado_endereco_numero: string read FFmb_sacado_endereco_numero write FFmb_sacado_endereco_numero;
    property Fmb_cobranca_data_pagamento: string read FFmb_cobranca_data_pagamento write FFmb_cobranca_data_pagamento;
    property Fmb_cobranca_valor_recebido: double read FFmb_cobranca_valor_recebido write FFmb_cobranca_valor_recebido;
    property Fmb_financeiro_conta_idpk_2: string read FFmb_financeiro_conta_idpk_2 write FFmb_financeiro_conta_idpk_2;
    property Fmb_cobranca_data_liquidacao: string read FFmb_cobranca_data_liquidacao write FFmb_cobranca_data_liquidacao;
    property Fmb_financeiro_movimento_idpk: string read FFmb_financeiro_movimento_idpk write FFmb_financeiro_movimento_idpk;
    property Fmb_sacado_endereco_complemento: string read FFmb_sacado_endereco_complemento write FFmb_sacado_endereco_complemento;
    property Fmb_financeiro_movimento_pix_idpk: string read FFmb_financeiro_movimento_pix_idpk write FFmb_financeiro_movimento_pix_idpk;
  end;

  TResponseClassFinanceiroMovimentoBoletoGet = class
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

  try value.TryGetValue<string>('fmb_data', self.FFmb_data); except end;
  try value.TryGetValue<integer>('fmb_idpk', self.FFmb_idpk); except end;
  try value.TryGetValue<double>('fmb_taxa', self.FFmb_taxa); except end;
  try value.TryGetValue<string>('fmb_chave', self.FFmb_chave); except end;
  try value.TryGetValue<double>('fmb_multa', self.FFmb_multa); except end;
  try value.TryGetValue<double>('fmb_valor', self.FFmb_valor); except end;
  try value.TryGetValue<string>('fmb_status', self.FFmb_status); except end;
  try value.TryGetValue<string>('fmb_usuario', self.FFmb_usuario); except end;
  try value.TryGetValue<string>('fmb_webhook', self.FFmb_webhook); except end;
  try value.TryGetValue<string>('fmb_link_url', self.FFmb_link_url); except end;
  try value.TryGetValue<string>('fmb_instrucao', self.FFmb_instrucao); except end;
  try value.TryGetValue<string>('fmb_sacado_uf', self.FFmb_sacado_uf); except end;
  try value.TryGetValue<string>('fmb_referencia', self.FFmb_referencia); except end;
  try value.TryGetValue<string>('fmb_sacado_cep', self.FFmb_sacado_cep); except end;
  try value.TryGetValue<string>('fmb_vencimento', self.FFmb_vencimento); except end;
  try value.TryGetValue<string>('fmb_cobranca_id', self.FFmb_cobranca_id); except end;
  try value.TryGetValue<string>('fmb_filial_idpk', self.FFmb_filial_idpk); except end;
  try value.TryGetValue<string>('fmb_sacado_nome', self.FFmb_sacado_nome); except end;
  try value.TryGetValue<string>('fmb_sacado_pais', self.FFmb_sacado_pais); except end;
  try value.TryGetValue<string>('fmb_cliente_idpk', self.FFmb_cliente_idpk); except end;
  try value.TryGetValue<integer>('fmb_empresa_idpk', self.FFmb_empresa_idpk); except end;
  try value.TryGetValue<double>('fmb_juros_mensal', self.FFmb_juros_mensal); except end;
  try value.TryGetValue<string>('fmb_nosso_numero', self.FFmb_nosso_numero); except end;
  try value.TryGetValue<integer>('fmb_usuario_idpk', self.FFmb_usuario_idpk); except end;
  try value.TryGetValue<string>('fmb_desconto_tipo', self.FFmb_desconto_tipo); except end;
  try value.TryGetValue<string>('fmb_sacado_bairro', self.FFmb_sacado_bairro); except end;
  try value.TryGetValue<string>('fmb_sacado_cidade', self.FFmb_sacado_cidade); except end;
  try value.TryGetValue<string>('fmb_webhook_token', self.FFmb_webhook_token); except end;
  try value.TryGetValue<double>('fmb_desconto_valor', self.FFmb_desconto_valor); except end;
  try value.TryGetValue<string>('fmb_cobranca_criada', self.FFmb_cobranca_criada); except end;
  try value.TryGetValue<string>('fmb_linha_digitavel', self.FFmb_linha_digitavel); except end;
  try value.TryGetValue<string>('fmb_sacado_cnpj_cpf', self.FFmb_sacado_cnpj_cpf); except end;
  try value.TryGetValue<string>('fmb_sacado_endereco', self.FFmb_sacado_endereco); except end;
  try value.TryGetValue<string>('fmb_numero_documento', self.FFmb_numero_documento); except end;
  try value.TryGetValue<string>('fmb_ultima_alteracao', self.FFmb_ultima_alteracao); except end;
  try value.TryGetValue<integer>('fmb_cobranca_gerada_por', self.FFmb_cobranca_gerada_por); except end;
  try value.TryGetValue<integer>('fmb_financeiro_conta_idpk', self.FFmb_financeiro_conta_idpk); except end;
  try value.TryGetValue<double>('fmb_cobranca_valor_liquido', self.FFmb_cobranca_valor_liquido); except end;
  try value.TryGetValue<string>('fmb_sacado_endereco_numero', self.FFmb_sacado_endereco_numero); except end;
  try value.TryGetValue<string>('fmb_cobranca_data_pagamento', self.FFmb_cobranca_data_pagamento); except end;
  try value.TryGetValue<double>('fmb_cobranca_valor_recebido', self.FFmb_cobranca_valor_recebido); except end;
  try value.TryGetValue<string>('fmb_financeiro_conta_idpk_2', self.FFmb_financeiro_conta_idpk_2); except end;
  try value.TryGetValue<string>('fmb_cobranca_data_liquidacao', self.FFmb_cobranca_data_liquidacao); except end;
  try value.TryGetValue<string>('fmb_financeiro_movimento_idpk', self.FFmb_financeiro_movimento_idpk); except end;
  try value.TryGetValue<string>('fmb_sacado_endereco_complemento', self.FFmb_sacado_endereco_complemento); except end;
  try value.TryGetValue<string>('fmb_financeiro_movimento_pix_idpk', self.FFmb_financeiro_movimento_pix_idpk); except end;
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

{ TResponseClassFinanceiroMovimentoBoletoGet }

constructor TResponseClassFinanceiroMovimentoBoletoGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFinanceiroMovimentoBoletoGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFinanceiroMovimentoBoletoGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassFinanceiroMovimentoBoletoGet.CreateWithJsonString(const value : string);
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
