unit mercurio.api.financeiro_movimento_boleto;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.api.functions,
     mercurio.api.financeiro_movimento_boleto.delete, mercurio.api.financeiro_movimento_boleto.get,
     mercurio.api.financeiro_movimento_boleto.Liquidar, mercurio.api.financeiro_movimento_boleto.post;

type
  /// <summary> financeiro_movimento_pix (serve para pix cobrança e pix instantâneo) </summary>
  IBoleto = interface
    ['{AD338A07-1DFA-4184-9979-5C233D7725A7}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IBoleto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IBoleto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IBoleto;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    function setFinanceiroMovimentoIdpk(const value : string) : IBoleto;
    function getFinanceiroMovimentoIdpk : string;
    function setFinanceiroContaIdpk(const value : string) : IBoleto;
    function getFinanceiroContaIdpk : string;
    function setFinanceiroContaIdpk2(const value : string) : IBoleto;
    function getFinanceiroContaIdpk2 : string;
    function setStatus(const value : string) : IBoleto;
    function getStatus : string;
    function setVencimento(const value : TDate) : IBoleto;
    function getVencimento : TDate;
    function setValor(const value : double) : IBoleto;
    function getValor : double;
    function setDescontoTipo(const value : string) : IBoleto;
    function getDescontoTipo : string;
    function setDescontoValor(const value : double) : IBoleto;
    function getDescontoValor : double;
    function setJurosMensal(const value : double) : IBoleto;
    function getJurosMensal : double;
    function setMulta(const value : double) : IBoleto;
    function getMulta : double;
    function setDescricao(const value : string) : IBoleto;
    function getDescricao : string;
    function setClienteIdpk(const value : string) : IBoleto;
    function getClienteIdpk : string;
    function setSacadoNome(const value : string) : IBoleto;
    function getSacadoNome : string;
    function setSacadoCnpjCpf(const value : string) : IBoleto;
    function getSacadoCnpjCpf : string;
    function setSacadoEndereco(const value : string) : IBoleto;
    function getSacadoEndereco : string;
    function setSacadoEnderecoNumero(const value : string) : IBoleto;
    function getSacadoEnderecoNumero : string;
    function setSacadoEnderecoComplemento(const value : string) : IBoleto;
    function getSacadoEnderecoComplemento : string;
    function setSacadoBairro(const value : string) : IBoleto;
    function getSacadoBairro : string;
    function setSacadoCep(const value : string) : IBoleto;
    function getSacadoCep : string;
    function setSacadoCidade(const value : string) : IBoleto;
    function getSacadoCidade : string;
    function setSacadoUf(const value : string) : IBoleto;
    function getSacadoUf : string;
    function setSacadoPais(const value : string) : IBoleto;
    function getSacadoPais : string;
    function setInstrucao(const value : string) : IBoleto;
    function getInstrucao : string;
    function setWebhook(const value : string) : IBoleto;
    function getWebhook : string;
    function setWebhookToken(const value : string) : IBoleto;
    function getWebhookToken : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  TBoleto = class(TInterfacedObject, IBoleto)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FFinanceiroMovimentoIdpk : string;
    FFinanceiroContaIdpk : string;
    FFinanceiroContaIdpk2 : string;
    FStatus : string;
    FVencimento : TDate;
    FValor : double;
    FDescontoTipo : string;
    FDescontoValor : double;
    FJurosMensal : double;
    FMulta : double;
    FDescricao : string;
    FClienteIdpk : string;
    FSacadoNome : string;
    FSacadoCnpjCpf : string;
    FSacadoEndereco : string;
    FSacadoEnderecoNumero : string;
    FSacadoEnderecoComplemento : string;
    FSacadoBairro : string;
    FSacadoCep : string;
    FSacadoCidade : string;
    FSacadoUf : string;
    FSacadoPais : string;
    FInstrucao : string;
    FWebhook : string;
    FWebhookToken : string;
  public
    class function new : IBoleto;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IBoleto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IBoleto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IBoleto;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    function setFinanceiroMovimentoIdpk(const value : string) : IBoleto;
    function getFinanceiroMovimentoIdpk : string;
    function setFinanceiroContaIdpk(const value : string) : IBoleto;
    function getFinanceiroContaIdpk : string;
    function setFinanceiroContaIdpk2(const value : string) : IBoleto;
    function getFinanceiroContaIdpk2 : string;
    function setStatus(const value : string) : IBoleto;
    function getStatus : string;
    function setVencimento(const value : TDate) : IBoleto;
    function getVencimento : TDate;
    function setValor(const value : double) : IBoleto;
    function getValor : double;
    function setDescontoTipo(const value : string) : IBoleto;
    function getDescontoTipo : string;
    function setDescontoValor(const value : double) : IBoleto;
    function getDescontoValor : double;
    function setJurosMensal(const value : double) : IBoleto;
    function getJurosMensal : double;
    function setMulta(const value : double) : IBoleto;
    function getMulta : double;
    function setDescricao(const value : string) : IBoleto;
    function getDescricao : string;
    function setClienteIdpk(const value : string) : IBoleto;
    function getClienteIdpk : string;
    function setSacadoNome(const value : string) : IBoleto;
    function getSacadoNome : string;
    function setSacadoCnpjCpf(const value : string) : IBoleto;
    function getSacadoCnpjCpf : string;
    function setSacadoEndereco(const value : string) : IBoleto;
    function getSacadoEndereco : string;
    function setSacadoEnderecoNumero(const value : string) : IBoleto;
    function getSacadoEnderecoNumero : string;
    function setSacadoEnderecoComplemento(const value : string) : IBoleto;
    function getSacadoEnderecoComplemento : string;
    function setSacadoBairro(const value : string) : IBoleto;
    function getSacadoBairro : string;
    function setSacadoCep(const value : string) : IBoleto;
    function getSacadoCep : string;
    function setSacadoCidade(const value : string) : IBoleto;
    function getSacadoCidade : string;
    function setSacadoUf(const value : string) : IBoleto;
    function getSacadoUf : string;
    function setSacadoPais(const value : string) : IBoleto;
    function getSacadoPais : string;
    function setInstrucao(const value : string) : IBoleto;
    function getInstrucao : string;
    function setWebhook(const value : string) : IBoleto;
    function getWebhook : string;
    function setWebhookToken(const value : string) : IBoleto;
    function getWebhookToken : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IFinanceiroMovimentoBoletoGet = interface(IPayloadGet)
    ['{A68ACD91-0D0E-4CE6-9366-51C6303C7569}']
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function getFinanceiroMovimentoIdpk : string;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getFinanceiroContaIdpk : string;
    /// <summary> Status possíveis do boleto | Aguardando | Liquidado | Liquidado Pix | </summary>
    function setStatus(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Status possíveis do boleto | Aguardando | Liquidado | Liquidado Pix | </summary>
    function getStatus : string;
    /// <summary> Código único de um usuário </summary>
    function setUsuarioIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único de um usuário </summary>
    function getUsuarioIdpk : string;
    /// <summary> Descrição inserida no boleto </summary>
    function setDescricao(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Descrição inserida no boleto </summary>
    function getDescricao : string;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function setPagamento(const pDe, pAte : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function getPagamentoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function getPagamentoAte : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function setDataCriacao(const pDe, pAte : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function getDataCriacaoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function getDataCriacaoAte : TDateTime;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TFinanceiroMovimentoBoletoGet = class(TPayloadGet, IFinanceiroMovimentoBoletoGet)
  private
    FFinanceiroMovimentoIdpk : string;
    FFinanceiroContaIdpk : string;
    FStatus : string;
    FUsuarioIdpk : string;
    FDescricao : string;
    FPagamentoDe : TDateTime;
    FPagamentoAte : TDateTime;
    FDataCriacaoDe : TDateTime;
    FDataCriacaoAte : TDateTime;
  public
    class function new : IFinanceiroMovimentoBoletoGet;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function getFinanceiroMovimentoIdpk : string;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getFinanceiroContaIdpk : string;
    /// <summary> Status possíveis do boleto | Aguardando | Liquidado | Liquidado Pix | </summary>
    function setStatus(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Status possíveis do boleto | Aguardando | Liquidado | Liquidado Pix | </summary>
    function getStatus : string;
    /// <summary> Código único de um usuário </summary>
    function setUsuarioIdpk(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Código único de um usuário </summary>
    function getUsuarioIdpk : string;
    /// <summary> Descrição inserida no boleto </summary>
    function setDescricao(const value : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Descrição inserida no boleto </summary>
    function getDescricao : string;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function setPagamento(const pDe, pAte : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function getPagamentoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram pagos os boletos </summary>
    function getPagamentoAte : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function setDataCriacao(const pDe, pAte : string) : IFinanceiroMovimentoBoletoGet;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function getDataCriacaoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os boletos </summary>
    function getDataCriacaoAte : TDateTime;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IResponseFinanceiroMovimentoBoletoGet = interface(IResponse)
    ['{5127561E-C6D0-4E67-8074-D8C36EE507FD}']
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroMovimentoBoletoGet;
  end;
  TResponseFinanceiroMovimentoBoletoGet = class(TResponse, IResponseFinanceiroMovimentoBoletoGet)
  private
    FObj : TResponseClassFinanceiroMovimentoBoletoGet;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoBoletoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroMovimentoBoletoGet;
  end;

  IFinanceiroMovimentoBoletoPost = interface(IPayloadPost)
    ['{8F0764DE-EFA1-4E87-9A78-83B8802BCFA2}']
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoPost;
    function getFinanceiroMovimentoIdpk : string;

    /// <summary> Adiciona um novo boleto ao payload via classe </summary>
    function addFinanceiroMovimentoBoleto(const value : IBoleto) : IFinanceiroMovimentoBoletoPost;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TFinanceiroMovimentoBoletoPost = class(TPayloadPost, IFinanceiroMovimentoBoletoPost)
  private
    FFinanceiroMovimentoIdpk : string;
  public
    class function new : IFinanceiroMovimentoBoletoPost;
    constructor Create;
    destructor Destroy; override;

    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoPost;
    function getFinanceiroMovimentoIdpk : string;

    /// <summary> Adiciona um novo boleto ao payload via classe </summary>
    function addFinanceiroMovimentoBoleto(const value : IBoleto) : IFinanceiroMovimentoBoletoPost;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IResponseFinanceiroMovimentoBoletoPost = interface(IResponse)
    ['{83C4B079-FC57-4705-8573-167BED64DD89}']
    function Obj : TResponseClassFinanceiroMovimentoBoletoPost;
  end;
  TResponseFinanceiroMovimentoBoletoPost = class(TResponse, IResponseFinanceiroMovimentoBoletoPost)
  private
    FObj : TResponseClassFinanceiroMovimentoBoletoPost;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoBoletoPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFinanceiroMovimentoBoletoPost;
  end;

  IFinanceiroMovimentoBoletoDelete = interface(IPayloadDelete)
    ['{802215BA-F380-446F-BAF1-8925F453BC63}']
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoDelete;
    function getFinanceiroMovimentoIdpk : string;
  end;
  TFinanceiroMovimentoBoletoDelete = class(TPayloadDelete, IFinanceiroMovimentoBoletoDelete)
  private
    FFinanceiroMovimentoIdpk : string;
  public
    class function new : IFinanceiroMovimentoBoletoDelete;
    constructor Create;
    destructor Destroy; override;

    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoBoletoDelete;
    function getFinanceiroMovimentoIdpk : string;
  end;

  IResponseFinanceiroMovimentoBoletoDelete = interface(IResponse)
    ['{CE8B5F2B-99A5-4C91-8EAC-2B7CD302C533}']
    function Obj : TResponseClassFinanceiroMovimentoBoletoDelete;
  end;
  TResponseFinanceiroMovimentoBoletoDelete = class(TResponse, IResponseFinanceiroMovimentoBoletoDelete)
  private
    FObj : TResponseClassFinanceiroMovimentoBoletoDelete;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoBoletoDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFinanceiroMovimentoBoletoDelete;
  end;

  TFinanceiroMovimentoBoleto = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais boletos na base da empresa </summary>
    function Get(var params : IFinanceiroMovimentoBoletoGet) : IResponseFinanceiroMovimentoBoletoGet;
    /// <summary> Insere um ou mais boletos/bolepix </summary>
    function Post(var params : IFinanceiroMovimentoBoletoPost) : IResponseFinanceiroMovimentoBoletoPost;
    /// <summary> Apagar um boleto/bolepix </summary>
    function Delete(var params : IFinanceiroMovimentoBoletoDelete) : IResponseFinanceiroMovimentoBoletoDelete;
  end;


implementation

uses
  System.SysUtils, mercurio.api.consts;

{ TFinanceiroMovimentoBoletoGet }

constructor TFinanceiroMovimentoBoletoGet.Create;
begin
  inherited Create;

  FFinanceiroMovimentoIdpk := '';
  FFinanceiroContaIdpk := '';
  FStatus := '';
  FUsuarioIdpk := '';
  FDescricao := '';
  FPagamentoDe := 0;
  FPagamentoAte := 0;
  FDataCriacaoDe := 0;
  FDataCriacaoAte := 0;
end;

destructor TFinanceiroMovimentoBoletoGet.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoBoletoGet.getDataCriacaoAte: TDateTime;
begin
  result := FDataCriacaoAte;
end;

function TFinanceiroMovimentoBoletoGet.getDataCriacaoDe: TDateTime;
begin
  result := FDataCriacaoDe;
end;

function TFinanceiroMovimentoBoletoGet.getDescricao: string;
begin
  result := FDescricao;
end;

function TFinanceiroMovimentoBoletoGet.getFinanceiroContaIdpk: string;
begin
  result := FFinanceiroContaIdpk;
end;

function TFinanceiroMovimentoBoletoGet.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

function TFinanceiroMovimentoBoletoGet.getPagamentoAte: TDateTime;
begin
  result := FPagamentoAte;
end;

function TFinanceiroMovimentoBoletoGet.getPagamentoDe: TDateTime;
begin
  result := FPagamentoDe;
end;

function TFinanceiroMovimentoBoletoGet.getStatus: string;
begin
  result := FStatus;
end;

function TFinanceiroMovimentoBoletoGet.getUsuarioIdpk: string;
begin
  result := FUsuarioIdpk;
end;

class function TFinanceiroMovimentoBoletoGet.new: IFinanceiroMovimentoBoletoGet;
begin
  result := TFinanceiroMovimentoBoletoGet.Create;
end;

function TFinanceiroMovimentoBoletoGet.setDataCriacao(const pDe,pAte: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FDataCriacaoDe := strToDateTimeDef(stringReplace(pDe, '-', '/', [rfReplaceAll]), 0);
  FDataCriacaoAte := strToDateTimeDef(stringReplace(pAte, '-', '/', [rfReplaceAll]), 0);
end;

function TFinanceiroMovimentoBoletoGet.setDescricao(const value: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FDescricao := value;
end;

function TFinanceiroMovimentoBoletoGet.setFinanceiroContaIdpk(const value: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FFinanceiroContaIdpk := value;
end;

function TFinanceiroMovimentoBoletoGet.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TFinanceiroMovimentoBoletoGet.setPagamento(const pDe, pAte: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FPagamentoDe := strToDateTimeDef(stringReplace(pDe, '-', '/', [rfReplaceAll]), 0);
  FPagamentoAte := strToDateTimeDef(stringReplace(pAte, '-', '/', [rfReplaceAll]), 0);;
end;

function TFinanceiroMovimentoBoletoGet.setStatus(const value: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FStatus := value;
end;

function TFinanceiroMovimentoBoletoGet.setUsuarioIdpk(const value: string): IFinanceiroMovimentoBoletoGet;
begin
  result := self;
  FUsuarioIdpk := value;
end;

function TFinanceiroMovimentoBoletoGet.toParams: string;
var data : string;
begin
  result := inherited;
  if (FFinanceiroMovimentoIdpk <> '') then
    result := AddParam(result, 'financeiro_movimento_idpk='+ FFinanceiroMovimentoIdpk);
  if (FFinanceiroContaIdpk <> '') then
    result := AddParam(result, 'financeiro_conta_idpk='+ FFinanceiroContaIdpk);
  if (FStatus <> '') then
    result := AddParam(result, 'status='+ FStatus);
  if (FUsuarioIdpk <> '') then
    result := AddParam(result, 'usuario_idpk='+ FUsuarioIdpk);
  if (FDescricao <> '') then
    result := AddParam(result, 'descricao='+ FDescricao);
  if (FDataCriacaoDe <> 0) and (FDataCriacaoAte <> 0) then
  begin
    data := StringReplace(DateTimeToStr(FDataCriacaoDe), '/', '-', [rfReplaceAll]);
    result := AddParam(result, 'data_de='+ data);
    data := StringReplace(DateTimeToStr(FDataCriacaoAte), '/', '-', [rfReplaceAll]);
    result := AddParam(result, 'data_ate='+ data);
  end;
  if (FPagamentoDe <> 0) and (FPagamentoAte <> 0) then
  begin
    data := StringReplace(DateTimeToStr(FPagamentoDe), '/', '-', [rfReplaceAll]);
    result := AddParam(result, 'pagamento_de='+ data);
    data := StringReplace(DateTimeToStr(FPagamentoAte), '/', '-', [rfReplaceAll]);
    result := AddParam(result, 'pagamento_ate='+ data);
  end;
end;

{ TResponseFinanceiroMovimentoBoletoGet }

constructor TResponseFinanceiroMovimentoBoletoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoBoletoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoBoletoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoBoletoGet.new(parent: IResponse): IResponseFinanceiroMovimentoBoletoGet;
begin
  result := TResponseFinanceiroMovimentoBoletoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoBoletoGet.Obj: TResponseClassFinanceiroMovimentoBoletoGet;
begin
  result := FObj;
end;

{ TFinanceiroMovimentoBoleto }

function TFinanceiroMovimentoBoleto.Delete(var params: IFinanceiroMovimentoBoletoDelete): IResponseFinanceiroMovimentoBoletoDelete;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (Trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlBoleto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroMovimentoBoletoDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TFinanceiroMovimentoBoleto.Get(var params: IFinanceiroMovimentoBoletoGet): IResponseFinanceiroMovimentoBoletoGet;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (Trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlBoleto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroMovimentoBoletoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TFinanceiroMovimentoBoleto.Post(var params: IFinanceiroMovimentoBoletoPost): IResponseFinanceiroMovimentoBoletoPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlBoleto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroMovimentoBoletoPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TBoleto }

constructor TBoleto.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FFinanceiroMovimentoIdpk := '';
  FFinanceiroContaIdpk := '';
  FFinanceiroContaIdpk2 := '';
  FStatus := 'Aguardando';
  FVencimento := 0;
  FValor := 0;
  FDescontoTipo := '';
  FDescontoValor := 0;
  FJurosMensal := 0;
  FMulta := 0;
  FDescricao := '';
  FClienteIdpk := '';
  FSacadoNome := '';
  FSacadoCnpjCpf := '';
  FSacadoEndereco := '';
  FSacadoEnderecoNumero := '';
  FSacadoEnderecoComplemento := '';
  FSacadoBairro := '';
  FSacadoCep := '';
  FSacadoCidade := '';
  FSacadoUf := '';
  FSacadoPais := 'BRA';
  FInstrucao := '';
  FWebhook := '';
  FWebhookToken := '';
end;

destructor TBoleto.Destroy;
begin

  inherited;
end;

function TBoleto.getClienteIdpk: string;
begin
  result := FClienteIdpk;
end;

function TBoleto.getDescontoTipo: string;
begin
  result := FDescontoTipo;
end;

function TBoleto.getDescontoValor: double;
begin
  result := FDescontoValor;
end;

function TBoleto.getDescricao: string;
begin
  result := FDescricao;
end;

function TBoleto.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TBoleto.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TBoleto.getFinanceiroContaIdpk: string;
begin
  result := FFinanceiroContaIdpk;
end;

function TBoleto.getFinanceiroContaIdpk2: string;
begin
  result := FFinanceiroContaIdpk2;
end;

function TBoleto.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

function TBoleto.getIdpk: string;
begin
  result := FIdpk;
end;

function TBoleto.getInstrucao: string;
begin
  result := FInstrucao;
end;

function TBoleto.getJurosMensal: double;
begin
  result := FJurosMensal;
end;

function TBoleto.getMulta: double;
begin
  result := FMulta;
end;

function TBoleto.getSacadoBairro: string;
begin
  result := FSacadoBairro;
end;

function TBoleto.getSacadoCep: string;
begin
  result := FSacadoBairro;
end;

function TBoleto.getSacadoCidade: string;
begin
  result := FSacadoCidade;
end;

function TBoleto.getSacadoCnpjCpf: string;
begin
  result := FSacadoCnpjCpf;
end;

function TBoleto.getSacadoEndereco: string;
begin
  result := FSacadoEndereco;
end;

function TBoleto.getSacadoEnderecoComplemento: string;
begin
  result := FSacadoEnderecoComplemento;
end;

function TBoleto.getSacadoEnderecoNumero: string;
begin
  result := FSacadoEnderecoNumero;
end;

function TBoleto.getSacadoNome: string;
begin
  result := FSacadoNome;
end;

function TBoleto.getSacadoPais: string;
begin
  result := FSacadoPais;
end;

function TBoleto.getSacadoUf: string;
begin
  result := FSacadoUf;
end;

function TBoleto.getStatus: string;
begin
  result := FStatus;
end;

function TBoleto.getValor: double;
begin
  result := FValor;
end;

function TBoleto.getVencimento: TDate;
begin
  result := FVencimento;
end;

function TBoleto.getWebhook: string;
begin
  result := FWebhook;
end;

function TBoleto.getWebhookToken: string;
begin
  result := FWebhookToken;
end;

class function TBoleto.new: IBoleto;
begin
  result := TBoleto.Create;
end;

function TBoleto.setClienteIdpk(const value: string): IBoleto;
begin
  result := self;
  FClienteIdpk := value;
end;

function TBoleto.setDescontoTipo(const value: string): IBoleto;
begin
  result := self;
  FDescontoTipo := value;
end;

function TBoleto.setDescontoValor(const value: double): IBoleto;
begin
  result := self;
  FDescontoValor := value;
end;

function TBoleto.setDescricao(const value: string): IBoleto;
begin
  result := self;
  FDescricao := value;
end;

function TBoleto.setEmpresaIdpk(const value: string): IBoleto;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TBoleto.setFilialIdpk(const value: string): IBoleto;
begin
  result := self;
  FFilialIdpk := value;
end;

function TBoleto.setFinanceiroContaIdpk(const value: string): IBoleto;
begin
  result := self;
  FFinanceiroContaIdpk := value;
end;

function TBoleto.setFinanceiroContaIdpk2(const value: string): IBoleto;
begin
  result := self;
  FFinanceiroContaIdpk2 := value;
end;

function TBoleto.setFinanceiroMovimentoIdpk(const value: string): IBoleto;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TBoleto.setIdpk(const value: string): IBoleto;
begin
  result := self;
  FIdpk := value;
end;

function TBoleto.setInstrucao(const value: string): IBoleto;
begin
  result := self;
  FInstrucao := value;
end;

function TBoleto.setJurosMensal(const value: double): IBoleto;
begin
  result := self;
  FJurosMensal := value;
end;

function TBoleto.setMulta(const value: double): IBoleto;
begin
  result := self;
  FMulta := value;
end;

function TBoleto.setSacadoBairro(const value: string): IBoleto;
begin
  result := self;
  FSacadoBairro := value;
end;

function TBoleto.setSacadoCep(const value: string): IBoleto;
begin
  result := self;
  FSacadoCep := value;
end;

function TBoleto.setSacadoCidade(const value: string): IBoleto;
begin
  result := self;
  FSacadoCidade := value;
end;

function TBoleto.setSacadoCnpjCpf(const value: string): IBoleto;
begin
  result := self;
  FSacadoCnpjCpf := value;
end;

function TBoleto.setSacadoEndereco(const value: string): IBoleto;
begin
  result := self;
  FSacadoEndereco := value;
end;

function TBoleto.setSacadoEnderecoComplemento(const value: string): IBoleto;
begin
  result := self;
  FSacadoEnderecoComplemento := value;
end;

function TBoleto.setSacadoEnderecoNumero(const value: string): IBoleto;
begin
  result := self;
  FSacadoEnderecoNumero := value;
end;

function TBoleto.setSacadoNome(const value: string): IBoleto;
begin
  result := self;
  FSacadoNome := value;
end;

function TBoleto.setSacadoPais(const value: string): IBoleto;
begin
  result := self;
  FSacadoPais := value;
end;

function TBoleto.setSacadoUf(const value: string): IBoleto;
begin
  result := self;
  FSacadoUf := value;
end;

function TBoleto.setStatus(const value: string): IBoleto;
begin
  result := self;
  FStatus := value;
end;

function TBoleto.setValor(const value: double): IBoleto;
begin
  result := self;
  FValor := value;
end;

function TBoleto.setVencimento(const value: TDate): IBoleto;
begin
  result := self;
  FVencimento := value;
end;

function TBoleto.setWebhook(const value: string): IBoleto;
begin
  result := self;
  FWebhook := value;
end;

function TBoleto.setWebhookToken(const value: string): IBoleto;
begin
  result := self;
  FWebhookToken := value;
end;

function TBoleto.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('fmb_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('fmb_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('fmb_filial_idpk', FFilialIdpk);
  if (FFinanceiroMovimentoIdpk <> '') then
    result.AddPair('fmb_financeiro_movimento_idpk', FFinanceiroMovimentoIdpk);
  if (FFinanceiroContaIdpk <> '') then
    result.AddPair('fmb_financeiro_conta_idpk', FFinanceiroContaIdpk);
  if (FFinanceiroContaIdpk2 <> '') then
    result.AddPair('fmb_financeiro_conta_idpk2', FFinanceiroContaIdpk2);
  if (FStatus <> '') then
    result.AddPair('fmb_status', FStatus);
  if (FVencimento <> 0) then
    result.AddPair('fmb_vencimento', DateToStr(FVencimento));
  if (FValor <> 0) then
    result.AddPair('fmb_valor', FValor);
  if (FDescontoTipo <> '') then
    result.AddPair('fmb_desconto_tipo', FDescontoTipo);
  if (FDescontoValor <> 0) then
    result.AddPair('fmb_desconto_valor', FDescontoValor);
  if (FJurosMensal <> 0) then
    result.AddPair('fmb_juros_mensal', FJurosMensal);
  if (FMulta <> 0) then
    result.AddPair('fmb_multa', FMulta);
  if (FDescricao <> '') then
    result.AddPair('fmb_descricao', FDescricao);
  if (FClienteIdpk <> '') then
    result.AddPair('fmb_cliente_idpk', FClienteIdpk);
  if (FSacadoNome <> '') then
    result.AddPair('fmb_sacado_nome', FSacadoNome);
  if (FSacadoCnpjCpf <> '') then
    result.AddPair('fmb_sacado_cnpj_cpf', FSacadoCnpjCpf);
  if (FSacadoEndereco <> '') then
    result.AddPair('fmb_sacado_endereco', FSacadoEndereco);
  if (FSacadoEnderecoNumero <> '') then
    result.AddPair('fmb_sacado_endereco_numero', FSacadoEnderecoNumero);
  if (FSacadoEnderecoComplemento <> '') then
    result.AddPair('fmb_sacado_endereco_complemento', FSacadoEnderecoComplemento);
  if (FSacadoBairro <> '') then
    result.AddPair('fmb_sacado_bairro', FSacadoBairro);
  if (FSacadoCep <> '') then
    result.AddPair('fmb_sacado_cep', FSacadoCep);
  if (FSacadoCidade <> '') then
    result.AddPair('fmb_sacado_cidade', FSacadoCidade);
  if (FSacadoUf <> '') then
    result.AddPair('fmb_sacado_uf', FSacadoUf);
  if (FSacadoPais <> '') then
    result.AddPair('fmb_sacado_pais', FSacadoPais);
  if (FInstrucao <> '') then
    result.AddPair('fmb_instrucao', FInstrucao);

  if (FWebhook <> '') then
    result.AddPair('fmb_webhook', FWebhook);
  if (FWebhookToken <> '') then
    result.AddPair('fmb_webhook_token', FWebhookToken);
end;

{ TFinanceiroMovimentoBoletoPost }

function TFinanceiroMovimentoBoletoPost.addFinanceiroMovimentoBoleto(const value: IBoleto): IFinanceiroMovimentoBoletoPost;
var obj : TJSONObject;
    arr : TJSONArray;
begin
  result := self;
  if not (Assigned(value)) then
    exit;

  obj := value.ToJson;
  if (obj = nil) then
    exit;

  arr := nil;
  getPayload.TryGetValue<TJSONArray>('registros', arr);
  if (arr = nil) then
    exit;

  arr.Add(obj);
end;

constructor TFinanceiroMovimentoBoletoPost.Create;
begin
  inherited Create;
  FFinanceiroMovimentoIdpk := '';
end;

destructor TFinanceiroMovimentoBoletoPost.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoBoletoPost.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

class function TFinanceiroMovimentoBoletoPost.new: IFinanceiroMovimentoBoletoPost;
begin
  result := TFinanceiroMovimentoBoletoPost.Create;
end;

function TFinanceiroMovimentoBoletoPost.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoBoletoPost;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TFinanceiroMovimentoBoletoPost.ToJson: TJSONValue;
begin
  result := inherited;
end;

function TFinanceiroMovimentoBoletoPost.toParams: string;
begin
  result := inherited;
  if (FFinanceiroMovimentoIdpk <> '') then
    result := AddHeaderParams(result, 'financeiro_movimento_idpk='+ FFinanceiroMovimentoIdpk);

  if (trim(result) <> '') and not (copy(result, 1, 1) = '?') then
    result := '?'+ result;
end;

{ TResponseFinanceiroMovimentoBoletoPost }

constructor TResponseFinanceiroMovimentoBoletoPost.Create(pResponse: IHTTPResponse;pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoBoletoPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoBoletoPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoBoletoPost.new(parent: IResponse): IResponseFinanceiroMovimentoBoletoPost;
begin
  result := TResponseFinanceiroMovimentoBoletoPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoBoletoPost.Obj: TResponseClassFinanceiroMovimentoBoletoPost;
begin
  result := FObj;
end;

{ TFinanceiroMovimentoBoletoDelete }

constructor TFinanceiroMovimentoBoletoDelete.Create;
begin
  inherited Create;
  FFinanceiroMovimentoIdpk := '';
end;

destructor TFinanceiroMovimentoBoletoDelete.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoBoletoDelete.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

class function TFinanceiroMovimentoBoletoDelete.new: IFinanceiroMovimentoBoletoDelete;
begin
  result := TFinanceiroMovimentoBoletoDelete.Create;
end;

function TFinanceiroMovimentoBoletoDelete.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoBoletoDelete;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

{ TResponseFinanceiroMovimentoBoletoDelete }

constructor TResponseFinanceiroMovimentoBoletoDelete.Create(pResponse: IHTTPResponse;pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoBoletoDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoBoletoDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoBoletoDelete.new(parent: IResponse): IResponseFinanceiroMovimentoBoletoDelete;
begin
  result := TResponseFinanceiroMovimentoBoletoDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoBoletoDelete.Obj: TResponseClassFinanceiroMovimentoBoletoDelete;
begin
  result := FObj;
end;

end.
