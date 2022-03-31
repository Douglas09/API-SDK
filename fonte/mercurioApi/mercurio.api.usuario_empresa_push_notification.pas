unit mercurio.api.usuario_empresa_push_notification;

interface

uses mercurio.api.parent, json, mercurio.api.classes,
     mercurio.response.usuarioEmpresaPushNotificationGet, mercurio.api.functions,
     mercurio.response.usuarioEmpresaPushNotificationDelete,
     mercurio.response.usuarioEmpresaPushNotificationPost;

type
  IUsuarioEmpresaPushNotification = interface
    ['{C633A397-5CF8-4856-857C-50950A6265BE}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do usuário na empresa </summary>
    function setUsuarioEmpresaIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do usuário na empresa </summary>
    function getUsuarioEmpresaIdpk : string;
    /// <summary> Código único do aplicativo </summary>
    function setAplicativoIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do aplicativo </summary>
    function getAplicativoIdpk : string;
    /// <summary> Package do aplicativo caso não tenha o idpk </summary>
    function setAplicativoPackage(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Package do aplicativo caso não tenha o idpk </summary>
    function getAplicativoPackage : string;
    /// <summary> Token de um dispositivo do usuário </summary>
    function setToken(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Token de um dispositivo do usuário </summary>
    function getToken : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  TUsuarioEmpresaPushNotification = class(TInterfacedObject, IUsuarioEmpresaPushNotification)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FUsuarioEmpresaIdpk : string;
    FAplicativoIdpk : string;
    FAplicativoPackage : string;
    FToken : string;
  public
    class function new : IUsuarioEmpresaPushNotification;
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do usuário na empresa </summary>
    function setUsuarioEmpresaIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do usuário na empresa </summary>
    function getUsuarioEmpresaIdpk : string;
    /// <summary> Código único do aplicativo </summary>
    function setAplicativoIdpk(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Código único do aplicativo </summary>
    function getAplicativoIdpk : string;
    /// <summary> Package do aplicativo caso não tenha o idpk </summary>
    function setAplicativoPackage(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Package do aplicativo caso não tenha o idpk </summary>
    function getAplicativoPackage : string;
    /// <summary> Token de um dispositivo do usuário </summary>
    function setToken(const value : string) : IUsuarioEmpresaPushNotification;
    /// <summary> Token de um dispositivo do usuário </summary>
    function getToken : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;


  IPushNotificationTokenGet = interface(IPayloadGet)
    ['{6DA553A4-7AB7-4BF0-B737-7CE789934644}']
    function setUsuarioEmpresaIdpk(const value : string) : IPushNotificationTokenGet;
    function getUsuarioEmpresaIdpk : string;
    function setAplicativoIdpk(const value : string) : IPushNotificationTokenGet;
    function getAplicativoIdpk : string;
    function setAplicativoPackage(const value : string) : IPushNotificationTokenGet;
    function getAplicativoPackage : string;
    function setToken(const value : string) : IPushNotificationTokenGet;
    function getToken : string;
  end;
  TPushNotificationTokenGet = class(TPayloadGet, IPushNotificationTokenGet)
  private
    FUsuarioEmpresaIdpk : string;
    FAplicativoIdpk : string;
    FAplicativoPackage : string;
    FToken : string;
  public
    class function new : IPushNotificationTokenGet;
    constructor Create;
    destructor Destroy; override;

    function setUsuarioEmpresaIdpk(const value : string) : IPushNotificationTokenGet;
    function getUsuarioEmpresaIdpk : string;
    function setAplicativoIdpk(const value : string) : IPushNotificationTokenGet;
    function getAplicativoIdpk : string;
    function setAplicativoPackage(const value : string) : IPushNotificationTokenGet;
    function getAplicativoPackage : string;
    function setToken(const value : string) : IPushNotificationTokenGet;
    function getToken : string;
  end;

  IResponsePushNotificationTokenGet = interface(IResponse)
    ['{DAE0CD00-BB4B-4EB2-8A86-41C5A9659883}']
    function Obj : TResponseClassUsuarioEmpresaPushNotificationGet;
  end;
  TResponsePushNotificationTokenGet = class(TResponse, IResponsePushNotificationTokenGet)
  private
    FObj : TResponseClassUsuarioEmpresaPushNotificationGet;
  public
    class function new(parent : IResponse) : IResponsePushNotificationTokenGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassUsuarioEmpresaPushNotificationGet;
  end;


  IPushNotificationTokenPost = interface(IPayloadPost)
    ['{26509A6C-A1BF-4244-BF76-1AB184D9BEB0}']
    /// <summary> Adiciona um novo push notification token ao payload via classe </summary>
    function addPushNotificationToken(const value : IUsuarioEmpresaPushNotification) : IPushNotificationTokenPost;
  end;
  TPushNotificationTokenPost = class(TPayloadPost, IPushNotificationTokenPost)
  public
    class function new : IPushNotificationTokenPost;
    /// <summary> Adiciona um novo push notification token ao payload via classe </summary>
    function addPushNotificationToken(const value : IUsuarioEmpresaPushNotification) : IPushNotificationTokenPost;
  end;

  IResponsePushNotificationTokenPost = interface(IResponse)
    ['{A74CD913-8716-4679-8AFB-93C5138CA344}']
    function Obj : TResponseClassUsuarioEmpresaPushNotificationPost;
  end;
  TResponsePushNotificationTokenPost = class(TResponse, IResponsePushNotificationTokenPost)
  private
    FObj : TResponseClassUsuarioEmpresaPushNotificationPost;
  public
    class function new(parent : IResponse) : IResponsePushNotificationTokenPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassUsuarioEmpresaPushNotificationPost;
  end;


  IPushNotificationTokenDelete = interface(IPayloadDelete)
    ['{B1EFFC1D-C11C-44A5-89C3-543E00FE82A3}']
    function setToken(const value : string) : IPushNotificationTokenDelete;
    function getToken : string;
    function setAplicativoIdpk(const value : string) : IPushNotificationTokenDelete;
    function getAplicativoIdpk : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TPushNotificationTokenDelete = class(TPayloadDelete, IPushNotificationTokenDelete)
  private
    FToken : string;
    FAplicativoIdpk : string;
  public
    class function new : IPushNotificationTokenDelete;
    constructor Create;

    function setToken(const value : string) : IPushNotificationTokenDelete;
    function getToken : string;
    function setAplicativoIdpk(const value : string) : IPushNotificationTokenDelete;
    function getAplicativoIdpk : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IResponsePushNotificationTokenDelete = interface(IResponse)
    ['{AF099FC8-BCC6-4919-B72C-E80EED476743}']
    function Obj : TResponseClassUsuarioEmpresaPushNotificationDelete;
  end;

  TResponsePushNotificationTokenDelete = class(TResponse, IResponsePushNotificationTokenDelete)
  private
    FObj : TResponseClassUsuarioEmpresaPushNotificationDelete;
  public
    class function new(parent : IResponse) : IResponsePushNotificationTokenDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassUsuarioEmpresaPushNotificationDelete;
  end;


  TMercurioPushNotificationToken = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais tokens push notification </summary>
    function Get(var params : IPushNotificationTokenGet) : IResponsePushNotificationTokenGet;
    /// <summary> Insere um ou mais tokens de push notification </summary>
    function Post(var params : IPushNotificationTokenPost) : IResponsePushNotificationTokenPost;
    /// <summary> Apaga os registros de tokens push notification </summary>
    function Delete(var params : IPushNotificationTokenDelete) : IResponsePushNotificationTokenDelete;
  end;

implementation

{ TPushNotificationTokenGet }

uses mercurio.api.consts, System.SysUtils;

constructor TPushNotificationTokenGet.Create;
begin
  inherited Create;
  FUsuarioEmpresaIdpk := '';
  FAplicativoIdpk := '';
  FAplicativoPackage := '';
  FToken := '';
end;

destructor TPushNotificationTokenGet.Destroy;
begin

  inherited;
end;

function TPushNotificationTokenGet.getAplicativoIdpk: string;
begin
  result := FAplicativoIdpk;
end;

function TPushNotificationTokenGet.getAplicativoPackage: string;
begin
  result := FAplicativoPackage;
end;

function TPushNotificationTokenGet.getToken: string;
begin
  result := FToken;
end;

function TPushNotificationTokenGet.getUsuarioEmpresaIdpk: string;
begin
  result := FUsuarioEmpresaIdpk;
end;

class function TPushNotificationTokenGet.new: IPushNotificationTokenGet;
begin
  result := TPushNotificationTokenGet.Create;
end;

function TPushNotificationTokenGet.setAplicativoIdpk(const value: string): IPushNotificationTokenGet;
begin
  result := self;
  FAplicativoIdpk := value;
end;

function TPushNotificationTokenGet.setAplicativoPackage(const value: string): IPushNotificationTokenGet;
begin
  result := self;
  FAplicativoPackage := value;
end;

function TPushNotificationTokenGet.setToken(const value: string): IPushNotificationTokenGet;
begin
  result := self;
  FToken := value;
end;

function TPushNotificationTokenGet.setUsuarioEmpresaIdpk(const value: string): IPushNotificationTokenGet;
begin
  result := self;
  FUsuarioEmpresaIdpk := value;
end;

{ TResponsePushNotificationTokenGet }

constructor TResponsePushNotificationTokenGet.Create(pResponse: IHTTPResponse;pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassUsuarioEmpresaPushNotificationGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponsePushNotificationTokenGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponsePushNotificationTokenGet.new(parent: IResponse): IResponsePushNotificationTokenGet;
begin
  result := TResponsePushNotificationTokenGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponsePushNotificationTokenGet.Obj: TResponseClassUsuarioEmpresaPushNotificationGet;
begin
  result := FObj;
end;

{ TMercurioPushNotificationToken }

function TMercurioPushNotificationToken.Delete(var params : IPushNotificationTokenDelete) : IResponsePushNotificationTokenDelete;
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
    url := getUrl(Ambiente, urlPushNotificationTokenRemover) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponsePushNotificationTokenDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioPushNotificationToken.Get(var params: IPushNotificationTokenGet): IResponsePushNotificationTokenGet;
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
    url := getUrl(Ambiente, urlPushNotificationTokenBuscar) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponsePushNotificationTokenGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioPushNotificationToken.Post(var params: IPushNotificationTokenPost): IResponsePushNotificationTokenPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlPushNotificationTokenAdicionar) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponsePushNotificationTokenPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TPushNotificationTokenDelete }

constructor TPushNotificationTokenDelete.Create;
begin
  inherited Create;
  FToken := '';
  FAplicativoIdpk := '';
end;

function TPushNotificationTokenDelete.getAplicativoIdpk: string;
begin
  result := FAplicativoIdpk;
end;

function TPushNotificationTokenDelete.getToken: string;
begin
  result := FToken;
end;

class function TPushNotificationTokenDelete.new: IPushNotificationTokenDelete;
begin
  result := TPushNotificationTokenDelete.Create;
end;

function TPushNotificationTokenDelete.setAplicativoIdpk(const value: string): IPushNotificationTokenDelete;
begin
  result := self;
  FAplicativoIdpk := value;
end;

function TPushNotificationTokenDelete.setToken(const value: string): IPushNotificationTokenDelete;
begin
  result := self;
  FToken := value;
end;

function TPushNotificationTokenDelete.toParams: string;
begin
  result := inherited;
  if (self.FToken <> '') then
    result := AddHeaderParams(result, 'token='+self.FToken);
  if (self.FAplicativoIdpk <> '') then
    result := AddHeaderParams(result, 'aplicativo_idpk='+self.FAplicativoIdpk);
end;

{ TResponsePushNotificationTokenDelete }

constructor TResponsePushNotificationTokenDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassUsuarioEmpresaPushNotificationDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponsePushNotificationTokenDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponsePushNotificationTokenDelete.new(parent : IResponse) : IResponsePushNotificationTokenDelete;
begin
  result := TResponsePushNotificationTokenDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponsePushNotificationTokenDelete.Obj: TResponseClassUsuarioEmpresaPushNotificationDelete;
begin
  result := FObj;
end;

{ TUsuarioEmpresaPushNotification }

constructor TUsuarioEmpresaPushNotification.Create;
begin
  inherited Create;
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FUsuarioEmpresaIdpk := '';
  FAplicativoIdpk := '';
  FAplicativoPackage := '';
  FToken := '';
end;

destructor TUsuarioEmpresaPushNotification.Destroy;
begin

  inherited;
end;

function TUsuarioEmpresaPushNotification.getAplicativoIdpk: string;
begin
  result := FAplicativoIdpk;
end;

function TUsuarioEmpresaPushNotification.getAplicativoPackage: string;
begin
  result := FAplicativoPackage;
end;

function TUsuarioEmpresaPushNotification.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TUsuarioEmpresaPushNotification.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TUsuarioEmpresaPushNotification.getIdpk: string;
begin
  result := FIdpk;
end;

function TUsuarioEmpresaPushNotification.getToken: string;
begin
  result := FToken;
end;

function TUsuarioEmpresaPushNotification.getUsuarioEmpresaIdpk: string;
begin
  result := FUsuarioEmpresaIdpk;
end;

class function TUsuarioEmpresaPushNotification.new: IUsuarioEmpresaPushNotification;
begin
  result := TUsuarioEmpresaPushNotification.Create;
end;

function TUsuarioEmpresaPushNotification.setAplicativoIdpk(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FAplicativoIdpk := value;
end;

function TUsuarioEmpresaPushNotification.setAplicativoPackage(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FAplicativoPackage := value;
end;

function TUsuarioEmpresaPushNotification.setEmpresaIdpk(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TUsuarioEmpresaPushNotification.setFilialIdpk(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FFilialIdpk := value;
end;

function TUsuarioEmpresaPushNotification.setIdpk(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FIdpk := value;
end;

function TUsuarioEmpresaPushNotification.setToken(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FToken := value;
end;

function TUsuarioEmpresaPushNotification.setUsuarioEmpresaIdpk(const value: string): IUsuarioEmpresaPushNotification;
begin
  result := self;
  FUsuarioEmpresaIdpk := value;
end;

function TUsuarioEmpresaPushNotification.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;
  result.AddPair('uep_idpk', FIdpk);
  result.AddPair('uep_empresa_idpk', FEmpresaIdpk);
  result.AddPair('uep_filial_idpk', FFilialIdpk);
  result.AddPair('uep_usuario_empresa_idpk', FUsuarioEmpresaIdpk);
  if (FAplicativoIdpk <> '') then
    result.AddPair('uep_aplicativo_idpk', FAplicativoIdpk)
  else if (FAplicativoPackage <> '') then
    result.AddPair('aplicativo_package', FAplicativoPackage);

  result.AddPair('uep_token', FToken);
end;

{ TPushNotificationTokenPost }

function TPushNotificationTokenPost.addPushNotificationToken(const value: IUsuarioEmpresaPushNotification): IPushNotificationTokenPost;
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

class function TPushNotificationTokenPost.new: IPushNotificationTokenPost;
begin
  result := TPushNotificationTokenPost.Create;
end;

{ TResponsePushNotificationTokenPost }

constructor TResponsePushNotificationTokenPost.Create(pResponse: IHTTPResponse;pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassUsuarioEmpresaPushNotificationPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponsePushNotificationTokenPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponsePushNotificationTokenPost.new(parent: IResponse): IResponsePushNotificationTokenPost;
begin
  result := TResponsePushNotificationTokenPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponsePushNotificationTokenPost.Obj: TResponseClassUsuarioEmpresaPushNotificationPost;
begin
  result := FObj;
end;

end.
