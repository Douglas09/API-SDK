unit mercurio.api.transportador;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.transportador.get,
  mercurio.response.transportador.getDocumentoExiste, mercurio.response.transportador.post,
  mercurio.response.transportador.put, mercurio.response.transportador.delete;

type
  /// <summary> Transportador </summary>
  ITransportador = interface
    ['{B0E10A19-E880-436B-AA35-7C4143748002}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ITransportador;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportador;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportador;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : ITransportador;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Placa do veículo padrão do transportador </summary>
    function setPlaca(const value : string) : ITransportador;
    /// <summary> Placa do veículo padrão do transportador </summary>
    function getPlaca : string;
    /// <summary> UF da placa do veículo padrão do transportador </summary>
    function setPlacaUF(const value : string) : ITransportador;
    /// <summary> UF da placa do veículo padrão do transportador </summary>
    function getPlacaUF : string;
    /// <summary> ANTT do transportador </summary>
    function setANTT(const value : string) : ITransportador;
    /// <summary> ANTT do transportador </summary>
    function getANTT : string;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : ITransportador;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Transportador </summary>
  TTransportador = class(TInterfacedObject, ITransportador)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FPlaca : string;
    FPlacaUf : string;
    FANTT : string;
    FPessoa : IMercurioPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ITransportador;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ITransportador;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportador;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportador;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : ITransportador;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Placa do veículo padrão do transportador </summary>
    function setPlaca(const value : string) : ITransportador;
    /// <summary> Placa do veículo padrão do transportador </summary>
    function getPlaca : string;
    /// <summary> UF da placa do veículo padrão do transportador </summary>
    function setPlacaUF(const value : string) : ITransportador;
    /// <summary> UF da placa do veículo padrão do transportador </summary>
    function getPlacaUF : string;
    /// <summary> ANTT do transportador </summary>
    function setANTT(const value : string) : ITransportador;
    /// <summary> ANTT do transportador </summary>
    function getANTT : string;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : ITransportador;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  ITransportadorGet = interface(IPayloadGet)
    ['{46F1BFB2-CC3F-40A0-A533-46665A637A4D}']
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_transportador, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : ITransportadorGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_transportador, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : ITransportadorGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : ITransportadorGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TTransportadorGet = class(TPayloadGet, ITransportadorGet)
  private
    FPesquisar : string;
    FNome : string;
    FDocumento : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ITransportadorGet;

    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_transportador, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : ITransportadorGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_transportador, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : ITransportadorGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : ITransportadorGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  ITransportadorDocumentoGet = interface
    ['{60DE8FF4-2D07-48EB-B2B5-D09CA42B1E77}']
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TTransportadorDocumentoGet = class(TInterfacedObject, ITransportadorDocumentoGet)
  private
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FDocumento : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ITransportadorDocumentoGet;

    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : ITransportadorDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  ITransportadorPost = interface(IPayloadPost)
    ['{034406F1-5A35-4BE7-8366-DB77AA6EC824}']
    /// <summary> Adiciona um novo transportador ao payload via classe </summary>
    function addTransportador(const value : ITransportador) : ITransportadorPost;
  end;

  TTransportadorPost = class(TPayloadPost, ITransportadorPost)
  public
    class function new : ITransportadorPost;

    /// <summary> Adiciona um novo transportador ao payload via classe </summary>
    function addTransportador(const value : ITransportador) : ITransportadorPost;
  end;

  ITransportadorPut = interface(IPayloadPut)
    ['{C8EFE473-BE10-48A2-850B-1E36BF36F55F}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona os dados do transportador ao payload via classe </summary>
    function setTransportador(const value : ITransportador) : ITransportadorPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : ITransportadorPut;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TTransportadorPut = class(TPayloadPut, ITransportadorPut)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ITransportadorPut;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ITransportadorPut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona os dados do transportador ao payload via classe </summary>
    function setTransportador(const value : ITransportador) : ITransportadorPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : ITransportadorPut;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  ITransportadorDelete = interface(IPayloadDelete)
    ['{8398F8D7-D013-469C-B3D8-84D46D88F244}']
  end;

  TTransportadorDelete = class(TPayloadDelete, ITransportadorDelete)
  public
    class function new : ITransportadorDelete;
  end;

  IResponseTransportadorGet = interface(IResponse)
    ['{E13BD33C-0C8B-43D7-801F-F6D3F64F7966}']
    function Obj : TResponseClassTransportadorGet;
  end;
  TResponseTransportadorGet = class(TResponse, IResponseTransportadorGet)
  private
    FObj : TResponseClassTransportadorGet;
  public
    class function new(parent : IResponse) : IResponseTransportadorGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTransportadorGet;
  end;

  IResponseTransportadorGetDocumentoExiste = interface(IResponse)
    ['{1A51ECBB-5CB2-47FE-A54C-27A71DDAC345}']
    function Obj : TResponseClassTransportadorGetDocumentoExiste;
  end;
  TResponseTransportadorGetDocumentoExiste = class(TResponse, IResponseTransportadorGetDocumentoExiste)
  private
    FObj : TResponseClassTransportadorGetDocumentoExiste;
  public
    class function new(parent : IResponse) : IResponseTransportadorGetDocumentoExiste;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTransportadorGetDocumentoExiste;
  end;

  IResponseTransportadorPost = interface(IResponse)
    ['{2EC587A9-091F-4964-A91D-44F69A8710AE}']
    function Obj : TResponseClassTransportadorPost;
  end;
  TResponseTransportadorPost = class(TResponse, IResponseTransportadorPost)
  private
    FObj : TResponseClassTransportadorPost;
  public
    class function new(parent : IResponse) : IResponseTransportadorPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTransportadorPost;
  end;

  IResponseTransportadorPut = interface(IResponse)
    ['{80A96281-474A-40B5-BD2D-0DD4BBE9C3A3}']
    function Obj : TResponseClassTransportadorPut;
  end;
  TResponseTransportadorPut = class(TResponse, IResponseTransportadorPut)
  private
    FObj : TResponseClassTransportadorPut;
  public
    class function new(parent : IResponse) : IResponseTransportadorPut;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTransportadorPut;
  end;

  IResponseTransportadorDelete = interface(IResponse)
    ['{3B818850-50E9-4362-8695-E32522FACA18}']
    function Obj : TResponseClassTransportadorDelete;
  end;
  TResponseTransportadorDelete = class(TResponse, IResponseTransportadorDelete)
  private
    FObj : TResponseClassTransportadorDelete;
  public
    class function new(parent : IResponse) : IResponseTransportadorDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassTransportadorDelete;
  end;

  TMercurioTransportador = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais transportadores na base da empresa </summary>
    function Get(var params : ITransportadorGet) : IResponseTransportadorGet;
    /// <summary> Consulta se já existe algum transportador cadastrado com o mesmo documento na empresa </summary>
    function GetDocumentoExiste(var params : ITransportadorDocumentoGet) : IResponseTransportadorGetDocumentoExiste;
    /// <summary> Insere um ou mais transportadores </summary>
    function Post(var params : ITransportadorPost) : IResponseTransportadorPost;
    /// <summary> Altera os dados cadastrais de um cliente </summary>
    function Put(var params : ITransportadorPut) : IResponseTransportadorPut;
    /// <summary> Apagar um transportador </summary>
    function Delete(var params : ITransportadorDelete) : IResponseTransportadorDelete;
  end;

implementation

{ TTransportadorGet }

uses mercurio.api.consts, System.SysUtils, mercurio.api.functions;

constructor TTransportadorGet.Create;
begin

end;

destructor TTransportadorGet.Destroy;
begin

  inherited;
end;

function TTransportadorGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TTransportadorGet.getNome: string;
begin
  result := FNome;
end;

function TTransportadorGet.getPesquisar: string;
begin
  result := FPesquisar;
end;

class function TTransportadorGet.new: ITransportadorGet;
begin
  result := TTransportadorGet.Create;
end;

function TTransportadorGet.setDocumento(const value: string): ITransportadorGet;
begin
  result := self;
  FDocumento := value;
end;

function TTransportadorGet.setNome(const value: string): ITransportadorGet;
begin
  result := self;
  FNome := value;
end;

function TTransportadorGet.setPesquisar(const value: string): ITransportadorGet;
begin
  result := self;
  FPesquisar := value;
end;

function TTransportadorGet.toParams: string;
begin
  result := inherited;
  if (FPesquisar <> '') then
    result := AddParam(result, 'pesquisar='+ FPesquisar);
  if (FNome <> '') then
    result := AddParam(result, 'nome='+ FNome);
  if (FDocumento <> '') then
    result := AddParam(result, 'documento='+ FDocumento);
end;

{ TMercurioTransportador }

function TMercurioTransportador.Delete(var params : ITransportadorDelete) : IResponseTransportadorDelete;
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
    url := getUrl(Ambiente, urlTransportador) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseTransportadorDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioTransportador.Get(var params : ITransportadorGet) : IResponseTransportadorGet;
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
    url := getUrl(Ambiente, urlTransportador) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseTransportadorGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioTransportador.GetDocumentoExiste(var params : ITransportadorDocumentoGet) : IResponseTransportadorGetDocumentoExiste;
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
    url := getUrl(Ambiente, urlTransportadorExiste) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseTransportadorGetDocumentoExiste.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioTransportador.Post(var params : ITransportadorPost) : IResponseTransportadorPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlTransportador) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseTransportadorPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioTransportador.Put(var params : ITransportadorPut) : IResponseTransportadorPut;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlTransportador) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseTransportadorPut.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TTransportadorDocumentoGet }

constructor TTransportadorDocumentoGet.Create;
begin

end;

destructor TTransportadorDocumentoGet.Destroy;
begin

  inherited;
end;

function TTransportadorDocumentoGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TTransportadorDocumentoGet.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TTransportadorDocumentoGet.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

class function TTransportadorDocumentoGet.new: ITransportadorDocumentoGet;
begin
  result := TTransportadorDocumentoGet.Create;
end;

function TTransportadorDocumentoGet.setDocumento(const value: string): ITransportadorDocumentoGet;
begin
  result := self;
  FDocumento := value;
end;

function TTransportadorDocumentoGet.setEmpresaIdpk(const value: string): ITransportadorDocumentoGet;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TTransportadorDocumentoGet.setFilialIdpk(const value: string): ITransportadorDocumentoGet;
begin
  result := self;
  FFilialIdpk := value;
end;

function TTransportadorDocumentoGet.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ FFilialIdpk);
  if (FDocumento <> '') then
    result := AddHeaderParams(result, 'documento='+ FDocumento);

  if (trim(result) <> '') then
    result := '?'+ result;
end;

{ TTransportadorDelete }

class function TTransportadorDelete.new: ITransportadorDelete;
begin
  result := TTransportadorDelete.Create;
end;

{ TTransportadorPut }

constructor TTransportadorPut.Create;
begin
  FPayload := nil;
end;

destructor TTransportadorPut.Destroy;
begin
  MyFreeAndNil(FPayload);

  inherited;
end;

function TTransportadorPut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TTransportadorPut.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TTransportadorPut.getIdpk: string;
begin
  result := FIdpk;
end;

class function TTransportadorPut.new: ITransportadorPut;
begin
  result := TTransportadorPut.Create;
end;

function TTransportadorPut.setEmpresaIdpk(const value: string): ITransportadorPut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TTransportadorPut.setFilialIdpk(const value: string): ITransportadorPut;
begin
  result := self;
  FFilialIdpk := value;
end;

function TTransportadorPut.setIdpk(const value: string): ITransportadorPut;
begin
  result := self;
  FIdpk := value;
end;

function TTransportadorPut.setPayload(const value: TJSONObject): ITransportadorPut;
begin
  result := self;
  if (value = nil) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TTransportadorPut.setTransportador(const value: ITransportador): ITransportadorPut;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value.ToJson;
end;

function TTransportadorPut.ToJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TTransportadorPut.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ FFilialIdpk);

  if (trim(result) <> '') then
    result := '?'+ result;
  if (FIdpk <> '') then
    result := '/'+ FIdpk + result;
end;

{ TTransportadorPost }

function TTransportadorPost.addTransportador(const value : ITransportador) : ITransportadorPost;
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

class function TTransportadorPost.new: ITransportadorPost;
begin
  result := TTransportadorPost.Create;
end;

{ TTransportador }

constructor TTransportador.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FPessoaIdpk := '';
  FPlaca := '';
  FPlacaUf := '';
  FANTT := '';
  FPessoa := nil;
end;

destructor TTransportador.Destroy;
begin

  inherited;
end;

function TTransportador.getANTT: string;
begin
  result := FANTT;
end;

function TTransportador.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TTransportador.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TTransportador.getIdpk: string;
begin
  result := FIdpk;
end;

function TTransportador.getPessoa: IMercurioPessoa;
begin
  result := FPessoa;
end;

function TTransportador.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TTransportador.getPlaca: string;
begin
  result := FPlaca;
end;

function TTransportador.getPlacaUF: string;
begin
  result := FPlacaUf;
end;

class function TTransportador.new: ITransportador;
begin
  result := TTransportador.Create;
end;

function TTransportador.setANTT(const value: string): ITransportador;
begin
  result := self;
  FANTT := value;
end;

function TTransportador.setEmpresaIdpk(const value: string): ITransportador;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TTransportador.setFilialIdpk(const value: string): ITransportador;
begin
  result := self;
  FFilialIdpk := value;
end;

function TTransportador.setIdpk(const value: string): ITransportador;
begin
  result := self;
  FIdpk := value;
end;

function TTransportador.setPessoa(const value: IMercurioPessoa): ITransportador;
begin
  result := self;
  FPessoa := value;
end;

function TTransportador.setPessoaIdpk(const value: string): ITransportador;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TTransportador.setPlaca(const value: string): ITransportador;
begin
  result := self;
  FPlaca := value;
end;

function TTransportador.setPlacaUF(const value: string): ITransportador;
begin
  result := self;
  FPlacaUf := value;
end;

function TTransportador.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('tra_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('tra_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('tra_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('tra_pessoa_idpk', FPessoaIdpk);
  if (FPlaca <> '') then
    result.AddPair('tra_placa', FPlaca);
  if (FPlacaUf <> '') then
    result.AddPair('tra_placa_uf', FPlacaUf);
  if (FANTT <> '') then
    result.AddPair('tra_antt', FANTT);
  if (assigned(FPessoa)) then
    result.AddPair('pessoa', FPessoa.ToJson);
end;

{ TResponseTransportadorGet }

constructor TResponseTransportadorGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTransportadorGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTransportadorGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTransportadorGet.new(parent: IResponse): IResponseTransportadorGet;
begin
  result := TResponseTransportadorGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTransportadorGet.Obj: TResponseClassTransportadorGet;
begin
  result := FObj;
end;

{ TResponseTransportadorGetDocumentoExiste }

constructor TResponseTransportadorGetDocumentoExiste.Create(pResponse: IHTTPResponse;pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTransportadorGetDocumentoExiste.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTransportadorGetDocumentoExiste.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTransportadorGetDocumentoExiste.new(parent: IResponse): IResponseTransportadorGetDocumentoExiste;
begin
  result := TResponseTransportadorGetDocumentoExiste.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTransportadorGetDocumentoExiste.Obj: TResponseClassTransportadorGetDocumentoExiste;
begin
  result := FObj;
end;

{ TResponseTransportadorPost }

constructor TResponseTransportadorPost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTransportadorPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTransportadorPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTransportadorPost.new(parent: IResponse): IResponseTransportadorPost;
begin
  result := TResponseTransportadorPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTransportadorPost.Obj: TResponseClassTransportadorPost;
begin
  result := FObj;
end;

{ TResponseTransportadorPut }

constructor TResponseTransportadorPut.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTransportadorPut.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTransportadorPut.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTransportadorPut.new(parent: IResponse): IResponseTransportadorPut;
begin
  result := TResponseTransportadorPut.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTransportadorPut.Obj: TResponseClassTransportadorPut;
begin
  result := FObj;
end;

{ TResponseTransportadorDelete }

constructor TResponseTransportadorDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassTransportadorDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseTransportadorDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseTransportadorDelete.new(parent: IResponse): IResponseTransportadorDelete;
begin
  result := TResponseTransportadorDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseTransportadorDelete.Obj: TResponseClassTransportadorDelete;
begin
  result := FObj;
end;

end.
