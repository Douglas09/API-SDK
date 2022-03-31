unit mercurio.api.aplicativo;

interface

uses mercurio.api.parent, json, mercurio.response.aplicativo.get;

type
  IAplicativoGet = interface
    ['{2EF428FD-A316-4252-A017-D251272D4EE5}']
    /// <summary> Indica o código idpk do aplicativo </summary>
    function setIdpk(const value : string) : IAplicativoGet;
    /// <summary> Indica o código idpk do aplicativo </summary>
    function getIdpk : string;
    /// <summary> Consulta um aplicativo pelo seu package </summary>
    function setPackage(const value : string) : IAplicativoGet;
    /// <summary> Consulta um aplicativo pelo seu package </summary>
    function getPackage : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TAplicativoGet = class(TInterfacedObject, IAplicativoGet)
  private
    FIdpk : string;
    FPackage : string;
  public
    class function new : IAplicativoGet;
    constructor Create;

    /// <summary> Indica o código idpk do aplicativo </summary>
    function setIdpk(const value : string) : IAplicativoGet;
    /// <summary> Indica o código idpk do aplicativo </summary>
    function getIdpk : string;
    /// <summary> Consulta um aplicativo pelo seu package </summary>
    function setPackage(const value : string) : IAplicativoGet;
    /// <summary> Consulta um aplicativo pelo seu package </summary>
    function getPackage : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IResponseAplicativoGet = interface(IResponse)
    ['{BFA0C358-9C7D-42FC-8E3F-D63D79DEED0D}']
    function Obj : TResponseClassAplicativoGet;
  end;
  TResponseAplicativoGet = class(TResponse, IResponseAplicativoGet)
  private
    FObj : TResponseClassAplicativoGet;
  public
    class function new(parent : IResponse) : IResponseAplicativoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassAplicativoGet;
  end;


  TMercurioAplicativo = class(TMercurioPai)
  public
    /// <summary> Consulta um ou mais aplicativos </summary>
    function Get(var params : IAplicativoGet) : IResponseAplicativoGet;
  end;

implementation

{ TAplicativoGet }

uses mercurio.api.functions, mercurio.api.consts, System.SysUtils;

constructor TAplicativoGet.Create;
begin
  FIdpk := '';
  FPackage := '';
end;

function TAplicativoGet.getIdpk: string;
begin
  result := FIdpk;
end;

function TAplicativoGet.getPackage: string;
begin
  result := FPackage;
end;

class function TAplicativoGet.new: IAplicativoGet;
begin
  result := TAplicativoGet.Create;
end;

function TAplicativoGet.setIdpk(const value: string): IAplicativoGet;
begin
  result := self;
  FIdpk := value;
end;

function TAplicativoGet.setPackage(const value: string): IAplicativoGet;
begin
  result := self;
  FPackage := value;
end;

function TAplicativoGet.toParams: string;
var params : string;
begin
  result := '';
  if (FIdpk <> '') then
    result := result +'/'+ FIdpk;

  if (FPackage <> '') then
    params := 'package='+ FPackage;

  if (params <> '') then
    result := result +'?'+ params;
end;

{ TResponseAplicativoGet }

constructor TResponseAplicativoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassAplicativoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseAplicativoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseAplicativoGet.new(parent: IResponse): IResponseAplicativoGet;
begin
  result := TResponseAplicativoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseAplicativoGet.Obj: TResponseClassAplicativoGet;
begin
  result := FObj;
end;

{ TMercurioAplicativo }

function TMercurioAplicativo.Get(var params: IAplicativoGet): IResponseAplicativoGet;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  try
    url := getUrl(Ambiente, urlAplicativo) + params.toParams;
    Api.HeaderCustomAdd('Authorization', '');
    result := TResponseAplicativoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

end.
