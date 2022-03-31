unit mercurio.api.sistema;

interface

uses mercurio.api.parent, json, mercurio.response.sistema.get;

type
  ISistemaGet = interface
    ['{23010829-F107-415A-9E5E-27C1B2C7C7E1}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ISistemaGet;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Url do sistema </summary>
    function setUrl(const value : string) : ISistemaGet;
    /// <summary> Url do sistema </summary>
    function getUrl : string;
    /// <summary> Gera o Payload </summary>
    function toJson : TJSONValue;
  end;

  TSistemaGet = class(TInterfacedObject, ISistemaGet)
  private
    FIdpk : string;
    FUrl : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ISistemaGet;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ISistemaGet;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Url do sistema </summary>
    function setUrl(const value : string) : ISistemaGet;
    /// <summary> Url do sistema </summary>
    function getUrl : string;

    /// <summary> Gera o Payload </summary>
    function toJson : TJSONValue;
  end;

  IResponseSistemaGet = interface(IResponse)
    ['{C5C3F1DD-F142-405B-A4D2-1DDBB7B64977}']
    function Obj : TResponseClassSistemaGet;
  end;
  TResponseSistemaGet = class(TResponse, IResponseSistemaGet)
  private
    FObj : TResponseClassSistemaGet;
  public
    class function new(parent : IResponse) : IResponseSistemaGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassSistemaGet;
  end;

  TMercurioSistema = class(TMercurioPai)
  private
  public
    function Get(var params : ISistemaGet) : IResponseSistemaGet;
  end;

implementation

{ TSistemaGet }

uses mercurio.api.functions, mercurio.api.consts, System.SysUtils;

constructor TSistemaGet.Create;
begin

end;

destructor TSistemaGet.Destroy;
begin

  inherited;
end;

function TSistemaGet.getIdpk: string;
begin
  result := FIdpk;
end;

function TSistemaGet.getUrl: string;
begin
  result := FUrl;
end;

class function TSistemaGet.new: ISistemaGet;
begin
  result := TSistemaGet.Create;
end;

function TSistemaGet.setIdpk(const value: string): ISistemaGet;
begin
  result := self;
  FIdpk := value;
end;

function TSistemaGet.setUrl(const value: string): ISistemaGet;
begin
  result := self;
  FUrl := value;
end;

function TSistemaGet.toJson: TJSONValue;
var obj : TJSONObject;
begin
  obj := TJSONObject.Create;
  if (self.getIdpk <> '') then
    obj.AddPair('sistema_idpk', self.getIdpk);
  if (self.getUrl <> '') then
    obj.AddPair('url', self.getUrl);
  result := obj;
end;

{ TMercurioSistema }

function TMercurioSistema.Get(var params : ISistemaGet) : IResponseSistemaGet;
var payload : TJSONObject;
    url : string;
begin
  result := nil;
  payload := nil;
  if not (assigned(params)) then
    exit;

  try
    payload := TJSONObject(params.toJson);
    url := getUrl(Ambiente, urlSistema);

    result := TResponseSistemaGet.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
  MyFreeAndNil(payload);
end;

{ TResponseLogar }

constructor TResponseSistemaGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassSistemaGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseSistemaGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseSistemaGet.new(parent: IResponse): IResponseSistemaGet;
begin
  result := TResponseSistemaGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseSistemaGet.Obj: TResponseClassSistemaGet;
begin
  result := FObj;
end;

end.
