unit mercurio.api.fornecedor;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.fornecedor.get,
     mercurio.response.fornecedor.getDocumentoExiste, mercurio.response.fornecedor.post,
     mercurio.response.cliente.put, mercurio.response.fornecedor.put,
     mercurio.response.fornecedor.delete;

type
  /// <summary> Fornecedor </summary>
  IFornecedor = interface
    ['{B0E10A19-E880-436B-AA35-7C4143748002}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFornecedor;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedor;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedor;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IFornecedor;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Site de anúncio do fornecedor </summary>
    function setSite(const value : string) : IFornecedor;
    /// <summary> Site de anúncio do fornecedor </summary>
    function getSite : string;
    /// <summary> Banco do fornecedor </summary>
    function setBanco(const value : string) : IFornecedor;
    /// <summary> Banco do fornecedor </summary>
    function getBanco : string;
    /// <summary> Agencia bancária do fornecedor </summary>
    function setAgencia(const value : string) : IFornecedor;
    /// <summary> Agencia bancária do fornecedor </summary>
    function getAgencia : string;
    /// <summary> Conta bancária do fornecedor </summary>
    function setConta(const value : string) : IFornecedor;
    /// <summary> Conta bancária do fornecedor </summary>
    function getConta : string;
    /// <summary> Valor do pedido mínimo do fornecedor </summary>
    function setPedidoMinimo(const value : double) : IFornecedor;
    /// <summary> Valor do pedido mínimo do fornecedor </summary>
    function getPedidoMinimo : double;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : IFornecedor;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Fornecedor </summary>
  TFornecedor = class(TInterfacedObject, IFornecedor)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FSite : string;
    FBanco : string;
    FAgencia : string;
    FConta : string;
    FPedidoMinimo : double;
    FPessoa : IMercurioPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IFornecedor;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFornecedor;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedor;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedor;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IFornecedor;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Site de anúncio do fornecedor </summary>
    function setSite(const value : string) : IFornecedor;
    /// <summary> Site de anúncio do fornecedor </summary>
    function getSite : string;
    /// <summary> Banco do fornecedor </summary>
    function setBanco(const value : string) : IFornecedor;
    /// <summary> Banco do fornecedor </summary>
    function getBanco : string;
    /// <summary> Agencia bancária do fornecedor </summary>
    function setAgencia(const value : string) : IFornecedor;
    /// <summary> Agencia bancária do fornecedor </summary>
    function getAgencia : string;
    /// <summary> Conta bancária do fornecedor </summary>
    function setConta(const value : string) : IFornecedor;
    /// <summary> Conta bancária do fornecedor </summary>
    function getConta : string;
    /// <summary> Valor do pedido mínimo do fornecedor </summary>
    function setPedidoMinimo(const value : double) : IFornecedor;
    /// <summary> Valor do pedido mínimo do fornecedor </summary>
    function getPedidoMinimo : double;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : IFornecedor;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IFornecedorGet = interface(IPayloadGet)
    ['{C7909ABD-EE2B-41BB-BF27-996FB0587149}']
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_fornecedor ou documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : IFornecedorGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_fornecedor ou documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : IFornecedorGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IFornecedorGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TFornecedorGet = class(TPayloadGet, IFornecedorGet)
  private
    FPesquisar : string;
    FNome : string;
    FDocumento : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IFornecedorGet;

    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_fornecedor ou documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : IFornecedorGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_do_fornecedor ou documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : IFornecedorGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IFornecedorGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IFornecedorDocumentoGet = interface
    ['{66F6CA62-9094-419E-833F-E37B3A1F3D83}']
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TFornecedorDocumentoGet = class(TInterfacedObject, IFornecedorDocumentoGet)
  private
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FDocumento : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IFornecedorDocumentoGet;

    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IFornecedorDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IFornecedorPost = interface(IPayloadPost)
    ['{A43B9F09-B752-4D06-B4CC-FFADAC93B1E6}']
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorPost;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorPost;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona um novo fornecedor ao payload via classe </summary>
    function addFornecedor(const value : IFornecedor) : IFornecedorPost;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : IFornecedorPost;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TFornecedorPost = class(TPayloadPost, IFornecedorPost)
  private
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IFornecedorPost;

    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorPost;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorPost;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona um novo fornecedor ao payload via classe </summary>
    function addFornecedor(const value : IFornecedor) : IFornecedorPost;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : IFornecedorPost;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IFornecedorPut = interface(IPayloadPut)
    ['{02E527E6-6D17-4180-825D-5E42D0E9CDC1}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFornecedorPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorPut;
    /// <summary> Adiciona um novo cliente ao payload via classe </summary>
    function setFornecedor(const value : IFornecedor) : IFornecedorPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : IFornecedorPut;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TFornecedorPut = class(TPayloadPut, IFornecedorPut)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IFornecedorPut;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IFornecedorPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IFornecedorPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IFornecedorPut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona um novo cliente ao payload via classe </summary>
    function setFornecedor(const value : IFornecedor) : IFornecedorPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : IFornecedorPut;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IFornecedorDelete = interface(IPayloadDelete)
    ['{850871D0-8045-408C-9FA1-4A301F278D09}']
  end;

  TFornecedorDelete = class(TPayloadDelete, IFornecedorDelete)
  public
    class function new : IFornecedorDelete;
  end;

  IResponseFornecedorGet = interface(IResponse)
    ['{237E6DDF-B169-4154-A1C2-4F72EA8003D0}']
    function Obj : TResponseClassFornecedorGet;
  end;
  TResponseFornecedorGet = class(TResponse, IResponseFornecedorGet)
  private
    FObj : TResponseClassFornecedorGet;
  public
    class function new(parent : IResponse) : IResponseFornecedorGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFornecedorGet;
  end;

  IResponseFornecedorGetDocumentoExiste = interface(IResponse)
    ['{3114A69A-3121-497D-A2B7-3D85294FDD3C}']
    function Obj : TResponseClassFornecedorGetDocumentoExiste;
  end;
  TResponseFornecedorGetDocumentoExiste = class(TResponse, IResponseFornecedorGetDocumentoExiste)
  private
    FObj : TResponseClassFornecedorGetDocumentoExiste;
  public
    class function new(parent : IResponse) : IResponseFornecedorGetDocumentoExiste;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFornecedorGetDocumentoExiste;
  end;

  IResponseFornecedorPost = interface(IResponse)
    ['{3114A69A-3121-497D-A2B7-3D85294FDD3C}']
    function Obj : TResponseClassFornecedorPost;
  end;
  TResponseFornecedorPost = class(TResponse, IResponseFornecedorPost)
  private
    FObj : TResponseClassFornecedorPost;
  public
    class function new(parent : IResponse) : IResponseFornecedorPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFornecedorPost;
  end;

  IResponseFornecedorPut = interface(IResponse)
    ['{E253B0F8-323A-47ED-943E-A2EF591C0FD6}']
    function Obj : TResponseClassFornecedorPut;
  end;
  TResponseFornecedorPut = class(TResponse, IResponseFornecedorPut)
  private
    FObj : TResponseClassFornecedorPut;
  public
    class function new(parent : IResponse) : IResponseFornecedorPut;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFornecedorPut;
  end;

  IResponseFornecedorDelete = interface(IResponse)
    ['{17D661BD-A4B3-4617-84D9-D31868B8C379}']
    function Obj : TResponseClassFornecedorDelete;
  end;
  TResponseFornecedorDelete = class(TResponse, IResponseFornecedorDelete)
  private
    FObj : TResponseClassFornecedorDelete;
  public
    class function new(parent : IResponse) : IResponseFornecedorDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassFornecedorDelete;
  end;

  TMercurioFornecedor = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais fornecedores na base da empresa </summary>
    function Get(var params : IFornecedorGet) : IResponseFornecedorGet;
    /// <summary> Consulta se já existe algum fornecedor cadastrado com o mesmo documento na empresa </summary>
    function GetDocumentoExiste(var params : IFornecedorDocumentoGet) : IResponseFornecedorGetDocumentoExiste;
    /// <summary> Insere um ou mais fornecedores </summary>
    function Post(var params : IFornecedorPost) : IResponseFornecedorPost;
    /// <summary> Altera os dados cadastrais de um fornecedor </summary>
    function Put(var params : IFornecedorPut) : IResponseFornecedorPut;
    /// <summary> Apaga um fornecedor </summary>
    function Delete(var params : IFornecedorDelete) : IResponseFornecedorDelete;
  end;

implementation

uses
  System.SysUtils, mercurio.api.consts, mercurio.api.functions;

{ TFornecedorGet }

constructor TFornecedorGet.Create;
begin

end;

destructor TFornecedorGet.Destroy;
begin

  inherited;
end;

function TFornecedorGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TFornecedorGet.getNome: string;
begin
  result := FNome;
end;

function TFornecedorGet.getPesquisar: string;
begin
  result := FPesquisar;
end;

class function TFornecedorGet.new: IFornecedorGet;
begin
  result := TFornecedorGet.Create;
end;

function TFornecedorGet.setDocumento(const value: string): IFornecedorGet;
begin
  result := self;
  FDocumento := value;
end;

function TFornecedorGet.setNome(const value: string): IFornecedorGet;
begin
  result := self;
  FNome := value;
end;

function TFornecedorGet.setPesquisar(const value: string): IFornecedorGet;
begin
  result := self;
  FPesquisar := value;
end;

function TFornecedorGet.toParams: string;
begin
  result := inherited;
  if (FPesquisar <> '') then
    result := AddParam(result, 'pesquisar='+ FPesquisar);
  if (FNome <> '') then
    result := AddParam(result, 'nome='+ FNome);
  if (FDocumento <> '') then
    result := AddParam(result, 'documento='+ FDocumento);
end;

{ TMercurioFornecedor }

function TMercurioFornecedor.Delete(var params : IFornecedorDelete) : IResponseFornecedorDelete;
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
    url := getUrl(Ambiente, urlFornecedor) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFornecedorDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFornecedor.Get(var params : IFornecedorGet) : IResponseFornecedorGet;
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
    url := getUrl(Ambiente, urlFornecedor) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFornecedorGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFornecedor.GetDocumentoExiste(var params : IFornecedorDocumentoGet) : IResponseFornecedorGetDocumentoExiste;
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
    url := getUrl(Ambiente, urlFornecedorExiste) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFornecedorGetDocumentoExiste.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioFornecedor.Post(var params : IFornecedorPost) : IResponseFornecedorPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlFornecedor) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFornecedorPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioFornecedor.Put(var params : IFornecedorPut) : IResponseFornecedorPut;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlFornecedor) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseFornecedorPut.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TFornecedorDocumentoGet }

constructor TFornecedorDocumentoGet.Create;
begin

end;

destructor TFornecedorDocumentoGet.Destroy;
begin

  inherited;
end;

function TFornecedorDocumentoGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TFornecedorDocumentoGet.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TFornecedorDocumentoGet.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

class function TFornecedorDocumentoGet.new: IFornecedorDocumentoGet;
begin
  result := TFornecedorDocumentoGet.Create;
end;

function TFornecedorDocumentoGet.setDocumento(const value: string): IFornecedorDocumentoGet;
begin
  result := self;
  FDocumento := value;
end;

function TFornecedorDocumentoGet.setEmpresaIdpk(const value: string): IFornecedorDocumentoGet;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TFornecedorDocumentoGet.setFilialIdpk(const value: string): IFornecedorDocumentoGet;
begin
  result := self;
  FFilialIdpk := value;
end;

function TFornecedorDocumentoGet.toParams: string;
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

{ TFornecedorDelete }

class function TFornecedorDelete.new: IFornecedorDelete;
begin
  result := TFornecedorDelete.Create;
end;

{ TFornecedorPost }

function TFornecedorPost.addFornecedor(const value: IFornecedor): IFornecedorPost;
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
  FPayload.TryGetValue<TJSONArray>('registros', arr);
  if (arr = nil) then
    exit;

  arr.Add(obj);
end;

constructor TFornecedorPost.Create;
var arr: TJSONArray;
begin
  FPayload := TJSONObject.Create;
  arr := TJSONArray.Create;
  FPayload.AddPair('registros', arr);
end;

destructor TFornecedorPost.Destroy;
begin
  MyFreeAndNil(FPayload);

  inherited;
end;

function TFornecedorPost.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TFornecedorPost.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

class function TFornecedorPost.new: IFornecedorPost;
begin
  result := TFornecedorPost.Create;
end;

function TFornecedorPost.setEmpresaIdpk(const value: string): IFornecedorPost;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TFornecedorPost.setFilialIdpk(const value: string): IFornecedorPost;
begin
  result := self;
  FFilialIdpk := value;
end;

function TFornecedorPost.setPayload(const value: TJSONObject): IFornecedorPost;
begin
  result := self;
  if (value = nil) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TFornecedorPost.ToJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TFornecedorPost.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ FFilialIdpk);

  if (trim(result) <> '') then
    result := '?'+ result;
end;

{ TFornecedorPut }

constructor TFornecedorPut.Create;
begin
  FPayload := nil;
end;

destructor TFornecedorPut.Destroy;
begin
  MyFreeAndNil(FPayload);

  inherited;
end;

function TFornecedorPut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TFornecedorPut.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TFornecedorPut.getIdpk: string;
begin
  result := FIdpk;
end;

class function TFornecedorPut.new: IFornecedorPut;
begin
  result := TFornecedorPut.Create;
end;

function TFornecedorPut.setEmpresaIdpk(const value : string) : IFornecedorPut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TFornecedorPut.setFilialIdpk(const value : string) : IFornecedorPut;
begin
  result := self;
  FFilialIdpk := value;
end;

function TFornecedorPut.setFornecedor(const value: IFornecedor): IFornecedorPut;
begin
  result := self;
  if not (Assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value.ToJson;
end;

function TFornecedorPut.setIdpk(const value: string): IFornecedorPut;
begin
  result := self;
  FIdpk := value;
end;

function TFornecedorPut.setPayload(const value : TJSONObject) : IFornecedorPut;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TFornecedorPut.ToJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TFornecedorPut.toParams: string;
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

{ TFornecedor }

constructor TFornecedor.Create;
begin
  FPedidoMinimo := 0;
end;

destructor TFornecedor.Destroy;
begin

  inherited;
end;

function TFornecedor.getAgencia: string;
begin
  result := FAgencia;
end;

function TFornecedor.getBanco: string;
begin
  result := FBanco;
end;

function TFornecedor.getConta: string;
begin
  result := FConta;
end;

function TFornecedor.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TFornecedor.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TFornecedor.getIdpk: string;
begin
  result := FIdpk;
end;

function TFornecedor.getPedidoMinimo: double;
begin
  result := FPedidoMinimo;
end;

function TFornecedor.getPessoa: IMercurioPessoa;
begin
  result := FPessoa;
end;

function TFornecedor.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TFornecedor.getSite: string;
begin
  result := FSite;
end;

class function TFornecedor.new: IFornecedor;
begin
  result := TFornecedor.Create;
end;

function TFornecedor.setAgencia(const value: string): IFornecedor;
begin
  result := self;
  FAgencia := value;
end;

function TFornecedor.setBanco(const value: string): IFornecedor;
begin
  result := self;
  FBanco := value;
end;

function TFornecedor.setConta(const value: string): IFornecedor;
begin
  result := self;
  FConta := value;
end;

function TFornecedor.setEmpresaIdpk(const value: string): IFornecedor;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TFornecedor.setFilialIdpk(const value: string): IFornecedor;
begin
  result := self;
  FFilialIdpk := value;
end;

function TFornecedor.setIdpk(const value: string): IFornecedor;
begin
  result := self;
  FIdpk := value;
end;

function TFornecedor.setPedidoMinimo(const value: double): IFornecedor;
begin
  result := self;
  FPedidoMinimo := value;
end;

function TFornecedor.setPessoa(const value : IMercurioPessoa) : IFornecedor;
begin
  result := self;
  FPessoa := value;
end;

function TFornecedor.setPessoaIdpk(const value: string): IFornecedor;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TFornecedor.setSite(const value: string): IFornecedor;
begin
  result := self;
  FSite := value;
end;

function TFornecedor.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;
  if (FIdpk <> '') then
    result.AddPair('for_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('for_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('for_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('for_pessoa_idpk', FPessoaIdpk);
  if (FSite <> '') then
    result.AddPair('for_site', FSite);
  if (FBanco <> '') then
    result.AddPair('for_banco', FBanco);
  if (FAgencia <> '') then
    result.AddPair('for_agencia', FAgencia);
  if (FConta <> '') then
    result.AddPair('for_conta', FConta);

  result.AddPair('for_pedido_minimo', TJSONNumber.Create(FPedidoMinimo));
  if (assigned(FPessoa)) then
    result.AddPair('pessoa', FPessoa.ToJson);
end;

{ TResponseFornecedorGet }

constructor TResponseFornecedorGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFornecedorGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFornecedorGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFornecedorGet.new(parent: IResponse): IResponseFornecedorGet;
begin
  result := TResponseFornecedorGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFornecedorGet.Obj: TResponseClassFornecedorGet;
begin
  result := FObj;
end;

{ TResponseFornecedorGetDocumentoExiste }

constructor TResponseFornecedorGetDocumentoExiste.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFornecedorGetDocumentoExiste.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFornecedorGetDocumentoExiste.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFornecedorGetDocumentoExiste.new(parent: IResponse): IResponseFornecedorGetDocumentoExiste;
begin
  result := TResponseFornecedorGetDocumentoExiste.Create(parent.GetResponse, PARENT.GetResponseData);
end;

function TResponseFornecedorGetDocumentoExiste.Obj: TResponseClassFornecedorGetDocumentoExiste;
begin
  result := FObj;
end;

{ TResponseFornecedorPost }

constructor TResponseFornecedorPost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFornecedorPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFornecedorPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFornecedorPost.new(parent: IResponse): IResponseFornecedorPost;
begin
  result := TResponseFornecedorPost.Create(parent.GetResponse, PARENT.GetResponseData);
end;

function TResponseFornecedorPost.Obj: TResponseClassFornecedorPost;
begin
  result := FObj;
end;

{ TResponseFornecedorPut }

constructor TResponseFornecedorPut.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFornecedorPut.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFornecedorPut.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFornecedorPut.new(parent: IResponse): IResponseFornecedorPut;
begin
  result := TResponseFornecedorPut.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFornecedorPut.Obj: TResponseClassFornecedorPut;
begin
  result := FObj;
end;

{ TResponseFornecedorDelete }

constructor TResponseFornecedorDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassFornecedorDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseFornecedorDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseFornecedorDelete.new(parent: IResponse): IResponseFornecedorDelete;
begin
  result := TResponseFornecedorDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseFornecedorDelete.Obj: TResponseClassFornecedorDelete;
begin
  result := FObj;
end;

end.

