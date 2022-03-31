unit mercurio.api.financeiro_conta;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.api.login,
  mercurio.response.financeiroConta.get;

type
  IFinanceiroContaGet = interface(IPayloadGet)
    ['{A5F5A73C-53C4-4799-9878-78081318618D}']
    function setContaPadrao(const value : boolean) : IFinanceiroContaGet;
    function getContaPadrao : boolean;
    function setTipoConta(const value : string) : IFinanceiroContaGet;
    function getTipoConta : string;
  end;

  TFinanceiroContaGet = class(TPayloadGet, IFinanceiroContaGet)
  private
    FContaPadrao : boolean;
    FTipoConta : string;
  public
    class function new : IFinanceiroContaGet;
    constructor Create;
    destructor Destroy; override;

    function setContaPadrao(const value : boolean) : IFinanceiroContaGet;
    function getContaPadrao : boolean;
    function setTipoConta(const value : string) : IFinanceiroContaGet;
    function getTipoConta : string;
  end;

  IResponseFinanceiroContaGet = interface(IResponse)
    ['{90530419-E3EA-4D03-B33A-A8901050C2C5}']
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroContaGet;
  end;
  TResponseFinanceiroContaGet = class(TResponse, IResponseFinanceiroContaGet)
  private
    FObj : TResponseClassFinanceiroContaGet;
  public
    class function new(parent : IResponse) : IResponseFinanceiroContaGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    /// <summary> Variável para acessar o retorno da api via classe </summary>
    function Obj : TResponseClassFinanceiroContaGet;
  end;

  TMercurioFinanceiroConta = class(TMercurioPai)
  public
    constructor Create(var Auth : TMercurioLogin);
    destructor Destroy; override;

    /// <summary> Busca uma ou mais contas financeiras </summary>
    function Get(var params : IFinanceiroContaGet) : IResponseFinanceiroContaGet;
  end;

implementation

{ TMercurioFinanceiroConta }

uses mercurio.api.functions, mercurio.api.consts, System.SysUtils;

constructor TMercurioFinanceiroConta.Create(var Auth: TMercurioLogin);
begin
  inherited Create(Auth);
end;

destructor TMercurioFinanceiroConta.Destroy;
begin

  inherited;
end;

function TMercurioFinanceiroConta.Get(var params: IFinanceiroContaGet): IResponseFinanceiroContaGet;
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
    url := getUrl(Ambiente, urlFinanceiroConta) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFinanceiroContaGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

{ TFinanceiroContaGet }

constructor TFinanceiroContaGet.Create;
begin
  inherited Create;
  FContaPadrao := false;
  FTipoConta := '';
end;

destructor TFinanceiroContaGet.Destroy;
begin

  inherited;
end;

function TFinanceiroContaGet.getContaPadrao: boolean;
begin
  result := FContaPadrao;
end;

function TFinanceiroContaGet.getTipoConta: string;
begin
  result := FTipoConta;
end;

class function TFinanceiroContaGet.new: IFinanceiroContaGet;
begin
  result := TFinanceiroContaGet.Create;
end;

function TFinanceiroContaGet.setContaPadrao(const value: boolean): IFinanceiroContaGet;
begin
  result := self;
  FContaPadrao := value;
end;

function TFinanceiroContaGet.setTipoConta(const value: string): IFinanceiroContaGet;
begin
  result := self;
  FTipoConta := value;
end;

{ TResponseFinanceiroContaGet }

constructor TResponseFinanceiroContaGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFinanceiroContaGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFinanceiroContaGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFinanceiroContaGet.new(parent: IResponse): IResponseFinanceiroContaGet;
begin
  result := TResponseFinanceiroContaGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFinanceiroContaGet.Obj: TResponseClassFinanceiroContaGet;
begin
  result := FObj;
end;

end.
