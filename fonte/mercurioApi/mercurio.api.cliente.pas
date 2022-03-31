unit mercurio.api.cliente;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.cliente.get,
  mercurio.response.cliente.getDocumentoExiste, mercurio.response.cliente.post,
  mercurio.response.cliente.put, mercurio.response.cliente.delete;

type
  /// <summary> Cliente </summary>
  ICliente = interface
    ['{0BF9E0D6-2C41-4CE1-B405-16E0984F7324}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ICliente;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ICliente;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ICliente;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : ICliente;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Código idpk da regição do cliente </summary>
    function setClienteRegiaoIdpk(const value : string) : ICliente;
    /// <summary> Código idpk da regição do cliente </summary>
    function getClienteRegiaoIdpk : string;
    /// <summary> Código interno do cliente (sequencial automático caso não informado) </summary>
    function setCodigoIndividual(const value : string) : ICliente;
    /// <summary> Código interno do cliente (sequencial automático caso não informado) </summary>
    function getCodigoIndividual : string;
    /// <summary> Indicador IE </summary>
    function setIndicadorIE(const value : string) : ICliente;
    /// <summary> Indicador IE </summary>
    function getIndicadorIE : string;
    /// <summary> Indica se o cliente é consumidor final (true / false) </summary>
    function setConsumidorFinal(const value : boolean) : ICliente;
    /// <summary> Indica se o cliente é consumidor final (true / false) </summary>
    function getConsumidorFinal : boolean;
    /// <summary> Profissão do cliente cadastrado </summary>
    function setProfissao(const value : string) : ICliente;
    /// <summary> Profissão do cliente cadastrado </summary>
    function getProfissao : string;
    /// <summary> Empresa que o cliente trabalha - pessoa física </summary>
    function setEmpresaTrabalho(const value : string) : ICliente;
    /// <summary> Empresa que o cliente trabalha - pessoa física </summary>
    function getEmpresaTrabalho : string;
    /// <summary> Renda monetária do cliente </summary>
    function setRenda(const value : double) : ICliente;
    /// <summary> Renda monetária do cliente </summary>
    function getRenda : double;
    /// <summary> Limite de crédito pré aprovado para o cliente </summary>
    function setLimite(const value : double) : ICliente;
    /// <summary> Limite de crédito pré aprovado para o cliente </summary>
    function getLimite : double;
    /// <summary> Primeira referência comercial do cliente </summary>
    function setReferencia1(const value : string) : ICliente;
    /// <summary> Primeira referência comercial do cliente </summary>
    function getReferencia1 : string;
    /// <summary> Segunda referência comercial do cliente </summary>
    function setReferencia2(const value : string) : ICliente;
    /// <summary> Segunda referência comercial do cliente </summary>
    function getReferencia2 : string;
    /// <summary> Status do cadastro do cliente </summary>
    function setStatusAtivo(const value : boolean) : ICliente;
    /// <summary> Status do cadastro do cliente </summary>
    function getStatusAtivo : boolean;
    /// <summary> Tipos de moradia: | 0=Casa Própria | 1=Aluguel | 2=Emprestado | 3=Outros | </summary>
    function setMoradia(const value : integer) : ICliente;
    /// <summary> Tipos de moradia: | 0=Casa Própria | 1=Aluguel | 2=Emprestado | 3=Outros | </summary>
    function getMoradia : integer;
    /// <summary> Situação do cadastro: | 0=Aprovado | 1=Observação | 2=Bloqueado | 3=Inativo | 4=SPC | </summary>
    function setSituacaoCadastro(const value : integer) : ICliente;
    /// <summary> Situação do cadastro: | 0=Aprovado | 1=Observação | 2=Bloqueado | 3=Inativo | 4=SPC | </summary>
    function getSituacaoCadastro : integer;
    /// <summary> Código livre definido pelo usuário </summary>
    function setCodigoAuxiliar(const value : string) : ICliente;
    /// <summary> Código livre definido pelo usuário </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Inscrição no SUFRAMA </summary>
    function setSuframaInscricao(const value : string) : ICliente;
    /// <summary> Inscrição no SUFRAMA </summary>
    function getSuframaInscricao : string;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : ICliente;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  /// <summary> Cliente </summary>
  TCliente = class(TInterfacedObject, ICliente)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FClienteRegiaoIdpk : string;
    FCodigoIndividual : string;
    FIndicadorIE : string;
    FConsumidorFinal : boolean;
    FProfissao : string;
    FEmpresaTrabalho : string;
    FRenda : double;
    FLimite : double;
    FReferencia1 : string;
    FReferencia2 : string;
    FStatusAtivo : boolean;
    FMoradia : integer;
    FSituacaoCadastro : integer;
    FCodigoAuxiliar : string;
    FSuframaInscricao : string;
    FPessoa : IMercurioPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ICliente;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : ICliente;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : ICliente;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : ICliente;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : ICliente;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Código idpk da regição do cliente </summary>
    function setClienteRegiaoIdpk(const value : string) : ICliente;
    /// <summary> Código idpk da regição do cliente </summary>
    function getClienteRegiaoIdpk : string;
    /// <summary> Código interno do cliente (sequencial automático caso não informado) </summary>
    function setCodigoIndividual(const value : string) : ICliente;
    /// <summary> Código interno do cliente (sequencial automático caso não informado) </summary>
    function getCodigoIndividual : string;
    /// <summary> Indicador IE </summary>
    function setIndicadorIE(const value : string) : ICliente;
    /// <summary> Indicador IE </summary>
    function getIndicadorIE : string;
    /// <summary> Indica se o cliente é consumidor final (true / false) </summary>
    function setConsumidorFinal(const value : boolean) : ICliente;
    /// <summary> Indica se o cliente é consumidor final (true / false) </summary>
    function getConsumidorFinal : boolean;
    /// <summary> Profissão do cliente cadastrado </summary>
    function setProfissao(const value : string) : ICliente;
    /// <summary> Profissão do cliente cadastrado </summary>
    function getProfissao : string;
    /// <summary> Empresa que o cliente trabalha - pessoa física </summary>
    function setEmpresaTrabalho(const value : string) : ICliente;
    /// <summary> Empresa que o cliente trabalha - pessoa física </summary>
    function getEmpresaTrabalho : string;
    /// <summary> Renda monetária do cliente </summary>
    function setRenda(const value : double) : ICliente;
    /// <summary> Renda monetária do cliente </summary>
    function getRenda : double;
    /// <summary> Limite de crédito pré aprovado para o cliente </summary>
    function setLimite(const value : double) : ICliente;
    /// <summary> Limite de crédito pré aprovado para o cliente </summary>
    function getLimite : double;
    /// <summary> Primeira referência comercial do cliente </summary>
    function setReferencia1(const value : string) : ICliente;
    /// <summary> Primeira referência comercial do cliente </summary>
    function getReferencia1 : string;
    /// <summary> Segunda referência comercial do cliente </summary>
    function setReferencia2(const value : string) : ICliente;
    /// <summary> Segunda referência comercial do cliente </summary>
    function getReferencia2 : string;
    /// <summary> Status do cadastro do cliente </summary>
    function setStatusAtivo(const value : boolean) : ICliente;
    /// <summary> Status do cadastro do cliente </summary>
    function getStatusAtivo : boolean;
    /// <summary> Tipos de moradia: | 0=Casa Própria | 1=Aluguel | 2=Emprestado | 3=Outros | </summary>
    function setMoradia(const value : integer) : ICliente;
    /// <summary> Tipos de moradia: | 0=Casa Própria | 1=Aluguel | 2=Emprestado | 3=Outros | </summary>
    function getMoradia : integer;
    /// <summary> Situação do cadastro: | 0=Aprovado | 1=Observação | 2=Bloqueado | 3=Inativo | 4=SPC | </summary>
    function setSituacaoCadastro(const value : integer) : ICliente;
    /// <summary> Situação do cadastro: | 0=Aprovado | 1=Observação | 2=Bloqueado | 3=Inativo | 4=SPC | </summary>
    function getSituacaoCadastro : integer;
    /// <summary> Código livre definido pelo usuário </summary>
    function setCodigoAuxiliar(const value : string) : ICliente;
    /// <summary> Código livre definido pelo usuário </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Inscrição no SUFRAMA </summary>
    function setSuframaInscricao(const value : string) : ICliente;
    /// <summary> Inscrição no SUFRAMA </summary>
    function getSuframaInscricao : string;
    /// <summary> Informações do cadastro da pessoa </summary>
    function setPessoa(const value : IMercurioPessoa) : ICliente;
    /// <summary> Informações do cadastro da pessoa </summary>
    function getPessoa : IMercurioPessoa;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IClienteGet = interface(IPayloadGet)
    ['{AF3ED150-271D-4D53-B16C-5A887D2D2991}']
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_da_empresa do cliente, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : IClienteGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_da_empresa do cliente, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : IClienteGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Nome da empresa do cliente </summary>
    function setNomeEmpresa(const value : string) : IClienteGet;
    /// <summary> Nome da empresa do cliente </summary>
    function getNomeEmpresa : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IClienteGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;
    /// <summary> Código auxiliar do cliente </summary>
    function setCodigoAuxiliar(const value : string) : IClienteGet;
    /// <summary> Código auxiliar do cliente </summary>
    function getCodigoAuxiliar : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TClienteGet = class(TPayloadGet, IClienteGet)
  private
    FPesquisar : string;
    FNome : string;
    FNomeEmpresa : string;
    FDocumento : string;
    FCodigoAuxiliar : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IClienteGet;

    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_da_empresa do cliente, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function setPesquisar(const value : string) : IClienteGet;
    /// <summary> Parâmetro para filtrar pelso campos:
    ///  nome_da_empresa do cliente, nome, email e documento (CPF / CNPJ).
    ///  Os demais parâmetros textuais (nome_da_empresa, nome e documento) serão ignorados
    /// </summary>
    function getPesquisar : string;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function setNome(const value : string) : IClienteGet;
    /// <summary> Nome ou parte do nome do cliente ou apelido </summary>
    function getNome : string;
    /// <summary> Nome da empresa do cliente </summary>
    function setNomeEmpresa(const value : string) : IClienteGet;
    /// <summary> Nome da empresa do cliente </summary>
    function getNomeEmpresa : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IClienteGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;
    /// <summary> Código auxiliar do cliente </summary>
    function setCodigoAuxiliar(const value : string) : IClienteGet;
    /// <summary> Código auxiliar do cliente </summary>
    function getCodigoAuxiliar : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IClienteDocumentoGet = interface
    ['{D1A29FF3-1015-4EF8-A428-8C61E509F2C0}']
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IClienteDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IClienteDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IClienteDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TClienteDocumentoGet = class(TInterfacedObject, IClienteDocumentoGet)
  private
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FDocumento : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IClienteDocumentoGet;

    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IClienteDocumentoGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IClienteDocumentoGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function setDocumento(const value : string) : IClienteDocumentoGet;
    /// <summary> Documento CPF/CNPJ do cliente </summary>
    function getDocumento : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IClientePost = interface(IPayloadPost)
    ['{ACFE0261-FECC-44C9-8844-2637B0308EB8}']
    /// <summary> Adiciona um novo cliente ao payload via classe </summary>
    function addCliente(const value : ICliente) : IClientePost;
  end;

  TClientePost = class(TPayloadPost, IClientePost)
  public
    class function new : IClientePost;

    /// <summary> Adiciona um novo cliente ao payload via classe </summary>
    function addCliente(const value : ICliente) : IClientePost;
  end;

  IClientePut = interface(IPayloadPut)
    ['{02E527E6-6D17-4180-825D-5E42D0E9CDC1}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IClientePut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IClientePut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IClientePut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona as informações do cliente ao payload via classe </summary>
    function setCliente(const value : ICliente) : IClientePut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, o cliente adicionado por classe é desconsiderado </summary>
    function setPayload(const value : TJSONObject) : IClientePut;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TClientePut = class(TPayloadPut, IClientePut)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IClientePut;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IClientePut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IClientePut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IClientePut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona um novo cliente ao payload via classe </summary>
    function setCliente(const value : ICliente) : IClientePut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, a lista de clientes por classe é desconsiderada </summary>
    function setPayload(const value : TJSONObject) : IClientePut;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IClienteDelete = interface(IPayloadDelete)
    ['{51BCC2D9-967B-4181-A4FC-E0E40C0BEBBF}']
  end;

  TClienteDelete = class(TPayloadDelete, IClienteDelete)
  private
  public
    class function new : IClienteDelete;
  end;

  IResponseClienteGet = interface(IResponse)
    ['{C5C3F1DD-F142-405B-A4D2-1DDBB7B64977}']
    function Obj : TResponseClassClienteGet;
  end;
  TResponseClienteGet = class(TResponse, IResponseClienteGet)
  private
    FObj : TResponseClassClienteGet;
  public
    class function new(parent : IResponse) : IResponseClienteGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassClienteGet;
  end;

  IResponseClienteGetDocumentoExiste = interface(IResponse)
    ['{0B2C88AA-1B19-4EE3-A244-B614173BF9AD}']
    function Obj : TResponseClassClienteGetDocumentoExiste;
  end;
  TResponseClienteGetDocumentoExiste = class(TResponse, IResponseClienteGetDocumentoExiste)
  private
    FObj : TResponseClassClienteGetDocumentoExiste;
  public
    class function new(parent : IResponse) : IResponseClienteGetDocumentoExiste;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassClienteGetDocumentoExiste;
  end;

  IResponseClientePost = interface(IResponse)
    ['{D59C3E00-7A08-4E70-88BF-B743B8A57CA6}']
    function Obj : TResponseClassClientePost;
  end;
  TResponseClientePost = class(TResponse, IResponseClientePost)
  private
    FObj : TResponseClassClientePost;
  public
    class function new(parent : IResponse) : IResponseClientePost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassClientePost;
  end;

  IResponseClientePut = interface(IResponse)
    ['{EE5B1B54-4841-4E12-B253-FB14D7490CBB}']
    function Obj : TResponseClassClientePut;
  end;
  TResponseClientePut = class(TResponse, IResponseClientePut)
  private
    FObj : TResponseClassClientePut;
  public
    class function new(parent : IResponse) : IResponseClientePut;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassClientePut;
  end;

  IResponseClienteDelete = interface(IResponse)
    ['{1B77067D-CCC0-4560-AC80-4CEB5872A588}']
    function Obj : TResponseClassClienteDelete;
  end;
  TResponseClienteDelete = class(TResponse, IResponseClienteDelete)
  private
    FObj : TResponseClassClienteDelete;
  public
    class function new(parent : IResponse) : IResponseClienteDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassClienteDelete;
  end;

  TMercurioCliente = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais clientes na base da empresa </summary>
    function Get(var params : IClienteGet) : IResponseClienteGet;
    /// <summary> Consulta se já existe algum cliente cadastrado com o mesmo documento na empresa </summary>
    function GetDocumentoExiste(var params : IClienteDocumentoGet) : IResponseClienteGetDocumentoExiste;
    /// <summary> Insere um ou mais clientes </summary>
    function Post(var params : IClientePost) : IResponseClientePost;
    /// <summary> Altera os dados cadastrais de um cliente </summary>
    function Put(var params : IClientePut) : IResponseClientePut;
    /// <summary> Apaga um cliente </summary>
    function Delete(var params : IClienteDelete) : IResponseClienteDelete;
  end;

implementation

uses
  System.SysUtils, mercurio.api.consts, mercurio.api.functions;

{ TClienteGet }

constructor TClienteGet.Create;
begin

end;

destructor TClienteGet.Destroy;
begin

  inherited;
end;

function TClienteGet.getCodigoAuxiliar: string;
begin
  result := FCodigoAuxiliar;
end;

function TClienteGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TClienteGet.getNome: string;
begin
  result := FNome;
end;

function TClienteGet.getNomeEmpresa: string;
begin
  result := FNomeEmpresa;
end;

function TClienteGet.getPesquisar: string;
begin
  result := FPesquisar;
end;

class function TClienteGet.new: IClienteGet;
begin
  result := TClienteGet.Create;
end;

function TClienteGet.setCodigoAuxiliar(const value: string): IClienteGet;
begin
  result := self;
  FCodigoAuxiliar := value;
end;

function TClienteGet.setDocumento(const value: string): IClienteGet;
begin
  result := self;
  FDocumento := value;
end;

function TClienteGet.setNome(const value: string): IClienteGet;
begin
  result := self;
  FNome := value;
end;

function TClienteGet.setNomeEmpresa(const value: string): IClienteGet;
begin
  result := self;
  FNomeEmpresa := value;
end;

function TClienteGet.setPesquisar(const value: string): IClienteGet;
begin
  result := self;
  FPesquisar := value;
end;

function TClienteGet.toParams: string;
begin
  result := inherited;
  if (FPesquisar <> '') then
    result := AddParam(result, 'pesquisar='+ FPesquisar);
  if (FNome <> '') then
    result := AddParam(result, 'nome='+ FNome);
  if (FNomeEmpresa <> '') then
    result := AddParam(result, 'nome_empresa='+ FNomeEmpresa);
  if (FDocumento <> '') then
    result := AddParam(result, 'documento='+ FDocumento);
  if (FCodigoAuxiliar <> '') then
    result := AddParam(result, 'codigo_auxiliar='+ FCodigoAuxiliar);
end;

{ TMercurioCliente }

function TMercurioCliente.Delete(var params : IClienteDelete) : IResponseClienteDelete;
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
    url := getUrl(Ambiente, urlCliente) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseClienteDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioCliente.Get(var params : IClienteGet) : IResponseClienteGet;
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
    url := getUrl(Ambiente, urlCliente) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseClienteGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioCliente.GetDocumentoExiste(var params : IClienteDocumentoGet) : IResponseClienteGetDocumentoExiste;
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
    url := getUrl(Ambiente, urlClienteExiste) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseClienteGetDocumentoExiste.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioCliente.Post(var params : IClientePost) : IResponseClientePost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlCliente) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseClientePost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioCliente.Put(var params : IClientePut) : IResponseClientePut;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlCliente) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseClientePut.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TClienteDocumentoGet }

constructor TClienteDocumentoGet.Create;
begin

end;

destructor TClienteDocumentoGet.Destroy;
begin

  inherited;
end;

function TClienteDocumentoGet.getDocumento: string;
begin
  result := FDocumento;
end;

function TClienteDocumentoGet.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TClienteDocumentoGet.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

class function TClienteDocumentoGet.new: IClienteDocumentoGet;
begin
  result := TClienteDocumentoGet.Create;
end;

function TClienteDocumentoGet.setDocumento(const value : string) : IClienteDocumentoGet;
begin
  result := self;
  FDocumento := value;
end;

function TClienteDocumentoGet.setEmpresaIdpk(const value : string) : IClienteDocumentoGet;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TClienteDocumentoGet.setFilialIdpk(const value : string) : IClienteDocumentoGet;
begin
  result := self;
  FFilialIdpk := value;
end;

function TClienteDocumentoGet.toParams: string;
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

{ TClientePost }

function TClientePost.addCliente(const value: ICliente): IClientePost;
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

class function TClientePost.new: IClientePost;
begin
  result := TClientePost.Create;
end;

{ TClienteDelete }

class function TClienteDelete.new: IClienteDelete;
begin
  result := TClienteDelete.Create;
end;

{ TClientePut }

constructor TClientePut.Create;
begin
  FPayload := TJSONObject.Create;
end;

destructor TClientePut.Destroy;
begin
  MyFreeAndNil(FPayload);

  inherited;
end;

function TClientePut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TClientePut.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TClientePut.getIdpk: string;
begin
  result := FIdpk;
end;

class function TClientePut.new: IClientePut;
begin
  result := TClientePut.Create;
end;

function TClientePut.setCliente(const value: ICliente): IClientePut;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value.ToJson;
end;

function TClientePut.setEmpresaIdpk(const value: string): IClientePut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TClientePut.setFilialIdpk(const value: string): IClientePut;
begin
  result := self;
  FFilialIdpk := value;
end;

function TClientePut.setIdpk(const value: string): IClientePut;
begin
  result := self;
  FIdpk := value;
end;

function TClientePut.setPayload(const value: TJSONObject): IClientePut;
begin
  result := self;
  if (value = nil) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TClientePut.ToJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TClientePut.toParams: string;
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

{ TCliente }

constructor TCliente.Create;
begin
  FPessoa := nil;
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FPessoaIdpk := '';
  FClienteRegiaoIdpk := '';
  FCodigoIndividual := '';
  FIndicadorIE := '';
  FConsumidorFinal := false;
  FProfissao := '';
  FEmpresaTrabalho := '';
  FRenda := 0;
  FLimite := 0;
  FReferencia1 := '';
  FReferencia2 := '';
  FStatusAtivo := false;
  FMoradia := 0;
  FSituacaoCadastro := 0;
  FCodigoAuxiliar := '';
  FSuframaInscricao := '';
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

function TCliente.getClienteRegiaoIdpk: string;
begin
  result := FClienteRegiaoIdpk;
end;

function TCliente.getCodigoAuxiliar: string;
begin
  result := FCodigoAuxiliar;
end;

function TCliente.getCodigoIndividual: string;
begin
  result := FCodigoIndividual;
end;

function TCliente.getConsumidorFinal: boolean;
begin
  result := FConsumidorFinal;
end;

function TCliente.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TCliente.getEmpresaTrabalho: string;
begin
  result := FEmpresaTrabalho;
end;

function TCliente.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TCliente.getIdpk: string;
begin
  result := FIdpk;
end;

function TCliente.getIndicadorIE: string;
begin
  result := FIndicadorIE;
end;

function TCliente.getLimite: double;
begin
  result := FLimite;
end;

function TCliente.getMoradia: integer;
begin
  result := FMoradia;
end;

function TCliente.getPessoa: IMercurioPessoa;
begin
  result := FPessoa;
end;

function TCliente.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TCliente.getProfissao: string;
begin
  result := FProfissao;
end;

function TCliente.getReferencia1: string;
begin
  result := FReferencia1;
end;

function TCliente.getReferencia2: string;
begin
  result := FReferencia2;
end;

function TCliente.getRenda: double;
begin
  result := FRenda;
end;

function TCliente.getSituacaoCadastro: integer;
begin
  result := FSituacaoCadastro;
end;

function TCliente.getStatusAtivo: boolean;
begin
  result := FStatusAtivo;
end;

function TCliente.getSuframaInscricao: string;
begin
  result := FSuframaInscricao;
end;

class function TCliente.new: ICliente;
begin
  result := TCliente.Create;
end;

function TCliente.setClienteRegiaoIdpk(const value: string): ICliente;
begin
  result := self;
  FClienteRegiaoIdpk := value;
end;

function TCliente.setCodigoAuxiliar(const value: string): ICliente;
begin
  result := self;
  FCodigoAuxiliar := value;
end;

function TCliente.setCodigoIndividual(const value: string): ICliente;
begin
  result := self;
  FCodigoIndividual := value;
end;

function TCliente.setConsumidorFinal(const value: boolean): ICliente;
begin
  result := self;
  FConsumidorFinal := value;
end;

function TCliente.setEmpresaIdpk(const value: string): ICliente;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TCliente.setEmpresaTrabalho(const value: string): ICliente;
begin
  result := self;
  FEmpresaTrabalho := value;
end;

function TCliente.setFilialIdpk(const value: string): ICliente;
begin
  result := self;
  FFilialIdpk := value;
end;

function TCliente.setIdpk(const value: string): ICliente;
begin
  result := self;
  FIdpk := value;
end;

function TCliente.setIndicadorIE(const value: string): ICliente;
begin
  result := self;
  FIndicadorIE := value;
end;

function TCliente.setLimite(const value: double): ICliente;
begin
  result := self;
  FLimite := value;
end;

function TCliente.setMoradia(const value: integer): ICliente;
begin
  result := self;
  FMoradia := value;
end;

function TCliente.setPessoa(const value: IMercurioPessoa): ICliente;
begin
  result := self;
  FPessoa := value;
end;

function TCliente.setPessoaIdpk(const value: string): ICliente;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TCliente.setProfissao(const value: string): ICliente;
begin
  result := self;
  FProfissao := value;
end;

function TCliente.setReferencia1(const value: string): ICliente;
begin
  result := self;
  FReferencia1 := value;
end;

function TCliente.setReferencia2(const value: string): ICliente;
begin
  result := self;
  FReferencia2 := value;
end;

function TCliente.setRenda(const value: double): ICliente;
begin
  result := self;
  FRenda := value;
end;

function TCliente.setSituacaoCadastro(const value: integer): ICliente;
begin
  result := self;
  FSituacaoCadastro := value;
end;

function TCliente.setStatusAtivo(const value: boolean): ICliente;
begin
  result := self;
  FStatusAtivo := value;
end;

function TCliente.setSuframaInscricao(const value: string): ICliente;
begin
  result := self;
  FSuframaInscricao := value;
end;

function TCliente.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('cli_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('cli_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('cli_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('cli_pessoa_idpk', FPessoaIdpk);
  if (FClienteRegiaoIdpk <> '') then
    result.AddPair('cli_clienteregiao_idpk', FClienteRegiaoIdpk);
  if (FCodigoIndividual <> '') then
    result.AddPair('cli_codigoindividual', FCodigoIndividual);
  if (FCodigoAuxiliar <> '') then
    result.AddPair('cli_codigo_auxiliar', FCodigoAuxiliar);
  if (FIndicadorIE <> '') then
    result.AddPair('cli_indicadorie', FIndicadorIE);
  if (FProfissao <> '') then
    result.AddPair('cli_profissao', FProfissao);
  if (FEmpresaTrabalho <> '') then
    result.AddPair('cli_empresa_trabalho', FEmpresaTrabalho);
  if (FReferencia1 <> '') then
    result.AddPair('cli_referencia1', FReferencia1);
  if (FReferencia2 <> '') then
    result.AddPair('cli_referencia2', FReferencia2);
  if (FSuframaInscricao <> '') then
    result.AddPair('cli_isuf_codigo', FSuframaInscricao);

  result.AddPair('cli_status', TJSONNumber.Create(integer(FStatusAtivo)));
  result.AddPair('cli_moradia', TJSONNumber.Create(FMoradia));
  result.AddPair('cli_situacaocadastro', TJSONNumber.Create(FSituacaoCadastro));
  result.AddPair('cli_consumidorfinal', TJSONNumber.Create(integer(FConsumidorFinal)));
  result.AddPair('cli_renda', TJSONNumber.Create(FRenda));
  result.AddPair('cli_limite', TJSONNumber.Create(FLimite));

  if (assigned(FPessoa)) then
    result.AddPair('pessoa', FPessoa.ToJson);
end;

{ TResponseClienteGet }

constructor TResponseClienteGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassClienteGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseClienteGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseClienteGet.new(parent: IResponse): IResponseClienteGet;
begin
  result := TResponseClienteGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseClienteGet.Obj: TResponseClassClienteGet;
begin
  result := FObj;
end;

{ TResponseClienteGetDocumentoExiste }

constructor TResponseClienteGetDocumentoExiste.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassClienteGetDocumentoExiste.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseClienteGetDocumentoExiste.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseClienteGetDocumentoExiste.new(parent: IResponse): IResponseClienteGetDocumentoExiste;
begin
  result := TResponseClienteGetDocumentoExiste.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseClienteGetDocumentoExiste.Obj: TResponseClassClienteGetDocumentoExiste;
begin
  result := FObj;
end;

{ TResponseClientePost }

constructor TResponseClientePost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassClientePost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseClientePost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseClientePost.new(parent: IResponse): IResponseClientePost;
begin
  result := TResponseClientePost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseClientePost.Obj: TResponseClassClientePost;
begin
  result := FObj;
end;

{ TResponseClientePut }

constructor TResponseClientePut.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassClientePut.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseClientePut.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseClientePut.new(parent: IResponse): IResponseClientePut;
begin
  result := TResponseClientePut.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseClientePut.Obj: TResponseClassClientePut;
begin
  result := FObj;
end;

{ TResponseClienteDelete }

constructor TResponseClienteDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassClienteDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseClienteDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseClienteDelete.new(parent: IResponse): IResponseClienteDelete;
begin
  result := TResponseClienteDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseClienteDelete.Obj: TResponseClassClienteDelete;
begin
  result := FObj;
end;

end.
