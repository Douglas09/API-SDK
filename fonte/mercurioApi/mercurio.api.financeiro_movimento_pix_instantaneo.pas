unit mercurio.api.financeiro_movimento_pix_instantaneo;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.api.functions,
     mercurio.response.financeiroMovimentoPixInstantaneo.get,
     mercurio.response.financeiroMovimentoPixInstantaneo.post,
     mercurio.response.financeiroMovimentoPixInstantaneo.delete,
     mercurio.response.financeiroMovimentoPix.getComprovantePagamentoPDF;

type
  IPixComprovantePagamentoPDF = interface
    ['{3AF2901D-6C50-40A8-8EC7-195309D3D337}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TPixComprovantePagamentoPDF = class(TInterfacedObject, IPixComprovantePagamentoPDF)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
  public
    class function new : IPixComprovantePagamentoPDF;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPixComprovantePagamentoPDF;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IResponsePixComprovantePagamentoPDF = interface(IResponse)
    ['{2B7F9879-1A4C-4379-948B-1A56DE63F467}']
    function Obj : TResponseClassPixComprovantePagamentoPDF;
  end;
  TResponsePixComprovantePagamentoPDF = class(TResponse, IResponsePixComprovantePagamentoPDF)
  private
    FObj : TResponseClassPixComprovantePagamentoPDF;
  public
    class function new(parent : IResponse) : IResponsePixComprovantePagamentoPDF;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassPixComprovantePagamentoPDF;
  end;

  /// <summary> financeiro_movimento_pix (serve para pix cobrança e pix instantâneo) </summary>
  IFinanceiroMovimentoPix = interface
    ['{ECA89514-D23D-4E02-BF4F-37C12C9F6280}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroMovimentoIdpk : string;
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroContaIdpk : string;
    function setFinanceiroContaIdpk2(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroContaIdpk2 : string;
    function setPixTipo(const value : string) : IFinanceiroMovimentoPix;
    function getPixTipo : string;
    function setStatus(const value : string) : IFinanceiroMovimentoPix;
    function getStatus : string;
    function setVencimento(const value : TDate) : IFinanceiroMovimentoPix;
    function getVencimento : TDate;
    function setValor(const value : double) : IFinanceiroMovimentoPix;
    function getValor : double;
    function setDescontoTipo(const value : string) : IFinanceiroMovimentoPix;
    function getDescontoTipo : string;
    function setDescontoValor(const value : double) : IFinanceiroMovimentoPix;
    function getDescontoValor : double;
    function setJurosMensal(const value : double) : IFinanceiroMovimentoPix;
    function getJurosMensal : double;
    function setMulta(const value : double) : IFinanceiroMovimentoPix;
    function getMulta : double;
    function setDescricao(const value : string) : IFinanceiroMovimentoPix;
    function getDescricao : string;
    function setClienteIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getClienteIdpk : string;
    function setSacadoNome(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoNome : string;
    function setSacadoCnpjCpf(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCnpjCpf : string;
    function setSacadoEndereco(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEndereco : string;
    function setSacadoEnderecoNumero(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEnderecoNumero : string;
    function setSacadoEnderecoComplemento(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEnderecoComplemento : string;
    function setSacadoBairro(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoBairro : string;
    function setSacadoCep(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCep : string;
    function setSacadoCidade(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCidade : string;
    function setSacadoUf(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoUf : string;
    function setSacadoPais(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoPais : string;
    function setWebhook(const value : string) : IFinanceiroMovimentoPix;
    function getWebhook : string;
    function setWebhookToken(const value : string) : IFinanceiroMovimentoPix;
    function getWebhookToken : string;
    function setPushNotificationToken(const value : string) : IFinanceiroMovimentoPix;
    function getPushNotificationToken : string;
    function setPushNotificationAplicativoIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getPushNotificationAplicativoIdpk : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  TFinanceiroMovimentoPix = class(TInterfacedObject, IFinanceiroMovimentoPix)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FFinanceiroMovimentoIdpk : string;
    FFinanceiroContaIdpk : string;
    FFinanceiroContaIdpk2 : string;
    FPixTipo : string;
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
    FWebhook : string;
    FWebhookToken : string;
    FPushNotificationToken : string;
    FPushNotificationAplicativoIdpk : string;
  public
    class function new : IFinanceiroMovimentoPix;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFinanceiroMovimentoPix;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroMovimentoIdpk : string;
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroContaIdpk : string;
    function setFinanceiroContaIdpk2(const value : string) : IFinanceiroMovimentoPix;
    function getFinanceiroContaIdpk2 : string;
    function setPixTipo(const value : string) : IFinanceiroMovimentoPix;
    function getPixTipo : string;
    function setStatus(const value : string) : IFinanceiroMovimentoPix;
    function getStatus : string;
    function setVencimento(const value : TDate) : IFinanceiroMovimentoPix;
    function getVencimento : TDate;
    function setValor(const value : double) : IFinanceiroMovimentoPix;
    function getValor : double;
    function setDescontoTipo(const value : string) : IFinanceiroMovimentoPix;
    function getDescontoTipo : string;
    function setDescontoValor(const value : double) : IFinanceiroMovimentoPix;
    function getDescontoValor : double;
    function setJurosMensal(const value : double) : IFinanceiroMovimentoPix;
    function getJurosMensal : double;
    function setMulta(const value : double) : IFinanceiroMovimentoPix;
    function getMulta : double;
    function setDescricao(const value : string) : IFinanceiroMovimentoPix;
    function getDescricao : string;
    function setClienteIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getClienteIdpk : string;
    function setSacadoNome(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoNome : string;
    function setSacadoCnpjCpf(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCnpjCpf : string;
    function setSacadoEndereco(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEndereco : string;
    function setSacadoEnderecoNumero(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEnderecoNumero : string;
    function setSacadoEnderecoComplemento(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoEnderecoComplemento : string;
    function setSacadoBairro(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoBairro : string;
    function setSacadoCep(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCep : string;
    function setSacadoCidade(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoCidade : string;
    function setSacadoUf(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoUf : string;
    function setSacadoPais(const value : string) : IFinanceiroMovimentoPix;
    function getSacadoPais : string;
    function setWebhook(const value : string) : IFinanceiroMovimentoPix;
    function getWebhook : string;
    function setWebhookToken(const value : string) : IFinanceiroMovimentoPix;
    function getWebhookToken : string;
    function setPushNotificationToken(const value : string) : IFinanceiroMovimentoPix;
    function getPushNotificationToken : string;
    function setPushNotificationAplicativoIdpk(const value : string) : IFinanceiroMovimentoPix;
    function getPushNotificationAplicativoIdpk : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IFinanceiroMovimentoPixInstantaneoGet = interface(IPayloadGet)
    ['{4B684FE2-96EB-4550-9B10-9EE9CB150746}']
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function getFinanceiroMovimentoIdpk : string;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getFinanceiroContaIdpk : string;
    /// <summary> Status possíveis do pix </summary>
    function setStatus(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getStatus : string;
    /// <summary> Código único de um usuário </summary>
    function setUsuarioIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único de um usuário </summary>
    function getUsuarioIdpk : string;
    /// <summary> Descrição inserida no pix </summary>
    function setDescricao(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Descrição inserida no pix </summary>
    function getDescricao : string;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function setPagamento(const pDe, pAte : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function getPagamentoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function getPagamentoAte : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function setDataCriacao(const pDe, pAte : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function getDataCriacaoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function getDataCriacaoAte : TDateTime;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TFinanceiroMovimentoPixInstantaneoGet = class(TPayloadGet, IFinanceiroMovimentoPixInstantaneoGet)
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
    class function new : IFinanceiroMovimentoPixInstantaneoGet;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta a receber (financeiro_movimento_idpk) </summary>
    function getFinanceiroMovimentoIdpk : string;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function setFinanceiroContaIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getFinanceiroContaIdpk : string;
    /// <summary> Status possíveis do pix </summary>
    function setStatus(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único da conta caixa/boleto/pixapay </summary>
    function getStatus : string;
    /// <summary> Código único de um usuário </summary>
    function setUsuarioIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Código único de um usuário </summary>
    function getUsuarioIdpk : string;
    /// <summary> Descrição inserida no pix </summary>
    function setDescricao(const value : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Descrição inserida no pix </summary>
    function getDescricao : string;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function setPagamento(const pDe, pAte : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function getPagamentoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram pagos os pix </summary>
    function getPagamentoAte : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function setDataCriacao(const pDe, pAte : string) : IFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function getDataCriacaoDe : TDateTime;
    /// <summary> Período (de -> até) em que foram inseridos/criados os pix </summary>
    function getDataCriacaoAte : TDateTime;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IResponseFinanceiroMovimentoPixInstantaneoGet = interface(IResponse)
    ['{5127561E-C6D0-4E67-8074-D8C36EE507FD}']
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoGet;
  end;
  TResponseFinanceiroMovimentoPixInstantaneoGet = class(TResponse, IResponseFinanceiroMovimentoPixInstantaneoGet)
  private
    FObj : TResponseClassFinanceiroMovimentoPixInstantaneoGet;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoPixInstantaneoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoGet;
  end;

  IFinanceiroMovimentoPixInstantaneoPost = interface(IPayloadPost)
    ['{B488820D-A3AA-40E4-9D05-4C652EE2A80A}']
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoPost;
    function getFinanceiroMovimentoIdpk : string;

    /// <summary> Adiciona um novo pix ao payload via classe </summary>
    function addFinanceiroMovimentoPix(const value : IFinanceiroMovimentoPix) : IFinanceiroMovimentoPixInstantaneoPost;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TFinanceiroMovimentoPixInstantaneoPost = class(TPayloadPost, IFinanceiroMovimentoPixInstantaneoPost)
  private
    FFinanceiroMovimentoIdpk : string;
  public
    class function new : IFinanceiroMovimentoPixInstantaneoPost;
    constructor Create;
    destructor Destroy; override;

    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoPost;
    function getFinanceiroMovimentoIdpk : string;
    /// <summary> Adiciona um novo pix ao payload via classe </summary>
    function addFinanceiroMovimentoPix(const value : IFinanceiroMovimentoPix) : IFinanceiroMovimentoPixInstantaneoPost;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IResponseFinanceiroMovimentoPixInstantaneoPost = interface(IResponse)
    ['{F2072689-37DD-4485-B568-FE94F84A63E6}']
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoPost;
  end;
  TResponseFinanceiroMovimentoPixInstantaneoPost = class(TResponse, IResponseFinanceiroMovimentoPixInstantaneoPost)
  private
    FObj : TResponseClassFinanceiroMovimentoPixInstantaneoPost;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoPixInstantaneoPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoPost;
  end;

  IFinanceiroMovimentoPixInstantaneoDelete = interface(IPayloadDelete)
    ['{35104CE2-1873-4A8C-8811-AF55CDFC6D16}']
    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoDelete;
    function getFinanceiroMovimentoIdpk : string;
  end;
  TFinanceiroMovimentoPixInstantaneoDelete = class(TPayloadDelete, IFinanceiroMovimentoPixInstantaneoDelete)
  private
    FFinanceiroMovimentoIdpk : string;
  public
    class function new : IFinanceiroMovimentoPixInstantaneoDelete;
    constructor Create;
    destructor Destroy; override;

    function setFinanceiroMovimentoIdpk(const value : string) : IFinanceiroMovimentoPixInstantaneoDelete;
    function getFinanceiroMovimentoIdpk : string;
  end;

  IResponseFinanceiroMovimentoPixInstantaneoDelete = interface(IResponse)
    ['{2B7F9879-1A4C-4379-948B-1A56DE63F467}']
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoDelete;
  end;
  TResponseFinanceiroMovimentoPixInstantaneoDelete = class(TResponse, IResponseFinanceiroMovimentoPixInstantaneoDelete)
  private
    FObj : TResponseClassFinanceiroMovimentoPixInstantaneoDelete;
  public
    class function new(parent : IResponse) : IResponseFinanceiroMovimentoPixInstantaneoDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFinanceiroMovimentoPixInstantaneoDelete;
  end;

  TMercurioFinanceiroMovimentoPix = class(TMercurioPai)
  public
    /// <summary> Captura o comprovante de pgto em PDF de um pix </summary>
    function GetComprovantePagamentoPDF(var params : IPixComprovantePagamentoPDF) : IResponsePixComprovantePagamentoPDF;
    /// <summary> Busca um ou mais pix na base da empresa </summary>
    function Get(var params : IFinanceiroMovimentoPixInstantaneoGet) : IResponseFinanceiroMovimentoPixInstantaneoGet;
    /// <summary> Insere um ou mais pix </summary>
    function Post(var params : IFinanceiroMovimentoPixInstantaneoPost) : IResponseFinanceiroMovimentoPixInstantaneoPost;
    /// <summary> Apagar um pix instantâneo </summary>
    function Delete(var params : IFinanceiroMovimentoPixInstantaneoDelete) : IResponseFinanceiroMovimentoPixInstantaneoDelete;
  end;

implementation

uses System.SysUtils, mercurio.api.consts;

{ TFinanceiroMovimentoPixInstantaneoGet }

constructor TFinanceiroMovimentoPixInstantaneoGet.Create;
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

destructor TFinanceiroMovimentoPixInstantaneoGet.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getDataCriacaoAte: TDateTime;
begin
  result := FDataCriacaoAte;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getDataCriacaoDe: TDateTime;
begin
  result := FDataCriacaoDe;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getDescricao: string;
begin
  result := FDescricao;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getFinanceiroContaIdpk: string;
begin
  result := FFinanceiroContaIdpk;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getPagamentoAte: TDateTime;
begin
  result := FPagamentoAte;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getPagamentoDe: TDateTime;
begin
  result := FPagamentoDe;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getStatus: string;
begin
  result := FStatus;
end;

function TFinanceiroMovimentoPixInstantaneoGet.getUsuarioIdpk: string;
begin
  result := FUsuarioIdpk;
end;

class function TFinanceiroMovimentoPixInstantaneoGet.new: IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := TFinanceiroMovimentoPixInstantaneoGet.Create;
end;

function TFinanceiroMovimentoPixInstantaneoGet.setDataCriacao(const pDe, pAte: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FDataCriacaoDe := strToDateTimeDef(stringReplace(pDe, '-', '/', [rfReplaceAll]), 0);
  FDataCriacaoAte := strToDateTimeDef(stringReplace(pAte, '-', '/', [rfReplaceAll]), 0);
end;

function TFinanceiroMovimentoPixInstantaneoGet.setDescricao(const value: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FDescricao := value;
end;

function TFinanceiroMovimentoPixInstantaneoGet.setFinanceiroContaIdpk(const value: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FFinanceiroContaIdpk := value;
end;

function TFinanceiroMovimentoPixInstantaneoGet.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TFinanceiroMovimentoPixInstantaneoGet.setPagamento(const pDe, pAte: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FPagamentoDe := strToDateTimeDef(stringReplace(pDe, '-', '/', [rfReplaceAll]), 0);
  FPagamentoAte := strToDateTimeDef(stringReplace(pAte, '-', '/', [rfReplaceAll]), 0);
end;

function TFinanceiroMovimentoPixInstantaneoGet.setStatus(const value: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FStatus := value;
end;

function TFinanceiroMovimentoPixInstantaneoGet.setUsuarioIdpk(const value: string): IFinanceiroMovimentoPixInstantaneoGet;
begin
  result := self;
  FUsuarioIdpk := value;
end;

function TFinanceiroMovimentoPixInstantaneoGet.toParams: string;
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

{ TResponseFinanceiroMovimentoPixInstantaneoGet }

constructor TResponseFinanceiroMovimentoPixInstantaneoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoPixInstantaneoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoPixInstantaneoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoPixInstantaneoGet.new(parent : IResponse) : IResponseFinanceiroMovimentoPixInstantaneoGet;
begin
  result := TResponseFinanceiroMovimentoPixInstantaneoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoPixInstantaneoGet.Obj: TResponseClassFinanceiroMovimentoPixInstantaneoGet;
begin
  result := FObj;
end;

{ TMercurioFinanceiroMovimentoPix }

function TMercurioFinanceiroMovimentoPix.Delete(var params: IFinanceiroMovimentoPixInstantaneoDelete): IResponseFinanceiroMovimentoPixInstantaneoDelete;
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
    url := getUrl(Ambiente, urlPix) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroMovimentoPixInstantaneoDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFinanceiroMovimentoPix.Get(var params: IFinanceiroMovimentoPixInstantaneoGet): IResponseFinanceiroMovimentoPixInstantaneoGet;
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
    result := TResponseFinanceiroMovimentoPixInstantaneoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFinanceiroMovimentoPix.GetComprovantePagamentoPDF(var params : IPixComprovantePagamentoPDF) : IResponsePixComprovantePagamentoPDF;
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
    url := getUrl(Ambiente, urlPixComprovantePagamento) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponsePixComprovantePagamentoPDF.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFinanceiroMovimentoPix.Post(var params: IFinanceiroMovimentoPixInstantaneoPost): IResponseFinanceiroMovimentoPixInstantaneoPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlPixInstantaneo) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroMovimentoPixInstantaneoPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TFinanceiroMovimentoPixInstantaneoPost }

function TFinanceiroMovimentoPixInstantaneoPost.addFinanceiroMovimentoPix(const value: IFinanceiroMovimentoPix): IFinanceiroMovimentoPixInstantaneoPost;
var obj : TJSONObject;
    arr : TJSONArray;
begin
  result := self;
  if not (Assigned(value)) then
    exit;

  //Seta pix instantâneo
  value.setPixTipo('I');

  obj := value.ToJson;
  if (obj = nil) then
    exit;

  arr := nil;
  getPayload.TryGetValue<TJSONArray>('registros', arr);
  if (arr = nil) then
    exit;

  arr.Add(obj);
end;

constructor TFinanceiroMovimentoPixInstantaneoPost.Create;
begin
  inherited Create;
  FFinanceiroMovimentoIdpk := '';
end;

destructor TFinanceiroMovimentoPixInstantaneoPost.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoPixInstantaneoPost.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

class function TFinanceiroMovimentoPixInstantaneoPost.new: IFinanceiroMovimentoPixInstantaneoPost;
begin
  result := TFinanceiroMovimentoPixInstantaneoPost.Create;
end;

function TFinanceiroMovimentoPixInstantaneoPost.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoPixInstantaneoPost;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TFinanceiroMovimentoPixInstantaneoPost.ToJson: TJSONValue;
begin
  result := inherited;
end;

function TFinanceiroMovimentoPixInstantaneoPost.toParams: string;
begin
  result := inherited;
  if (FFinanceiroMovimentoIdpk <> '') then
    result := AddHeaderParams(result, 'financeiro_movimento_idpk='+ FFinanceiroMovimentoIdpk);

  if (trim(result) <> '') and not (copy(result, 1, 1) = '?') then
    result := '?'+ result;
end;

{ TResponseFinanceiroMovimentoPixInstantaneoPost }

constructor TResponseFinanceiroMovimentoPixInstantaneoPost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoPixInstantaneoPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoPixInstantaneoPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoPixInstantaneoPost.new(parent: IResponse): IResponseFinanceiroMovimentoPixInstantaneoPost;
begin
  result := TResponseFinanceiroMovimentoPixInstantaneoPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoPixInstantaneoPost.Obj: TResponseClassFinanceiroMovimentoPixInstantaneoPost;
begin
  result := FObj;
end;

{ TFinanceiroMovimentoPixInstantaneoDelete }

constructor TFinanceiroMovimentoPixInstantaneoDelete.Create;
begin
  inherited Create;
  FFinanceiroMovimentoIdpk := '';
end;

destructor TFinanceiroMovimentoPixInstantaneoDelete.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoPixInstantaneoDelete.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

class function TFinanceiroMovimentoPixInstantaneoDelete.new: IFinanceiroMovimentoPixInstantaneoDelete;
begin
  result := TFinanceiroMovimentoPixInstantaneoDelete.Create;
end;

function TFinanceiroMovimentoPixInstantaneoDelete.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoPixInstantaneoDelete;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

{ TResponseFinanceiroMovimentoPixInstantaneoDelete }

constructor TResponseFinanceiroMovimentoPixInstantaneoDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroMovimentoPixInstantaneoDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroMovimentoPixInstantaneoDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroMovimentoPixInstantaneoDelete.new(parent: IResponse): IResponseFinanceiroMovimentoPixInstantaneoDelete;
begin
  result := TResponseFinanceiroMovimentoPixInstantaneoDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroMovimentoPixInstantaneoDelete.Obj: TResponseClassFinanceiroMovimentoPixInstantaneoDelete;
begin
  result := FObj;
end;

{ TFinanceiroMovimentoPix }

constructor TFinanceiroMovimentoPix.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FFinanceiroMovimentoIdpk := '';
  FFinanceiroContaIdpk := '';
  FFinanceiroContaIdpk2 := '';
  FPixTipo := '';
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
  FWebhook := '';
  FWebhookToken := '';
  FPushNotificationToken := '';
  FPushNotificationAplicativoIdpk := '';
end;

destructor TFinanceiroMovimentoPix.Destroy;
begin

  inherited;
end;

function TFinanceiroMovimentoPix.getClienteIdpk: string;
begin
  result := FClienteIdpk;
end;

function TFinanceiroMovimentoPix.getDescontoTipo: string;
begin
  result := FDescontoTipo;
end;

function TFinanceiroMovimentoPix.getDescontoValor: double;
begin
  result := FDescontoValor;
end;

function TFinanceiroMovimentoPix.getDescricao: string;
begin
  result := FDescricao;
end;

function TFinanceiroMovimentoPix.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TFinanceiroMovimentoPix.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TFinanceiroMovimentoPix.getFinanceiroContaIdpk: string;
begin
  result := FFinanceiroContaIdpk;
end;

function TFinanceiroMovimentoPix.getFinanceiroContaIdpk2: string;
begin
  result := FFinanceiroContaIdpk2;
end;

function TFinanceiroMovimentoPix.getFinanceiroMovimentoIdpk: string;
begin
  result := FFinanceiroMovimentoIdpk;
end;

function TFinanceiroMovimentoPix.getIdpk: string;
begin
  result := FIdpk;
end;

function TFinanceiroMovimentoPix.getJurosMensal: double;
begin
  result := FJurosMensal;
end;

function TFinanceiroMovimentoPix.getMulta: double;
begin
  result := FMulta;
end;

function TFinanceiroMovimentoPix.getPixTipo: string;
begin
  result := FPixTipo;
end;

function TFinanceiroMovimentoPix.getPushNotificationAplicativoIdpk: string;
begin
  result := FPushNotificationAplicativoIdpk;
end;

function TFinanceiroMovimentoPix.getPushNotificationToken: string;
begin
  result := FPushNotificationToken;
end;

function TFinanceiroMovimentoPix.getSacadoBairro: string;
begin
  result := FSacadoBairro;
end;

function TFinanceiroMovimentoPix.getSacadoCep: string;
begin
  result := FSacadoCep;
end;

function TFinanceiroMovimentoPix.getSacadoCidade: string;
begin
  result := FSacadoCidade;
end;

function TFinanceiroMovimentoPix.getSacadoCnpjCpf: string;
begin
  result := FSacadoCnpjCpf;
end;

function TFinanceiroMovimentoPix.getSacadoEndereco: string;
begin
  result := FSacadoEndereco;
end;

function TFinanceiroMovimentoPix.getSacadoEnderecoComplemento: string;
begin
  result := FSacadoEnderecoComplemento;
end;

function TFinanceiroMovimentoPix.getSacadoEnderecoNumero: string;
begin
  result := FSacadoEnderecoNumero;
end;

function TFinanceiroMovimentoPix.getSacadoNome: string;
begin
  result := FSacadoNome;
end;

function TFinanceiroMovimentoPix.getSacadoPais: string;
begin
  result := FSacadoPais;
end;

function TFinanceiroMovimentoPix.getSacadoUf: string;
begin
  result := FSacadoUf;
end;

function TFinanceiroMovimentoPix.getStatus: string;
begin
  result := FStatus;
end;

function TFinanceiroMovimentoPix.getValor: double;
begin
  result := FValor;
end;

function TFinanceiroMovimentoPix.getVencimento: TDate;
begin
  result := FVencimento;
end;

function TFinanceiroMovimentoPix.getWebhook: string;
begin
  result := FWebhook;
end;

function TFinanceiroMovimentoPix.getWebhookToken: string;
begin
  result := FWebhookToken;
end;

class function TFinanceiroMovimentoPix.new: IFinanceiroMovimentoPix;
begin
  result := TFinanceiroMovimentoPix.Create;
end;

function TFinanceiroMovimentoPix.setClienteIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FClienteIdpk := value;
end;

function TFinanceiroMovimentoPix.setDescontoTipo(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FDescontoTipo := value;
end;

function TFinanceiroMovimentoPix.setDescontoValor(const value: double): IFinanceiroMovimentoPix;
begin
  result := self;
  FDescontoValor := value;
end;

function TFinanceiroMovimentoPix.setDescricao(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FDescricao := value;
end;

function TFinanceiroMovimentoPix.setEmpresaIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TFinanceiroMovimentoPix.setFilialIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FFilialIdpk := value;
end;

function TFinanceiroMovimentoPix.setFinanceiroContaIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FFinanceiroContaIdpk := value;
end;

function TFinanceiroMovimentoPix.setFinanceiroContaIdpk2(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FFinanceiroContaIdpk2 := value;
end;

function TFinanceiroMovimentoPix.setFinanceiroMovimentoIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FFinanceiroMovimentoIdpk := value;
end;

function TFinanceiroMovimentoPix.setIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FIdpk := value;
end;

function TFinanceiroMovimentoPix.setJurosMensal(const value: double): IFinanceiroMovimentoPix;
begin
  result := self;
  FJurosMensal := value;
end;

function TFinanceiroMovimentoPix.setMulta(const value: double): IFinanceiroMovimentoPix;
begin
  result := self;
  FMulta := value;
end;

function TFinanceiroMovimentoPix.setPixTipo(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FPixTipo := value;
end;

function TFinanceiroMovimentoPix.setPushNotificationAplicativoIdpk(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FPushNotificationAplicativoIdpk := value;
end;

function TFinanceiroMovimentoPix.setPushNotificationToken(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FPushNotificationToken := value;
end;

function TFinanceiroMovimentoPix.setSacadoBairro(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoBairro := value;
end;

function TFinanceiroMovimentoPix.setSacadoCep(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoCep := value;
end;

function TFinanceiroMovimentoPix.setSacadoCidade(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoCidade := value;
end;

function TFinanceiroMovimentoPix.setSacadoCnpjCpf(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoCnpjCpf := value;
end;

function TFinanceiroMovimentoPix.setSacadoEndereco(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoEndereco := value;
end;

function TFinanceiroMovimentoPix.setSacadoEnderecoComplemento(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoEnderecoComplemento := value;
end;

function TFinanceiroMovimentoPix.setSacadoEnderecoNumero(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoEnderecoNumero := value;
end;

function TFinanceiroMovimentoPix.setSacadoNome(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoNome := value;
end;

function TFinanceiroMovimentoPix.setSacadoPais(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoPais := value;
end;

function TFinanceiroMovimentoPix.setSacadoUf(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FSacadoUf := value;
end;

function TFinanceiroMovimentoPix.setStatus(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FStatus := value;
end;

function TFinanceiroMovimentoPix.setValor(const value: double): IFinanceiroMovimentoPix;
begin
  result := self;
  FValor := value;
end;

function TFinanceiroMovimentoPix.setVencimento(const value: TDate): IFinanceiroMovimentoPix;
begin
  result := self;
  FVencimento := value;
end;

function TFinanceiroMovimentoPix.setWebhook(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FWebhook := value;
end;

function TFinanceiroMovimentoPix.setWebhookToken(const value: string): IFinanceiroMovimentoPix;
begin
  result := self;
  FWebhookToken := value;
end;

function TFinanceiroMovimentoPix.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('fmp_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('fmp_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('fmp_filial_idpk', FFilialIdpk);
  if (FFinanceiroMovimentoIdpk <> '') then
    result.AddPair('fmp_financeiro_movimento_idpk', FFinanceiroMovimentoIdpk);
  if (FFinanceiroContaIdpk <> '') then
    result.AddPair('fmp_financeiro_conta_idpk', FFinanceiroContaIdpk);
  if (FFinanceiroContaIdpk2 <> '') then
    result.AddPair('fmp_financeiro_conta_idpk2', FFinanceiroContaIdpk2);
  if (FPixTipo <> '') then
    result.AddPair('fmp_pix_tipo', FPixTipo);
  if (FStatus <> '') then
    result.AddPair('fmp_status', FStatus);
  if (FVencimento <> 0) then
    result.AddPair('fmp_vencimento', DateToStr(FVencimento));
  if (FValor <> 0) then
    result.AddPair('fmp_valor', FValor);
  if (FDescontoTipo <> '') then
    result.AddPair('fmp_desconto_tipo', FDescontoTipo);
  if (FDescontoValor <> 0) then
    result.AddPair('fmp_desconto_valor', FDescontoValor);
  if (FJurosMensal <> 0) then
    result.AddPair('fmp_juros_mensal', FJurosMensal);
  if (FMulta <> 0) then
    result.AddPair('fmp_multa', FMulta);
  if (FDescricao <> '') then
    result.AddPair('fmp_descricao', FDescricao);
  if (FClienteIdpk <> '') then
    result.AddPair('fmp_cliente_idpk', FClienteIdpk);
  if (FSacadoNome <> '') then
    result.AddPair('fmp_sacado_nome', FSacadoNome);
  if (FSacadoCnpjCpf <> '') then
    result.AddPair('fmp_sacado_cnpj_cpf', FSacadoCnpjCpf);
  if (FSacadoEndereco <> '') then
    result.AddPair('fmp_sacado_endereco', FSacadoEndereco);
  if (FSacadoEnderecoNumero <> '') then
    result.AddPair('fmp_sacado_endereco_numero', FSacadoEnderecoNumero);
  if (FSacadoEnderecoComplemento <> '') then
    result.AddPair('fmp_sacado_endereco_complemento', FSacadoEnderecoComplemento);
  if (FSacadoBairro <> '') then
    result.AddPair('fmp_sacado_bairro', FSacadoBairro);
  if (FSacadoCep <> '') then
    result.AddPair('fmp_sacado_cep', FSacadoCep);
  if (FSacadoCidade <> '') then
    result.AddPair('fmp_sacado_cidade', FSacadoCidade);
  if (FSacadoUf <> '') then
    result.AddPair('fmp_sacado_uf', FSacadoUf);
  if (FSacadoPais <> '') then
    result.AddPair('fmp_sacado_pais', FSacadoPais);
  if (FWebhook <> '') then
    result.AddPair('fmp_webhook', FWebhook);
  if (FWebhookToken <> '') then
    result.AddPair('fmp_webhook_token', FWebhookToken);
  if (FPushNotificationToken <> '') then
    result.AddPair('fmp_push_notification_token', FPushNotificationToken);
  if (FPushNotificationAplicativoIdpk <> '') then
    result.AddPair('fmp_push_notification_aplicativo_idpk', FPushNotificationAplicativoIdpk);
end;

{ TPixComprovantePagamentoPDF }

constructor TPixComprovantePagamentoPDF.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
end;

destructor TPixComprovantePagamentoPDF.Destroy;
begin

  inherited;
end;

function TPixComprovantePagamentoPDF.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TPixComprovantePagamentoPDF.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TPixComprovantePagamentoPDF.getIdpk: string;
begin
  result := FIdpk;
end;

class function TPixComprovantePagamentoPDF.new: IPixComprovantePagamentoPDF;
begin
  result := TPixComprovantePagamentoPDF.Create;
end;

function TPixComprovantePagamentoPDF.setEmpresaIdpk(const value: string): IPixComprovantePagamentoPDF;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TPixComprovantePagamentoPDF.setFilialIdpk(const value: string): IPixComprovantePagamentoPDF;
begin
  result := self;
  FFilialIdpk := value;
end;

function TPixComprovantePagamentoPDF.setIdpk(const value: string): IPixComprovantePagamentoPDF;
begin
  result := self;
  FIdpk := value;
end;

function TPixComprovantePagamentoPDF.toParams: string;
var params : string;
begin
  result := '';
  if (FIdpk <> '') then
    result := result +'/'+ FIdpk;

  params := '';
  if (FEmpresaIdpk <> '') then
    params := AddHeaderParams(params, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    params := AddHeaderParams(params, 'filial_idpk='+ FFilialIdpk);
  if (params <> '') then
    result := result +'?'+ params;
end;

{ TResponsePixComprovantePagamentoPDF }

constructor TResponsePixComprovantePagamentoPDF.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassPixComprovantePagamentoPDF.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponsePixComprovantePagamentoPDF.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponsePixComprovantePagamentoPDF.new(parent: IResponse): IResponsePixComprovantePagamentoPDF;
begin
  result := TResponsePixComprovantePagamentoPDF.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponsePixComprovantePagamentoPDF.Obj: TResponseClassPixComprovantePagamentoPDF;
begin
  result := FObj;
end;

end.
