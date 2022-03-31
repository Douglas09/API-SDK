unit mercurio.api.empresa;

interface

uses mercurio.api.parent, json, mercurio.response.empresa.get, mercurio.response.empresa.post,
  mercurio.response.empresa.put, mercurio.response.empresa.delete,
  mercurio.response.empresa.putLogotipo, mercurio.response.empresa.putCertificado;

type
  IEmpresaGet = interface(IPayloadGet)
    ['{2EF428FD-A316-4252-A017-D251272D4EE5}']
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TEmpresaGet = class(TPayloadGet, IEmpresaGet)
  public
    class function new : IEmpresaGet;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IEmpresaUsuario = interface
    ['{E93F5E1E-B13D-4820-AFB7-8D5AF0AD5749}']
    /// <summary> Nome do usuário cadastrado/vinculado com a empresa </summary>
    function setNome(const value : string) : IEmpresaUsuario;
    /// <summary> Nome do usuário cadastrado/vinculado com a empresa </summary>
    function getNome : string;
    /// <summary> Email a ser utilizado pelo usuário do sistema </summary>
    function setEmail(const value : string) : IEmpresaUsuario;
    /// <summary> Email a ser utilizado pelo usuário do sistema </summary>
    function getEmail : string;
    /// <summary> Senha a ser utilizada pelo usuário do sistema </summary>
    function setSenha(const value : string) : IEmpresaUsuario;
    /// <summary> Senha a ser utilizada pelo usuário do sistema </summary>
    function getSenha : string;

    /// <summary> Gera o payload da estrutura do usuário vinculado com a empresa </summary>
    function toJson : TJSONObject;
  end;

  TEmpresaUsuario = class(TInterfacedObject, IEmpresaUsuario)
  private
    FNome : string;
    FEmail : string;
    FSenha : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IEmpresaUsuario;

    /// <summary> Nome do usuário cadastrado/vinculado com a empresa </summary>
    function setNome(const value : string) : IEmpresaUsuario;
    /// <summary> Nome do usuário cadastrado/vinculado com a empresa </summary>
    function getNome : string;
    /// <summary> Email a ser utilizado pelo usuário do sistema </summary>
    function setEmail(const value : string) : IEmpresaUsuario;
    /// <summary> Email a ser utilizado pelo usuário do sistema </summary>
    function getEmail : string;
    /// <summary> Senha a ser utilizada pelo usuário do sistema </summary>
    function setSenha(const value : string) : IEmpresaUsuario;
    /// <summary> Senha a ser utilizada pelo usuário do sistema </summary>
    function getSenha : string;

    /// <summary> Gera o payload da estrutura do usuário vinculado com a empresa </summary>
    function toJson : TJSONObject;
  end;

  IEmpresaPost = interface
    ['{994FAD35-9D88-4E64-942A-C178041C38AA}']
    /// <summary> Adiciona um novo usuário para vincular com o cadastro da nova empresa </summary>
    function AddUsuario(const value : IEmpresaUsuario) : IEmpresaPost;
    /// <summary> Captura a lista de usuários que serão vinculados com a nova empresa </summary>
    function getUsuarios : TJSONArray;

    /// <summary> Código idpk do sistema utilizado </summary>
    function setSistemaIdpk(const value : string) : IEmpresaPost;
    /// <summary> Código idpk do sistema utilizado </summary>
    function getSistemaIdpk : string;
    /// <summary> Código idpk do ramo de atividade da empresa </summary>
    function setRamoAtividadeIdpk(const value : string) : IEmpresaPost;
    /// <summary> Código idpk do ramo de atividade da empresa </summary>
    function getRamoAtividadeIdpk : string;
    /// <summary>
    ///  Descrição de como esta empresa foi captada.
    ///  ex: | Anúncio na internet | Conteúdo Educacional | Indicação de um amigo | Busca na internet | ... |
    /// </summary>
    function setCaptacao(const value : string) : IEmpresaPost;
    /// <summary>
    ///  Descrição de como esta empresa foi captada.
    ///  ex: | Anúncio na internet | Conteúdo Educacional | Indicação de um amigo | Busca na internet | ... |
    /// </summary>
    function getCaptacao : string;
    /// <summary> Chave única para cada nova empresa cadastrada. Não pode ser enviada em branco </summary>
    function setChaveCadastro(const value : string) : IEmpresaPost;
    /// <summary> Chave única para cada nova empresa cadastrada. Não pode ser enviada em branco </summary>
    function getChaveCadastro : string;
    /// <summary> Ao utilizar este metodo, todos os demais campos são desconsiderados e somente o obj recebido aqui irá no payload </summary>
    function setPayload(const value : TJSONObject) : IEmpresaPost;
    /// <summary> Retorna o payload que será enviado para a api </summary>
    function toJson : TJSONValue;
  end;

  TEmpresaPost = class(TInterfacedObject, IEmpresaPost)
  private
    FUsuarios : TJSONArray;
    FSistemaIdpk : string;
    FRamoAtividadeIdpk : string;
    FCaptacao : string;
    FChaveCadastro : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IEmpresaPost;

    /// <summary> Adiciona um novo usuário para vincular com o cadastro da nova empresa </summary>
    function AddUsuario(const value : IEmpresaUsuario) : IEmpresaPost;
    /// <summary> Captura a lista de usuários que serão vinculados com a nova empresa </summary>
    function getUsuarios : TJSONArray;

    /// <summary> Código idpk do sistema utilizado </summary>
    function setSistemaIdpk(const value : string) : IEmpresaPost;
    /// <summary> Código idpk do sistema utilizado </summary>
    function getSistemaIdpk : string;
    /// <summary> Código idpk do ramo de atividade da empresa </summary>
    function setRamoAtividadeIdpk(const value : string) : IEmpresaPost;
    /// <summary> Código idpk do ramo de atividade da empresa </summary>
    function getRamoAtividadeIdpk : string;
    /// <summary>
    ///  Descrição de como esta empresa foi captada.
    ///  ex: | Anúncio na internet | Conteúdo Educacional | Indicação de um amigo | Busca na internet | ... |
    /// </summary>
    function setCaptacao(const value : string) : IEmpresaPost;
    /// <summary>
    ///  Descrição de como esta empresa foi captada.
    ///  ex: | Anúncio na internet | Conteúdo Educacional | Indicação de um amigo | Busca na internet | ... |
    /// </summary>
    function getCaptacao : string;
    /// <summary> Chave única para cada nova empresa cadastrada. Não pode ser enviada em branco </summary>
    function setChaveCadastro(const value : string) : IEmpresaPost;
    /// <summary> Chave única para cada nova empresa cadastrada. Não pode ser enviada em branco </summary>
    function getChaveCadastro : string;
    /// <summary> Ao utilizar este metodo, todos os demais campos são desconsiderados e somente o obj recebido aqui irá no payload </summary>
    function setPayload(const value : TJSONObject) : IEmpresaPost;
    /// <summary> Retorna o payload que será enviado para a api </summary>
    function toJson : TJSONValue;
  end;

  IEmpresaPut = interface
    ['{1EEF8ACD-0E69-408F-867C-8F1A7919031D}']
    /// <summary> Código único da empresa que está sendo alterada </summary>
    function setEmpresaIdpk(const value : string) : IEmpresaPut;
    /// <summary> Código único da empresa que está sendo alterada </summary>
    function getEmpresaIdpk : string;
    /// <summary> Ao utilizar este metodo, todos os demais campos são desconsiderados e somente o obj recebido aqui irá no payload </summary>
    function setPayload(const value : TJSONObject) : IEmpresaPut;
    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Retorna o payload que será enviado para a api </summary>
    function toJson : TJSONValue;
  end;

  TEmpresaPut = class(TInterfacedObject, IEmpresaPut)
  private
    FEmpresaIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IEmpresaPut;

    /// <summary> Código único da empresa que está sendo alterada </summary>
    function setEmpresaIdpk(const value : string) : IEmpresaPut;
    /// <summary> Código único da empresa que está sendo alterada </summary>
    function getEmpresaIdpk : string;
    /// <summary> Ao utilizar este metodo, todos os demais campos são desconsiderados e somente o obj recebido aqui irá no payload </summary>
    function setPayload(const value : TJSONObject) : IEmpresaPut;
    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Retorna o payload que será enviado para a api </summary>
    function toJson : TJSONValue;
  end;

  IEmpresaLogotipo = interface(IPayloadPut)
    ['{BE5E8DA8-3CAF-49DA-8AB4-55E5CC2E5C1F}']
    /// <summary> Carrega a imagem a partir de um caminho físico de dentro do dispositivo </summary>
    function setImagem(const value : string) : IEmpresaLogotipo; overload;
    /// <summary> Carrega a imagem em base64 </summary>
    function setImagem(const fileName, fileBase64 : string) : IEmpresaLogotipo; overload;
    /// <summary> Retorna o nome do arquivo </summary>
    function getImagemNome : string;
    /// <summary> Retorna o arquivo em base64 </summary>
    function getImagemBase64 : string;

    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue;
  end;

  TEmpresaLogotipo = class(TPayloadPut, IEmpresaLogotipo)
  private
    FImagemNome : string;
    FImagemBase64 : string;
  public
    class function new : IEmpresaLogotipo;

    /// <summary> Carrega a imagem a partir de um caminho físico de dentro do dispositivo </summary>
    function setImagem(const value : string) : IEmpresaLogotipo; overload;
    /// <summary> Carrega a imagem em base64 </summary>
    function setImagem(const fileName, fileBase64 : string) : IEmpresaLogotipo; overload;
    /// <summary> Retorna o nome do arquivo </summary>
    function getImagemNome : string;
    /// <summary> Retorna o arquivo em base64 </summary>
    function getImagemBase64 : string;

    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue; override;
  end;

  IEmpresaCertificado = interface(IPayloadPut)
    ['{B3FCF966-1A30-44D2-BDFB-A746DEFF9996}']
    /// <summary> Carrega o certificado digital a partir de um caminho físico de dentro do dispositivo </summary>
    function setCertificado(const value : string) : IEmpresaCertificado; overload;
    /// <summary> Carrega o certificado digital em base64 </summary>
    function setCertificado(const fileName, fileBase64 : string) : IEmpresaCertificado; overload;
    /// <summary> Retorna o nome do arquivo </summary>
    function getCertificadoNome : string;
    /// <summary> Retorna o arquivo em base64 </summary>
    function getCertificadoBase64 : string;
    /// <summary> Retorna a senha do certificado digital </summary>
    function setCertificadoSenha(const value : string) : IEmpresaCertificado;
    /// <summary> Retorna a senha do certificado digital </summary>
    function getCertificadoSenha : string;

    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue;
  end;

  TEmpresaCertificado = class(TPayloadPut, IEmpresaCertificado)
  private
    FNome : string;
    FSenha : string;
    FFileBase64 : string;
  public
    class function new : IEmpresaCertificado;

    /// <summary> Carrega o certificado digital a partir de um caminho físico de dentro do dispositivo </summary>
    function setCertificado(const value : string) : IEmpresaCertificado; overload;
    /// <summary> Carrega o certificado digital em base64 </summary>
    function setCertificado(const fileName, fileBase64 : string) : IEmpresaCertificado; overload;
    /// <summary> Retorna o nome do arquivo </summary>
    function getCertificadoNome : string;
    /// <summary> Retorna o arquivo em base64 </summary>
    function getCertificadoBase64 : string;
    /// <summary> Retorna a senha do certificado digital </summary>
    function setCertificadoSenha(const value : string) : IEmpresaCertificado;
    /// <summary> Retorna a senha do certificado digital </summary>
    function getCertificadoSenha : string;
    /// <summary> Monta os parâmetros para a url </summary>
    function toParams : string;
    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue; override;
  end;

  IResponseEmpresaGet = interface(IResponse)
    ['{BFA0C358-9C7D-42FC-8E3F-D63D79DEED0D}']
    function Obj : TResponseClassEmpresaGet;
  end;
  TResponseEmpresaGet = class(TResponse, IResponseEmpresaGet)
  private
    FObj : TResponseClassEmpresaGet;
  public
    class function new(parent : IResponse) : IResponseEmpresaGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaGet;
  end;

  IResponseEmpresaPost = interface(IResponse)
    ['{F0085D0C-882A-424A-BEAD-B2055234310E}']
    function Obj : TResponseClassEmpresaPost;
  end;
  TResponseEmpresaPost = class(TResponse, IResponseEmpresaPost)
  private
    FObj : TResponseClassEmpresaPost;
  public
    class function new(parent : IResponse) : IResponseEmpresaPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaPost;
  end;

  IResponseEmpresaPut = interface(IResponse)
    ['{F46CE929-B7BE-4545-8B02-95B0756D5160}']
    function Obj : TResponseClassEmpresaPut;
  end;
  TResponseEmpresaPut = class(TResponse, IResponseEmpresaPut)
  private
    FObj : TResponseClassEmpresaPut;
  public
    class function new(parent : IResponse) : IResponseEmpresaPut;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaPut;
  end;

  IResponseEmpresaDelete = interface(IResponse)
    ['{AEE754E2-D661-4507-A42B-71EB41E660B6}']
    function Obj : TResponseClassEmpresaDelete;
  end;
  TResponseEmpresaDelete = class(TResponse, IResponseEmpresaDelete)
  private
    FObj : TResponseClassEmpresaDelete;
  public
    class function new(parent : IResponse) : IResponseEmpresaDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaDelete;
  end;

  IResponseEmpresaPutLogotipo = interface(IResponse)
    ['{B65BF507-E142-4BD8-9CEE-AEC8257B710E}']
    function Obj : TResponseClassEmpresaPutLogotipo;
  end;
  TResponseEmpresaPutLogotipo = class(TResponse, IResponseEmpresaPutLogotipo)
  private
    FObj : TResponseClassEmpresaPutLogotipo;
  public
    class function new(parent : IResponse) : IResponseEmpresaPutLogotipo;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaPutLogotipo;
  end;

  IResponseEmpresaPutCertificado = interface(IResponse)
    ['{4D6209FB-D908-438B-A34B-62739ECE1061}']
    function Obj : TResponseClassEmpresaPutCertificado;
  end;
  TResponseEmpresaPutCertificado = class(TResponse, IResponseEmpresaPutCertificado)
  private
    FObj : TResponseClassEmpresaPutCertificado;
  public
    class function new(parent : IResponse) : IResponseEmpresaPutCertificado;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEmpresaPutCertificado;
  end;

  TMercurioEmpresa = class(TMercurioPai)
  public
    /// <summary> Captura os dados de uma empresa conforme os filtros informados </summary>
    function Get(var params : IEmpresaGet) : IResponseEmpresaGet;
    /// <summary> Adiciona uma nova empresa dentro do sistema </summary>
    function Post(var params : IEmpresaPost) : IResponseEmpresaPost;
    /// <summary> Atualiza apenas as informações enviadas no payload da empresa informada </summary>
    function Put(var params : IEmpresaPut) : IResponseEmpresaPut;
    /// <summary> Atualiza o logotipo da empresa </summary>
    function PutLogotipo(var params : IEmpresaLogotipo) : IResponseEmpresaPutLogotipo;
    /// <summary> Atualiza o certificado digital da empresa </summary>
    function PutCertificado(var params : IEmpresaCertificado) : IResponseEmpresaPutCertificado;
    /// <summary> Excluir o cadastro de uma empresa e todas as suas dependências </summary>
    function Delete(const empresaIdpk : string) : IResponseEmpresaDelete;
  end;

implementation

{ TEmpresaGet }

uses mercurio.api.consts, System.SysUtils, mercurio.api.functions, mercurio.api.base64;

class function TEmpresaGet.new: IEmpresaGet;
begin
  result := TEmpresaGet.Create;
end;

function TEmpresaGet.toParams: string;
begin
  result := inherited;
end;

{ TMercurioEmpresa }

function TMercurioEmpresa.Delete(const empresaIdpk : string) : IResponseEmpresaDelete;
var url : string;
begin
  result := nil;
  if (trim(empresaIdpk) = '') then
  begin
    OnInternalError(self, 'Código da empresa não informado.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlEmpresa) +'/'+ empresaIdpk;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEmpresaDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioEmpresa.Get(var params : IEmpresaGet) : IResponseEmpresaGet;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlEmpresa) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEmpresaGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioEmpresa.Post(var params : IEmpresaPost) : IResponseEmpresaPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (params.getUsuarios = nil) or (params.getUsuarios.Count <= 0) then
  begin
    OnInternalError(self, 'Atenção, para cadastrar uma nova empresa, você precisa informar um ou mais usuários.');
    exit;
  end;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlEmpresa);
    result := TResponseEmpresaPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioEmpresa.Put(var params : IEmpresaPut) : IResponseEmpresaPut;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (params.getEmpresaIdpk = '') then
  begin
    OnInternalError(self, 'Código único da empresa não informado.');
    exit;
  end;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlEmpresa) +'/'+ params.getEmpresaIdpk +'/'+ params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEmpresaPut.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioEmpresa.PutCertificado(var params : IEmpresaCertificado) : IResponseEmpresaPutCertificado;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (params.getIdpk = '') then
  begin
    OnInternalError(self, 'Código único da empresa não informado.');
    exit;
  end else if (trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlEmpresaCertificado) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEmpresaPutCertificado.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioEmpresa.PutLogotipo(var params : IEmpresaLogotipo) : IResponseEmpresaPutLogotipo;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (params.getIdpk = '') then
  begin
    OnInternalError(self, 'Código único da empresa não informado.');
    exit;
  end else if (trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlEmpresaLogotipo) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEmpresaPutLogotipo.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TEmpresaLogotipo }

function TEmpresaLogotipo.getImagemBase64: string;
begin
  result := FImagemBase64;
end;

function TEmpresaLogotipo.getImagemNome: string;
begin
  result := FImagemNome;
end;

class function TEmpresaLogotipo.new: IEmpresaLogotipo;
begin
  result := TEmpresaLogotipo.Create;
end;

function TEmpresaLogotipo.setImagem(const value: string): IEmpresaLogotipo;
begin
  result := self;
  if (fileExists(value)) then //url
  begin
    FImagemNome := ExtractFileName(value);
    FImagemBase64 := FileToBase64(value);
  end;
end;

function TEmpresaLogotipo.setImagem(const fileName, fileBase64: string): IEmpresaLogotipo;
begin
  result := self;
  FImagemNome := fileName;
  FImagemBase64 := fileBase64;
end;

function TEmpresaLogotipo.toJson: TJSONValue;
var obj : TJSONObject;
begin
  obj := TJSONObject.Create;
  obj.AddPair('imagem_nome', FImagemNome);
  obj.AddPair('imagem_base64', FImagemBase64);
  result := obj;
end;

function TEmpresaLogotipo.toParams: string;
begin
  result := '';
  if (self.getIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ self.getIdpk)
  else if (self.getEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ self.getEmpresaIdpk);
  if (self.getFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ self.getFilialIdpk);
  result := '?'+ result;
end;

{ TEmpresaCertificado }

function TEmpresaCertificado.getCertificadoBase64: string;
begin
  result := FFileBase64;
end;

function TEmpresaCertificado.getCertificadoNome: string;
begin
  result := FNome;
end;

function TEmpresaCertificado.getCertificadoSenha: string;
begin
  result := FSenha;
end;

class function TEmpresaCertificado.new: IEmpresaCertificado;
begin
  result := TEmpresaCertificado.Create;
end;

function TEmpresaCertificado.setCertificado(const value: string): IEmpresaCertificado;
begin
  result := self;
  if (FileExists(value)) then
  begin
    FFileBase64 := FileToBase64(value);
    FNome := ExtractFileName(value);
  end;
end;

function TEmpresaCertificado.setCertificado(const fileName, fileBase64: string): IEmpresaCertificado;
begin
  result := self;
  FNome := fileName;
  FFileBase64 := fileBase64;
end;

function TEmpresaCertificado.setCertificadoSenha(const value: string): IEmpresaCertificado;
begin
  result := self;
  FSenha := value;
end;

function TEmpresaCertificado.toJson: TJSONValue;
var obj : TJSONObject;
begin
  obj := TJSONObject.Create;
  obj.AddPair('certificado_nome', FNome);
  obj.AddPair('certificado_senha', FSenha);
  obj.AddPair('certificado_base64', FFileBase64);

  result := obj;
end;

function TEmpresaCertificado.toParams: string;
begin
  result := '';
  if (self.getIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ self.getIdpk)
  else if (self.getEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ self.getEmpresaIdpk);
  if (self.getFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ self.getFilialIdpk);
  result := '?'+ result;
end;

{ TEmpresaUsuario }

constructor TEmpresaUsuario.Create;
begin

end;

destructor TEmpresaUsuario.Destroy;
begin

  inherited;
end;

function TEmpresaUsuario.getEmail: string;
begin
  result := FEmail;
end;

function TEmpresaUsuario.getNome: string;
begin
  result := FNome;
end;

function TEmpresaUsuario.getSenha: string;
begin
  result := FSenha;
end;

class function TEmpresaUsuario.new: IEmpresaUsuario;
begin
  result := TEmpresaUsuario.Create;
end;

function TEmpresaUsuario.setEmail(const value: string): IEmpresaUsuario;
begin
  result := self;
  FEmail := value;
end;

function TEmpresaUsuario.setNome(const value: string): IEmpresaUsuario;
begin
  result := self;
  FNome := value;
end;

function TEmpresaUsuario.setSenha(const value: string): IEmpresaUsuario;
begin
  result := self;
  FSenha := value;
end;

function TEmpresaUsuario.toJson: TJSONObject;
begin
  result := TJSONObject.Create;
  result.AddPair('usu_nome', FNome);
  result.AddPair('usu_email', FEmail);
  result.AddPair('usu_senha', FSenha);
end;

{ TEmpresaPost }

function TEmpresaPost.AddUsuario(const value: IEmpresaUsuario): IEmpresaPost;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  FUsuarios.Add(value.toJson);
end;

constructor TEmpresaPost.Create;
begin
  FUsuarios := TJSONArray.Create;
  FPayload := nil;
end;

destructor TEmpresaPost.Destroy;
begin
  MyFreeAndNil(FUsuarios);

  inherited;
end;

function TEmpresaPost.getCaptacao: string;
begin
  result := FCaptacao;
end;

function TEmpresaPost.getChaveCadastro: string;
begin
  result := FChaveCadastro;
end;

function TEmpresaPost.getRamoAtividadeIdpk: string;
begin
  result := FRamoAtividadeIdpk;
end;

function TEmpresaPost.getSistemaIdpk: string;
begin
  result := FSistemaIdpk;
end;

function TEmpresaPost.getUsuarios: TJSONArray;
begin
  result := FUsuarios;
end;

class function TEmpresaPost.new: IEmpresaPost;
begin
  result := TEmpresaPost.Create;
end;

function TEmpresaPost.setCaptacao(const value: string): IEmpresaPost;
begin
  result := self;
  FCaptacao := value;
end;

function TEmpresaPost.setChaveCadastro(const value: string): IEmpresaPost;
begin
  result := self;
  FChaveCadastro := value;
end;

function TEmpresaPost.setPayload(const value : TJSONObject) : IEmpresaPost;
var arr : TJSONArray;
    erro : string;
begin
  result := self;
  MyFreeAndNil(FPayload);

  FPayload := value;
  if (FPayload = nil) then
    exit;

  FPayload.TryGetValue<string>('emp_sistema_idpk', FSistemaIdpk);
  FPayload.TryGetValue<string>('emp_ramoatividade_idpk', FRamoAtividadeIdpk);
  FPayload.TryGetValue<string>('emp_captacao', FCaptacao);
  FPayload.TryGetValue<string>('emp_chave_cadastro', FChaveCadastro);

  try
    FPayload.TryGetValue<TJSONArray>('usuario', arr);
    if (arr = nil) then
      exit;

    MyFreeAndNil(FUsuarios);
    FUsuarios := arr;
  except
    on E : Exception do
      erro := E.Message;
  end;
end;

function TEmpresaPost.setRamoAtividadeIdpk(const value: string): IEmpresaPost;
begin
  result := self;
  FRamoAtividadeIdpk := value;
end;

function TEmpresaPost.setSistemaIdpk(const value: string): IEmpresaPost;
begin
  result := self;
  FSistemaIdpk := value;
end;

function TEmpresaPost.toJson: TJSONValue;
var obj : TJSONObject;
begin
  if (FPayload <> nil) then
  begin
    result := TJSONObject(FPayload.Clone);
    exit;
  end;

  obj := TJSONObject.Create;
  obj.AddPair('usuario', TJSONArray(FUsuarios.Clone));
  obj.AddPair('emp_sistema_idpk', FSistemaIdpk);
  obj.AddPair('emp_ramoatividade_idpk', FRamoAtividadeIdpk);
  obj.AddPair('emp_captacao', FCaptacao);
  obj.AddPair('emp_chave_cadastro', FChaveCadastro);
  result := obj;
end;

{ TEmpresaPut }

constructor TEmpresaPut.Create;
begin
  FPayload := nil;
end;

destructor TEmpresaPut.Destroy;
begin
  MyFreeAndNil(FPayload);
  inherited;
end;

function TEmpresaPut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

class function TEmpresaPut.new: IEmpresaPut;
begin
  result := TEmpresaPut.Create;
end;

function TEmpresaPut.setEmpresaIdpk(const value: string): IEmpresaPut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TEmpresaPut.setPayload(const value: TJSONObject): IEmpresaPut;
begin
  result := self;
  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TEmpresaPut.toJson: TJSONValue;
begin
  if (FPayload <> nil) then
    result := TJSONObject(FPayload.Clone)
  else
    result := TJSONObject.Create;
end;

function TEmpresaPut.toParams: string;
begin
  result := '?empresa_idpk='+ FEmpresaIdpk;
end;

{ TResponseEmpresaGet }

constructor TResponseEmpresaGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaGet.new(parent: IResponse): IResponseEmpresaGet;
begin
  result := TResponseEmpresaGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaGet.Obj: TResponseClassEmpresaGet;
begin
  result := FObj;
end;

{ TResponseEmpresaPost }

constructor TResponseEmpresaPost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaPost.new(parent: IResponse): IResponseEmpresaPost;
begin
  result := TResponseEmpresaPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaPost.Obj: TResponseClassEmpresaPost;
begin
  result := FObj;
end;

{ TResponseEmpresaPut }

constructor TResponseEmpresaPut.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaPut.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaPut.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaPut.new(parent: IResponse): IResponseEmpresaPut;
begin
  result := TResponseEmpresaPut.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaPut.Obj: TResponseClassEmpresaPut;
begin
  result := FObj;
end;

{ TResponseEmpresaDelete }

constructor TResponseEmpresaDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaDelete.new(parent: IResponse): IResponseEmpresaDelete;
begin
  result := TResponseEmpresaDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaDelete.Obj: TResponseClassEmpresaDelete;
begin
  result := FObj;
end;

{ TResponseEmpresaPutLogotipo }

constructor TResponseEmpresaPutLogotipo.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaPutLogotipo.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaPutLogotipo.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaPutLogotipo.new(parent: IResponse): IResponseEmpresaPutLogotipo;
begin
  result := TResponseEmpresaPutLogotipo.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaPutLogotipo.Obj: TResponseClassEmpresaPutLogotipo;
begin
  result := FObj;
end;

{ TResponseEmpresaPutCertificado }

constructor TResponseEmpresaPutCertificado.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEmpresaPutCertificado.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEmpresaPutCertificado.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEmpresaPutCertificado.new(parent: IResponse): IResponseEmpresaPutCertificado;
begin
  result := TResponseEmpresaPutCertificado.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEmpresaPutCertificado.Obj: TResponseClassEmpresaPutCertificado;
begin
  result := FObj;
end;

end.

