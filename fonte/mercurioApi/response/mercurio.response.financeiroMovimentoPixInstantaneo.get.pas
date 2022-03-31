unit mercurio.response.financeiroMovimentoPixInstantaneo.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TPagamento = class
  private
    [Coluna('fmp_pagador_nome')]
    FFmp_pagador_nome: string;
    [Coluna('fmp_pagador_banco')]
    FFmp_pagador_banco: string;
    [Coluna('fmp_pagador_conta')]
    FFmp_pagador_conta: string;
    [Coluna('fmp_pagamento_data')]
    FFmp_pagamento_data: string;
    [Coluna('fmp_pagador_agencia')]
    FFmp_pagador_agencia: string;
    [Coluna('fmp_pagador_documento')]
    FFmp_pagador_documento: string;
    [Coluna('fmp_pagador_conta_tipo')]
    FFmp_pagador_conta_tipo: string;
    [Coluna('fmp_pagamento_transacao_id')]
    FFmp_pagamento_transacao_id: string;
    [Coluna('fmp_cobranca_valor_recebido')]
    FFmp_cobranca_valor_recebido: double;
    [Coluna('fmp_pagador_link_url')]
    FFmp_pagador_link_url : string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fmp_pagador_nome: string read FFmp_pagador_nome write FFmp_pagador_nome;
    property Fmp_pagador_banco: string read FFmp_pagador_banco write FFmp_pagador_banco;
    property Fmp_pagador_conta: string read FFmp_pagador_conta write FFmp_pagador_conta;
    property Fmp_pagamento_data: string read FFmp_pagamento_data write FFmp_pagamento_data;
    property Fmp_pagador_agencia: string read FFmp_pagador_agencia write FFmp_pagador_agencia;
    property Fmp_pagador_documento: string read FFmp_pagador_documento write FFmp_pagador_documento;
    property Fmp_pagador_conta_tipo: string read FFmp_pagador_conta_tipo write FFmp_pagador_conta_tipo;
    property Fmp_pagamento_transacao_id: string read FFmp_pagamento_transacao_id write FFmp_pagamento_transacao_id;
    property Fmp_cobranca_valor_recebido: double read FFmp_cobranca_valor_recebido write FFmp_cobranca_valor_recebido;
    property Fmp_pagador_link_url : string read FFmp_pagador_link_url write FFmp_pagador_link_url;
  end;

  TDevolucao = class
  private
    [Coluna('fmp_devolucao_data')]
    FFmp_devolucao_data: string;
    [Coluna('fmp_devolucao_transacao_id')]
    FFmp_devolucao_transacao_id: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fmp_devolucao_data: string read FFmp_devolucao_data write FFmp_devolucao_data;
    property Fmp_devolucao_transacao_id: string read FFmp_devolucao_transacao_id write FFmp_devolucao_transacao_id;
  end;

  TRegistros = class
  private
    [Coluna('fmp_data')]
    FFmp_data: string;
    [Coluna('fmp_hash')]
    FFmp_hash: string;
    [Coluna('fmp_idpk')]
    FFmp_idpk: integer;
    [Coluna('fmp_taxa')]
    FFmp_taxa: double;
    [Coluna('devolucao')]
    FDevolucao: TDevolucao;
    [Coluna('fmp_multa')]
    FFmp_multa: double;
    [Coluna('fmp_valor')]
    FFmp_valor: double;
    [Coluna('pagamento')]
    FPagamento: TPagamento;
    [Coluna('fmp_status')]
    FFmp_status: string;
    [Coluna('fmp_usuario')]
    FFmp_usuario: string;
    [Coluna('fmp_webhook')]
    FFmp_webhook: string;
    [Coluna('fmp_link_url')]
    FFmp_link_url: string;
    [Coluna('fmp_pix_tipo')]
    FFmp_pix_tipo: string;
    [Coluna('fmp_descricao')]
    FFmp_descricao: string;
    [Coluna('fmp_sacado_uf')]
    FFmp_sacado_uf: string;
    [Coluna('fmp_gerado_por')]
    FFmp_gerado_por: string;
    [Coluna('fmp_sacado_cep')]
    FFmp_sacado_cep: string;
    [Coluna('fmp_vencimento')]
    FFmp_vencimento: string;
    [Coluna('fmp_filial_idpk')]
    FFmp_filial_idpk: string;
    [Coluna('fmp_link_qrcode')]
    FFmp_link_qrcode: string;
    [Coluna('fmp_sacado_nome')]
    FFmp_sacado_nome: string;
    [Coluna('fmp_sacado_pais')]
    FFmp_sacado_pais: string;
    [Coluna('fmp_cliente_idpk')]
    FFmp_cliente_idpk: string;
    [Coluna('fmp_empresa_idpk')]
    FFmp_empresa_idpk: integer;
    [Coluna('fmp_juros_mensal')]
    FFmp_juros_mensal: double;
    [Coluna('fmp_usuario_idpk')]
    FFmp_usuario_idpk: integer;
    [Coluna('fmp_desconto_tipo')]
    FFmp_desconto_tipo: string;
    [Coluna('fmp_sacado_bairro')]
    FFmp_sacado_bairro: string;
    [Coluna('fmp_sacado_cidade')]
    FFmp_sacado_cidade: string;
    [Coluna('fmp_webhook_token')]
    FFmp_webhook_token: string;
    [Coluna('fmp_desconto_valor')]
    FFmp_desconto_valor: double;
    [Coluna('fmp_sacado_cnpj_cpf')]
    FFmp_sacado_cnpj_cpf: string;
    [Coluna('fmp_sacado_endereco')]
    FFmp_sacado_endereco: string;
    [Coluna('fmp_ultima_alteracao')]
    FFmp_ultima_alteracao: string;
    [Coluna('fmp_financeiro_conta_idpk')]
    FFmp_financeiro_conta_idpk: integer;
    [Coluna('fmp_sacado_endereco_numero')]
    FFmp_sacado_endereco_numero: string;
    [Coluna('fmp_cobranca_valor_recebido')]
    FFmp_cobranca_valor_recebido: double;
    [Coluna('fmp_financeiro_conta_idpk_2')]
    FFmp_financeiro_conta_idpk_2: string;
    [Coluna('fmp_financeiro_movimento_idpk')]
    FFmp_financeiro_movimento_idpk: string;
    [Coluna('fmp_sacado_endereco_complemento')]
    FFmp_sacado_endereco_complemento: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fmp_data: string read FFmp_data write FFmp_data;
    property Fmp_hash: string read FFmp_hash write FFmp_hash;
    property Fmp_idpk: integer read FFmp_idpk write FFmp_idpk;
    property Fmp_taxa: double read FFmp_taxa write FFmp_taxa;
    property Devolucao: TDevolucao read FDevolucao write FDevolucao;
    property Fmp_multa: double read FFmp_multa write FFmp_multa;
    property Fmp_valor: double read FFmp_valor write FFmp_valor;
    property Pagamento: TPagamento read FPagamento write FPagamento;
    property Fmp_status: string read FFmp_status write FFmp_status;
    property Fmp_usuario: string read FFmp_usuario write FFmp_usuario;
    property Fmp_webhook: string read FFmp_webhook write FFmp_webhook;
    property Fmp_link_url: string read FFmp_link_url write FFmp_link_url;
    property Fmp_pix_tipo: string read FFmp_pix_tipo write FFmp_pix_tipo;
    property Fmp_descricao: string read FFmp_descricao write FFmp_descricao;
    property Fmp_sacado_uf: string read FFmp_sacado_uf write FFmp_sacado_uf;
    property Fmp_gerado_por: string read FFmp_gerado_por write FFmp_gerado_por;
    property Fmp_sacado_cep: string read FFmp_sacado_cep write FFmp_sacado_cep;
    property Fmp_vencimento: string read FFmp_vencimento write FFmp_vencimento;
    property Fmp_filial_idpk: string read FFmp_filial_idpk write FFmp_filial_idpk;
    property Fmp_link_qrcode: string read FFmp_link_qrcode write FFmp_link_qrcode;
    property Fmp_sacado_nome: string read FFmp_sacado_nome write FFmp_sacado_nome;
    property Fmp_sacado_pais: string read FFmp_sacado_pais write FFmp_sacado_pais;
    property Fmp_cliente_idpk: string read FFmp_cliente_idpk write FFmp_cliente_idpk;
    property Fmp_empresa_idpk: integer read FFmp_empresa_idpk write FFmp_empresa_idpk;
    property Fmp_juros_mensal: double read FFmp_juros_mensal write FFmp_juros_mensal;
    property Fmp_usuario_idpk: integer read FFmp_usuario_idpk write FFmp_usuario_idpk;
    property Fmp_desconto_tipo: string read FFmp_desconto_tipo write FFmp_desconto_tipo;
    property Fmp_sacado_bairro: string read FFmp_sacado_bairro write FFmp_sacado_bairro;
    property Fmp_sacado_cidade: string read FFmp_sacado_cidade write FFmp_sacado_cidade;
    property Fmp_webhook_token: string read FFmp_webhook_token write FFmp_webhook_token;
    property Fmp_desconto_valor: double read FFmp_desconto_valor write FFmp_desconto_valor;
    property Fmp_sacado_cnpj_cpf: string read FFmp_sacado_cnpj_cpf write FFmp_sacado_cnpj_cpf;
    property Fmp_sacado_endereco: string read FFmp_sacado_endereco write FFmp_sacado_endereco;
    property Fmp_ultima_alteracao: string read FFmp_ultima_alteracao write FFmp_ultima_alteracao;
    property Fmp_financeiro_conta_idpk: integer read FFmp_financeiro_conta_idpk write FFmp_financeiro_conta_idpk;
    property Fmp_sacado_endereco_numero: string read FFmp_sacado_endereco_numero write FFmp_sacado_endereco_numero;
    property Fmp_cobranca_valor_recebido: double read FFmp_cobranca_valor_recebido write FFmp_cobranca_valor_recebido;
    property Fmp_financeiro_conta_idpk_2: string read FFmp_financeiro_conta_idpk_2 write FFmp_financeiro_conta_idpk_2;
    property Fmp_financeiro_movimento_idpk: string read FFmp_financeiro_movimento_idpk write FFmp_financeiro_movimento_idpk;
    property Fmp_sacado_endereco_complemento: string read FFmp_sacado_endereco_complemento write FFmp_sacado_endereco_complemento;
  end;

  TResponseClassFinanceiroMovimentoPixInstantaneoGet = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('total_registros')]
    FTotal_registros : integer;
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
    property Total_registros : integer read FTotal_registros write FTotal_registros;
    property Status: string read FStatus write FStatus;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
  end;

implementation

uses System.SysUtils;

{ TPagamento }

constructor TPagamento.Create;
begin
end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

constructor TPagamento.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('fmp_pagador_nome', self.FFmp_pagador_nome); except end;
  try value.TryGetValue<string>('fmp_pagador_banco', self.FFmp_pagador_banco); except end;
  try value.TryGetValue<string>('fmp_pagador_conta', self.FFmp_pagador_conta); except end;
  try value.TryGetValue<string>('fmp_pagamento_data', self.FFmp_pagamento_data); except end;
  try value.TryGetValue<string>('fmp_pagador_agencia', self.FFmp_pagador_agencia); except end;
  try value.TryGetValue<string>('fmp_pagador_documento', self.FFmp_pagador_documento); except end;
  try value.TryGetValue<string>('fmp_pagador_conta_tipo', self.FFmp_pagador_conta_tipo); except end;
  try value.TryGetValue<string>('fmp_pagamento_transacao_id', self.FFmp_pagamento_transacao_id); except end;
  try value.TryGetValue<double>('fmp_cobranca_valor_recebido', self.FFmp_cobranca_valor_recebido); except end;
  try value.TryGetValue<string>('fmp_pagador_link_url', self.FFmp_pagador_link_url); except end;
end;

constructor TPagamento.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TDevolucao }

constructor TDevolucao.Create;
begin
end;

destructor TDevolucao.Destroy;
begin

  inherited;
end;

constructor TDevolucao.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('fmp_devolucao_data', self.FFmp_devolucao_data); except end;
  try value.TryGetValue<string>('fmp_devolucao_transacao_id', self.FFmp_devolucao_transacao_id); except end;
end;

constructor TDevolucao.CreateWithJsonString(const value : string);
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
  Devolucao := TDevolucao.Create;
  Pagamento := TPagamento.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Devolucao);
  myFreeAndNil(Pagamento);

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('fmp_data', self.FFmp_data); except end;
  try value.TryGetValue<string>('fmp_hash', self.FFmp_hash); except end;
  try value.TryGetValue<integer>('fmp_idpk', self.FFmp_idpk); except end;
  try value.TryGetValue<double>('fmp_taxa', self.FFmp_taxa); except end;
  try
    value.TryGetValue<TJSONObject>('devolucao', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FDevolucao);
      self.FDevolucao := TDevolucao.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<double>('fmp_multa', self.FFmp_multa); except end;
  try value.TryGetValue<double>('fmp_valor', self.FFmp_valor); except end;
  try
    value.TryGetValue<TJSONObject>('pagamento', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FPagamento);
      self.FPagamento := TPagamento.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('fmp_status', self.FFmp_status); except end;
  try value.TryGetValue<string>('fmp_usuario', self.FFmp_usuario); except end;
  try value.TryGetValue<string>('fmp_webhook', self.FFmp_webhook); except end;
  try value.TryGetValue<string>('fmp_link_url', self.FFmp_link_url); except end;
  try value.TryGetValue<string>('fmp_pix_tipo', self.FFmp_pix_tipo); except end;
  try value.TryGetValue<string>('fmp_descricao', self.FFmp_descricao); except end;
  try value.TryGetValue<string>('fmp_sacado_uf', self.FFmp_sacado_uf); except end;
  try value.TryGetValue<string>('fmp_gerado_por', self.FFmp_gerado_por); except end;
  try value.TryGetValue<string>('fmp_sacado_cep', self.FFmp_sacado_cep); except end;
  try value.TryGetValue<string>('fmp_vencimento', self.FFmp_vencimento); except end;
  try value.TryGetValue<string>('fmp_filial_idpk', self.FFmp_filial_idpk); except end;
  try value.TryGetValue<string>('fmp_link_qrcode', self.FFmp_link_qrcode); except end;
  try value.TryGetValue<string>('fmp_sacado_nome', self.FFmp_sacado_nome); except end;
  try value.TryGetValue<string>('fmp_sacado_pais', self.FFmp_sacado_pais); except end;
  try value.TryGetValue<string>('fmp_cliente_idpk', self.FFmp_cliente_idpk); except end;
  try value.TryGetValue<integer>('fmp_empresa_idpk', self.FFmp_empresa_idpk); except end;
  try value.TryGetValue<double>('fmp_juros_mensal', self.FFmp_juros_mensal); except end;
  try value.TryGetValue<integer>('fmp_usuario_idpk', self.FFmp_usuario_idpk); except end;
  try value.TryGetValue<string>('fmp_desconto_tipo', self.FFmp_desconto_tipo); except end;
  try value.TryGetValue<string>('fmp_sacado_bairro', self.FFmp_sacado_bairro); except end;
  try value.TryGetValue<string>('fmp_sacado_cidade', self.FFmp_sacado_cidade); except end;
  try value.TryGetValue<string>('fmp_webhook_token', self.FFmp_webhook_token); except end;
  try value.TryGetValue<double>('fmp_desconto_valor', self.FFmp_desconto_valor); except end;
  try value.TryGetValue<string>('fmp_sacado_cnpj_cpf', self.FFmp_sacado_cnpj_cpf); except end;
  try value.TryGetValue<string>('fmp_sacado_endereco', self.FFmp_sacado_endereco); except end;
  try value.TryGetValue<string>('fmp_ultima_alteracao', self.FFmp_ultima_alteracao); except end;
  try value.TryGetValue<integer>('fmp_financeiro_conta_idpk', self.FFmp_financeiro_conta_idpk); except end;
  try value.TryGetValue<string>('fmp_sacado_endereco_numero', self.FFmp_sacado_endereco_numero); except end;
  try value.TryGetValue<double>('fmp_cobranca_valor_recebido', self.FFmp_cobranca_valor_recebido); except end;
  try value.TryGetValue<string>('fmp_financeiro_conta_idpk_2', self.FFmp_financeiro_conta_idpk_2); except end;
  try value.TryGetValue<string>('fmp_financeiro_movimento_idpk', self.FFmp_financeiro_movimento_idpk); except end;
  try value.TryGetValue<string>('fmp_sacado_endereco_complemento', self.FFmp_sacado_endereco_complemento); except end;
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

{ TResponseClassFinanceiroMovimentoPixInstantaneoGet }

constructor TResponseClassFinanceiroMovimentoPixInstantaneoGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFinanceiroMovimentoPixInstantaneoGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFinanceiroMovimentoPixInstantaneoGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassFinanceiroMovimentoPixInstantaneoGet.CreateWithJsonString(const value : string);
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

