unit mercurio.api.usuario;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.usuario.recuperarSenha,
  mercurio.response.usuario.get, mercurio.response.templateUsuarioTipo.get;

type
  IUsuarioRecuperarSenha = interface
    ['{588606EA-C691-40DE-AF42-CFFBD6F3F02A}']
    /// <summary> Código idpk do sistema em que deseja recuperar a senha do email </summary>
    function setSistemaIdpk(const value : string) : IUsuarioRecuperarSenha;
    /// <summary> Código idpk do sistema em que deseja recuperar a senha do email </summary>
    function getSistemaIdpk : string;
    /// <summary> Email que deseja recuperar a senha </summary>
    function setEmail(const value : string) : IUsuarioRecuperarSenha;
    /// <summary> Email que deseja recuperar a senha </summary>
    function getEmail : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  TUsuarioRecuperarSenha = class(TInterfacedObject, IUsuarioRecuperarSenha)
  private
    FSistemaIdpk : string;
    FEmail : string;
  public
    class function new : IUsuarioRecuperarSenha;

    /// <summary> Código idpk do sistema em que deseja recuperar a senha do email </summary>
    function setSistemaIdpk(const value : string) : IUsuarioRecuperarSenha;
    /// <summary> Código idpk do sistema em que deseja recuperar a senha do email </summary>
    function getSistemaIdpk : string;
    /// <summary> Email que deseja recuperar a senha </summary>
    function setEmail(const value : string) : IUsuarioRecuperarSenha;
    /// <summary> Email que deseja recuperar a senha </summary>
    function getEmail : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IUsuarioGet = interface(IPayloadGet)
    ['{33EBAA68-6AF6-48F4-A7F6-11ABF29BD7B5}']
    /// <summary>
    ///  Tipo de usuário
    ///  | Administrador | Gerente | Comprador | Financeiro | Financeiro Avançado | Vendedor | Vendedor Avançado |
    /// </summary>
    function setTipo(const value : string) : IUsuarioGet;
    /// <summary>
    ///  Tipo de usuário
    ///  | Administrador | Gerente | Comprador | Financeiro | Financeiro Avançado | Vendedor | Vendedor Avançado |
    /// </summary>
    function getTipo : string;
  end;

  TUsuarioGet = class(TPayloadGet, IUsuarioGet)
  private
    FTipo : string;
  public
    class function new : IUsuarioGet;

    /// <summary>
    ///  Tipo de usuário
    ///  | Administrador | Gerente | Comprador | Financeiro | Financeiro Avançado | Vendedor | Vendedor Avançado |
    /// </summary>
    function setTipo(const value : string) : IUsuarioGet;
    /// <summary>
    ///  Tipo de usuário
    ///  | Administrador | Gerente | Comprador | Financeiro | Financeiro Avançado | Vendedor | Vendedor Avançado |
    /// </summary>
    function getTipo : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IResponseUsuarioRecuperarSenha = interface(IResponse)
    ['{C5C3F1DD-F142-405B-A4D2-1DDBB7B64977}']
    function Obj : TResponseClassUsuarioRecuperarSenha;
  end;
  TResponseUsuarioRecuperarSenha = class(TResponse, IResponseUsuarioRecuperarSenha)
  private
    FObj : TResponseClassUsuarioRecuperarSenha;
  public
    class function new(parent : IResponse) : IResponseUsuarioRecuperarSenha;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassUsuarioRecuperarSenha;
  end;

  IResponseUsuarioGet = interface(IResponse)
    ['{C5C3F1DD-F142-405B-A4D2-1DDBB7B64977}']
    function Obj : TResponseClassUsuarioGet;
  end;
  TResponseUsuarioGet = class(TResponse, IResponseUsuarioGet)
  private
    FObj : TResponseClassUsuarioGet;
  public
    class function new(parent : IResponse) : IResponseUsuarioGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassUsuarioGet;
  end;

  IResponseTemplateUsuarioTipoGet = interface(IResponse)
    ['{2141D3E5-28E2-4C26-8BB0-3E3A90DB22CC}']
    function Obj : TResponseClassTemplateUsuarioTipoGet;
  end;
  TResponseTemplateUsuarioTipoGet = class(TResponse, IResponseTemplateUsuarioTipoGet)
  private
    FObj : TResponseClassTemplateUsuarioTipoGet;
  public
    class function new(parent : IResponse) : IResponseTemplateUsuarioTipoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTemplateUsuarioTipoGet;
  end;

  TMercurioUsuario = class(TMercurioPai)
  public
    /// <summary> Efetua a recuperação da senha </summary>
    function RecuperarSenha(const params : IUsuarioRecuperarSenha) : IResponseUsuarioRecuperarSenha;

    /// <summary> Busca um ou mais usuários na base da empresa </summary>
    function Get(var params : IUsuarioGet) : IResponseUsuarioGet;

    /// <summary> Busca todos os tipos de usuários possíveis na API </summary>
    function Tipos : IResponseTemplateUsuarioTipoGet;
  end;


implementation

{ TUsuarioRecuperarSenha }

uses mercurio.api.consts, System.SysUtils, mercurio.api.functions;

function TUsuarioRecuperarSenha.getEmail: string;
begin
  result := FEmail;
end;

function TUsuarioRecuperarSenha.getSistemaIdpk: string;
begin
  result := FSistemaIdpk;
end;

class function TUsuarioRecuperarSenha.new: IUsuarioRecuperarSenha;
begin
  result := TUsuarioRecuperarSenha.Create;
end;

function TUsuarioRecuperarSenha.setEmail(const value: string): IUsuarioRecuperarSenha;
begin
  result := self;
  FEmail := value;
end;

function TUsuarioRecuperarSenha.setSistemaIdpk(const value: string): IUsuarioRecuperarSenha;
begin
  result := self;
  FSistemaIdpk := value;
end;

function TUsuarioRecuperarSenha.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;
  result.AddPair('email', FEmail);
  if (FSistemaIdpk <> '') then
    result.AddPair('sistema_idpk', FSistemaIdpk);
end;

{ TMercurioUsuario }

function TMercurioUsuario.Get(var params : IUsuarioGet) : IResponseUsuarioGet;
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
    url := getUrl(Ambiente, urlUsuario) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseUsuarioGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioUsuario.RecuperarSenha(const params : IUsuarioRecuperarSenha) : IResponseUsuarioRecuperarSenha;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlUsuarioRecuperarSenha);
    result := TResponseUsuarioRecuperarSenha.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioUsuario.Tipos: IResponseTemplateUsuarioTipoGet;
var url : string;
begin
  result := nil;
  
  try
    url := getUrl(Ambiente, urlTemplateUsuarioTipo);
    Api.HeaderCustomAdd('Authorization', ''); //Sem token de autorização
    result := TResponseTemplateUsuarioTipoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

{ TUsuarioGet }

function TUsuarioGet.getTipo: string;
begin
  result := FTipo;
end;

class function TUsuarioGet.new: IUsuarioGet;
begin
  result := TUsuarioGet.Create;
end;

function TUsuarioGet.setTipo(const value: string): IUsuarioGet;
begin
  result := self;
  FTipo := value;
end;

function TUsuarioGet.toParams: string;
begin
  result := inherited;
  if (FTipo <> '') then
    result := AddParam(result, 'tipo=' + FTipo);
end;

{ TResponseUsuarioRecuperarSenha }

constructor TResponseUsuarioRecuperarSenha.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassUsuarioRecuperarSenha.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseUsuarioRecuperarSenha.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseUsuarioRecuperarSenha.new(parent: IResponse): IResponseUsuarioRecuperarSenha;
begin
  result := TResponseUsuarioRecuperarSenha.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseUsuarioRecuperarSenha.Obj: TResponseClassUsuarioRecuperarSenha;
begin
  result := FObj;
end;

{ TResponseUsuarioGet }

constructor TResponseUsuarioGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassUsuarioGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseUsuarioGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseUsuarioGet.new(parent: IResponse): IResponseUsuarioGet;
begin
  result := TResponseUsuarioGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseUsuarioGet.Obj: TResponseClassUsuarioGet;
begin
  result := FObj;
end;

{ TResponseTemplateUsuarioTipoGet }

constructor TResponseTemplateUsuarioTipoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTemplateUsuarioTipoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTemplateUsuarioTipoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTemplateUsuarioTipoGet.new(parent : IResponse) : IResponseTemplateUsuarioTipoGet;
begin
  result := TResponseTemplateUsuarioTipoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTemplateUsuarioTipoGet.Obj: TResponseClassTemplateUsuarioTipoGet;
begin
  result := FObj;
end;

end.
