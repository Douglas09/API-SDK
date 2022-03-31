unit mercurio.api.forma_pagamento;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.formaPagamento.get,
  mercurio.api.functions;

type
  IFormaPagamentoGet = interface(IPayloadGet)
    ['{E29C88FC-2F93-474A-9614-73ACDDFE5503}']
    /// <summary>
    ///  Identificado da forma de pgto: | 0 - Dinheiro | 1 - Cheque | 2 - Cartão Débito
    ///  | 3 - Cartão Crédito | 4 - Cartão Crédito Parcelado | 5 - Cartão Crédito Parcelado Emissor | 6 - Cartão Vale Alimentação
    ///  | 7 - Crediário | 8 - Crediário Boleto |
    /// </summary>
    function setClassificacao(const value : string) : IFormaPagamentoGet;
    /// <summary>
    ///  Identificado da forma de pgto: | 0 - Dinheiro | 1 - Cheque | 2 - Cartão Débito
    ///  | 3 - Cartão Crédito | 4 - Cartão Crédito Parcelado | 5 - Cartão Crédito Parcelado Emissor | 6 - Cartão Vale Alimentação
    ///  | 7 - Crediário | 8 - Crediário Boleto |
    /// </summary>
    function getClassificacao : string;
    /// <summary> Nome da forma de pagamento </summary>
    function setDescricao(const value : string) : IFormaPagamentoGet;
    /// <summary> Nome da forma de pagamento </summary>
    function getDescricao : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TFormaPagamentoGet = class(TPayloadGet, IFormaPagamentoGet)
  private
    FClassificacao : string;
    FDescricao : string;
  public
    class function new : IFormaPagamentoGet;

    /// <summary>
    ///  Identificado da forma de pgto: | 0 - Dinheiro | 1 - Cheque | 2 - Cartão Débito
    ///  | 3 - Cartão Crédito | 4 - Cartão Crédito Parcelado | 5 - Cartão Crédito Parcelado Emissor | 6 - Cartão Vale Alimentação
    ///  | 7 - Crediário | 8 - Crediário Boleto |
    /// </summary>
    function setClassificacao(const value : string) : IFormaPagamentoGet;
    /// <summary>
    ///  Identificado da forma de pgto: | 0 - Dinheiro | 1 - Cheque | 2 - Cartão Débito
    ///  | 3 - Cartão Crédito | 4 - Cartão Crédito Parcelado | 5 - Cartão Crédito Parcelado Emissor | 6 - Cartão Vale Alimentação
    ///  | 7 - Crediário | 8 - Crediário Boleto |
    /// </summary>
    function getClassificacao : string;
    /// <summary> Nome da forma de pagamento </summary>
    function setDescricao(const value : string) : IFormaPagamentoGet;
    /// <summary> Nome da forma de pagamento </summary>
    function getDescricao : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IResponseFormaPagamentoGet = interface(IResponse)
    ['{8AD1ABEC-EF89-406C-A9C9-FBC018E9E6E3}']
    function Obj : TResponseClassFormaPagamentoGet;
  end;
  TResponseFormaPagamentoGet = class(TResponse, IResponseFormaPagamentoGet)
  private
    FObj : TResponseClassFormaPagamentoGet;
  public
    class function new(parent : IResponse) : IResponseFormaPagamentoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFormaPagamentoGet;
  end;

  TMercurioFormaPagamento = class(TMercurioPai)
  public
    /// <summary> Busca uma ou mais formas de pagamento </summary>
    function Get(var params : IFormaPagamentoGet) : IResponseFormaPagamentoGet;
  end;

implementation

{ TFormaPagamentoGet }

uses mercurio.api.consts, System.SysUtils;

function TFormaPagamentoGet.getClassificacao: string;
begin
  result := FClassificacao;
end;

function TFormaPagamentoGet.getDescricao: string;
begin
  result := FDescricao;
end;

class function TFormaPagamentoGet.new: IFormaPagamentoGet;
begin
  result := TFormaPagamentoGet.Create;
end;

function TFormaPagamentoGet.setClassificacao(const value: string): IFormaPagamentoGet;
begin
  result := self;
  FClassificacao := value;
end;

function TFormaPagamentoGet.setDescricao(const value: string): IFormaPagamentoGet;
begin
  result := self;
  FDescricao := value;
end;

function TFormaPagamentoGet.toParams: string;
begin
  result := inherited;
  if (FClassificacao <> '') then
    result := AddParam(result, 'classificacao=' + FClassificacao);
  if (FDescricao <> '') then
    result := AddParam(result, 'descricao=' + FDescricao);
end;

{ TMercurioFormaPagamento }

function TMercurioFormaPagamento.Get(var params : IFormaPagamentoGet) : IResponseFormaPagamentoGet;
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
    url := getUrl(Ambiente, urlFormaPagamento) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFormaPagamentoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

{ TResponseFormaPagamentoGet }

constructor TResponseFormaPagamentoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFormaPagamentoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFormaPagamentoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFormaPagamentoGet.new(parent: IResponse): IResponseFormaPagamentoGet;
begin
  result := TResponseFormaPagamentoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFormaPagamentoGet.Obj: TResponseClassFormaPagamentoGet;
begin
  result := FObj;
end;

end.
