unit mercurio.api.estoque;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.estoque.getManual,
  mercurio.response.estoque.get, mercurio.response.estoque.postManual;

type
  /// <summary> Movimento Estoque manual </summary>
  IEstoqueManual = interface
    ['{F64547E9-9154-4BE7-94E1-FFAEBF434F26}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Quantidade movimentada </summary>
    function setQtde(const value : double) : IEstoqueManual;
    /// <summary> Quantidade movimentada </summary>
    function getQtde : double;
    /// <summary> Valor unitário do produto movimentado (Movimento Entrada = Preço de custo | Movimento Saída = Preço de venda) </summary>
    function setValorUnitario(const value : double) : IEstoqueManual;
    /// <summary> Valor unitário do produto movimentado (Movimento Entrada = Preço de custo | Movimento Saída = Preço de venda) </summary>
    function getValorUnitario : double;
    /// <summary> S = Saída | E = Entrada </summary>
    function setMovimento(const value : string) : IEstoqueManual;
    /// <summary> S = Saída | E = Entrada </summary>
    function getMovimento : string;
    /// <summary> Código idpk do produto movimentado </summary>
    function setProdutoIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código idpk do produto movimentado </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome do produto movimentado </summary>
    function setProdutoNome(const value : string) : IEstoqueManual;
    /// <summary> Nome do produto movimentado </summary>
    function getProdutoNome : string;
    /// <summary> Observação deste produto na movimentação </summary>
    function setObservacao(const value : string) : IEstoqueManual;
    /// <summary> Observação deste produto na movimentação </summary>
    function getObservacao : string;
    /// <summary> Data da realização deste movimento </summary>
    function setDataMovimento(const value : TDate) : IEstoqueManual;
    /// <summary> Data da realização deste movimento </summary>
    function getDataMovimento : TDate;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueManual;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Documento referente a origem deste movimento </summary>
    function setOrigemDocumento(const value : string) : IEstoqueManual;
    /// <summary> Documento referente a origem deste movimento </summary>
    function getOrigemDocumento : string;
    /// <summary> Nome do cliente ou fornecedor responsável por este movimento </summary>
    function setNome(const value : string) : IEstoqueManual;
    /// <summary> Nome do cliente ou fornecedor responsável por este movimento </summary>
    function getNome : string;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Movimento Estoque manual </summary>
  TEstoqueManual = class(TInterfacedObject, IEstoqueManual)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FQtde : double;
    FValorUnitario : double;
    FMovimento : string;
    FProdutoIdpk : string;
    FProdutoNome : string;
    FObservacao : string;
    FDataMovimento : TDate;
    FOrigem : string;
    FOrigemIdpk : string;
    FOrigemDocumento : string;
    FNome : string;
  public
    constructor Create;
    class function new : IEstoqueManual;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Quantidade movimentada </summary>
    function setQtde(const value : double) : IEstoqueManual;
    /// <summary> Quantidade movimentada </summary>
    function getQtde : double;
    /// <summary> Valor unitário do produto movimentado (Movimento Entrada = Preço de custo | Movimento Saída = Preço de venda) </summary>
    function setValorUnitario(const value : double) : IEstoqueManual;
    /// <summary> Valor unitário do produto movimentado (Movimento Entrada = Preço de custo | Movimento Saída = Preço de venda) </summary>
    function getValorUnitario : double;
    /// <summary> S = Saída | E = Entrada </summary>
    function setMovimento(const value : string) : IEstoqueManual;
    /// <summary> S = Saída | E = Entrada </summary>
    function getMovimento : string;
    /// <summary> Código idpk do produto movimentado </summary>
    function setProdutoIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código idpk do produto movimentado </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome do produto movimentado </summary>
    function setProdutoNome(const value : string) : IEstoqueManual;
    /// <summary> Nome do produto movimentado </summary>
    function getProdutoNome : string;
    /// <summary> Observação deste produto na movimentação </summary>
    function setObservacao(const value : string) : IEstoqueManual;
    /// <summary> Observação deste produto na movimentação </summary>
    function getObservacao : string;
    /// <summary> Data da realização deste movimento </summary>
    function setDataMovimento(const value : TDate) : IEstoqueManual;
    /// <summary> Data da realização deste movimento </summary>
    function getDataMovimento : TDate;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueManual;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueManual;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Documento referente a origem deste movimento </summary>
    function setOrigemDocumento(const value : string) : IEstoqueManual;
    /// <summary> Documento referente a origem deste movimento </summary>
    function getOrigemDocumento : string;
    /// <summary> Nome do cliente ou fornecedor responsável por este movimento </summary>
    function setNome(const value : string) : IEstoqueManual;
    /// <summary> Nome do cliente ou fornecedor responsável por este movimento </summary>
    function getNome : string;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IEstoqueManualGet = interface(IPayloadGet)
    ['{869CABDA-324B-4BA6-8217-519B456BCA74}']
    /// <summary> Período do movimento </summary>
    function setDataMovimento(const pDe, pAte : TDate) : IEstoqueManualGet;
    /// <summary> Data "de" do período do movimento </summary>
    function getDataMovimentoDe : TDate;
    /// <summary> Data "até" do período do movimento </summary>
    function getDataMovimentoAte : TDate;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function setMovimento(const value : string) : IEstoqueManualGet;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function getMovimento : string;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueManualGet;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueManualGet;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Código idpk referente ao produto </summary>
    function setProdutoIdpk(const value : string) : IEstoqueManualGet;
    /// <summary> Código idpk referente ao produto </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome referente ao produto </summary>
    function setProdutoNome(const value : string) : IEstoqueManualGet;
    /// <summary> Nome referente ao produto </summary>
    function getProdutoNome : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TEstoqueManualGet = class(TPayloadGet, IEstoqueManualGet)
  private
    FDataMovimentoDe : TDate;
    FDataMovimentoAte : TDate;
    FMovimento : string;
    FOrigem : string;
    FOrigemIdpk : string;
    FProdutoIdpk : string;
    FProdutoNome : string;
  public
    constructor Create;
    class function new : IEstoqueManualGet;

    /// <summary> Período do movimento </summary>
    function setDataMovimento(const pDe, pAte : TDate) : IEstoqueManualGet;
    /// <summary> Data "de" do período do movimento </summary>
    function getDataMovimentoDe : TDate;
    /// <summary> Data "até" do período do movimento </summary>
    function getDataMovimentoAte : TDate;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function setMovimento(const value : string) : IEstoqueManualGet;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function getMovimento : string;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueManualGet;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueManualGet;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Código idpk referente ao produto </summary>
    function setProdutoIdpk(const value : string) : IEstoqueManualGet;
    /// <summary> Código idpk referente ao produto </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome referente ao produto </summary>
    function setProdutoNome(const value : string) : IEstoqueManualGet;
    /// <summary> Nome referente ao produto </summary>
    function getProdutoNome : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IEstoqueManualPost = interface(IPayloadPost)
    ['{3537A118-16C3-4FA3-BC16-CD1A1B9ED2C3}']
    /// <summary> Adiciona um novo movimento de estoque manual ao payload via classe </summary>
    function addMovimentoManual(const value : IEstoqueManual) : IEstoqueManualPost;
  end;

  TEstoqueManualPost = class(TPayloadPost, IEstoqueManualPost)
  public
    class function new : IEstoqueManualPost;

    /// <summary> Adiciona um novo movimento de estoque manual ao payload via classe </summary>
    function addMovimentoManual(const value : IEstoqueManual) : IEstoqueManualPost;
  end;

  /// <summary> Movimento Estoque </summary>
  IEstoqueGet = interface(IPayloadGet)
    ['{884D4BD6-CE4B-44DE-9D97-D0603886C789}']
    /// <summary> Período do movimento </summary>
    function setDataMovimento(const pDe, pAte : TDate) : IEstoqueGet;
    /// <summary> Data "de" do período do movimento </summary>
    function getDataMovimentoDe : TDate;
    /// <summary> Data "até" do período do movimento </summary>
    function getDataMovimentoAte : TDate;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function setMovimento(const value : string) : IEstoqueGet;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function getMovimento : string;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueGet;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueGet;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Código idpk referente ao produto </summary>
    function setProdutoIdpk(const value : string) : IEstoqueGet;
    /// <summary> Código idpk referente ao produto </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome referente ao produto </summary>
    function setProdutoNome(const value : string) : IEstoqueGet;
    /// <summary> Nome referente ao produto </summary>
    function getProdutoNome : string;
    /// <summary> Propriedade que retorna o estoque inicial e final de um produto no período. Propiedade váldia somente se "ProdutoIdpk" for informado </summary>
    function setPosicaoEstoquePeriodo(const value : boolean) : IEstoqueGet;
    /// <summary> Propriedade que retorna o estoque inicial e final de um produto no período. Propiedade váldia somente se "ProdutoIdpk" for informado </summary>
    function getPosicaoEstoquePeriodo : boolean;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  /// <summary> Movimento Estoque </summary>
  TEstoqueGet = class(TPayloadGet, IEstoqueGet)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FQtde : double;
    FValorUnitario : double;
    FMovimento : string;
    FProdutoIdpk : string;
    FProdutoNome : string;
    FObservacao : string;
    FDataMovimentoDe : TDate;
    FDataMovimentoAte : TDate;
    FOrigem : string;
    FOrigemIdpk : string;
    FOrigemDocumento : string;
    FNome : string;
    FPosicaoEstoquePeriodo : boolean;
  public
    constructor Create;
    class function new : IEstoqueGet;

    /// <summary> Período do movimento </summary>
    function setDataMovimento(const pDe, pAte : TDate) : IEstoqueGet;
    /// <summary> Data "de" do período do movimento </summary>
    function getDataMovimentoDe : TDate;
    /// <summary> Data "até" do período do movimento </summary>
    function getDataMovimentoAte : TDate;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function setMovimento(const value : string) : IEstoqueGet;
    /// <summary> Tipo do movimento: | T = Todos | E = Entrada | S = Saída | </summary>
    function getMovimento : string;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function setOrigem(const value : string) : IEstoqueGet;
    /// <summary> Origem desta movimentação: | COMPRA | VENDA | DEVOLUÇÃO DE COMPRA | DEVOLUÇÃO DE VENDA | ESTOQUE INICIAL | AJUSTE DE ESTOQUE | ENTRADA MANUAL | SAÍDA MANUAL | </summary>
    function getOrigem : string;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function setOrigemIdpk(const value : string) : IEstoqueGet;
    /// <summary> Código idpk referente a origem deste movimento </summary>
    function getOrigemIdpk : string;
    /// <summary> Código idpk referente ao produto </summary>
    function setProdutoIdpk(const value : string) : IEstoqueGet;
    /// <summary> Código idpk referente ao produto </summary>
    function getProdutoIdpk : string;
    /// <summary> Nome referente ao produto </summary>
    function setProdutoNome(const value : string) : IEstoqueGet;
    /// <summary> Nome referente ao produto </summary>
    function getProdutoNome : string;
    /// <summary> Propriedade que retorna o estoque inicial e final de um produto no período. Propiedade váldia somente se "ProdutoIdpk" for informado </summary>
    function setPosicaoEstoquePeriodo(const value : boolean) : IEstoqueGet;
    /// <summary> Propriedade que retorna o estoque inicial e final de um produto no período. Propiedade váldia somente se "ProdutoIdpk" for informado </summary>
    function getPosicaoEstoquePeriodo : boolean;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IResponseEstoqueGetManual = interface(IResponse)
    ['{05D2E388-D43F-43C6-92D1-378CF78FF85A}']
    function Obj : TResponseClassEstoqueGetManual;
  end;
  TResponseEstoqueGetManual = class(TResponse, IResponseEstoqueGetManual)
  private
    FObj : TResponseClassEstoqueGetManual;
  public
    class function new(parent : IResponse) : IResponseEstoqueGetManual;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEstoqueGetManual;
  end;

  IResponseEstoqueGet = interface(IResponse)
    ['{024B26D4-13A8-42E0-90AB-1501BCE1A548}']
    function Obj : TResponseClassEstoqueGet;
  end;
  TResponseEstoqueGet = class(TResponse, IResponseEstoqueGet)
  private
    FObj : TResponseClassEstoqueGet;
  public
    class function new(parent : IResponse) : IResponseEstoqueGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEstoqueGet;
  end;

  IResponseEstoquePostManual = interface(IResponse)
    ['{91296FC3-6D5C-4D95-B4F5-5DA80E567E67}']
    function Obj : TResponseClassEstoquePostManual;
  end;
  TResponseEstoquePostManual = class(TResponse, IResponseEstoquePostManual)
  private
    FObj : TResponseClassEstoquePostManual;
  public
    class function new(parent : IResponse) : IResponseEstoquePostManual;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassEstoquePostManual;
  end;

  TMercurioEstoque = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais movimentos de estoque </summary>
    function GetMovimento(var params : IEstoqueGet) : IResponseEstoqueGet;
    /// <summary> Busca um ou mais movimentos de estoque manuais </summary>
    function GetMovimentoManual(var params : IEstoqueManualGet) : IResponseEstoqueGetManual;
    /// <summary> Insere um ou mais movimentos de estoque </summary>
    function PostMovimentoManual(var params : IEstoqueManualPost) : IResponseEstoquePostManual;

    /// <summary> Consulta se já existe algum transportador cadastrado com o mesmo documento na empresa </summary>
//    function GetDocumentoExiste(var params : ITransportadorDocumentoGet) : IResponse;

    /// <summary> Altera os dados cadastrais de um cliente </summary>
//    function Put(var params : ITransportadorPut) : IResponse;
    /// <summary> Apagar um transportador </summary>
//    function Delete(var params : ITransportadorDelete) : IResponse;
  end;

implementation

uses
  System.SysUtils, mercurio.api.consts, mercurio.api.functions;

{ TEstoqueManual }

constructor TEstoqueManual.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FQtde := 0;
  FValorUnitario := 0;
  FMovimento := '';
  FProdutoIdpk := '';
  FProdutoNome := '';
  FObservacao := '';
  FDataMovimento := 0;
  FOrigem := '';
  FOrigemIdpk := '';
  FOrigemDocumento := '';
  FNome := '';
end;

function TEstoqueManual.getDataMovimento: TDate;
begin
  result := FDataMovimento;
end;

function TEstoqueManual.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TEstoqueManual.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TEstoqueManual.getIdpk: string;
begin
  result := FIdpk;
end;

function TEstoqueManual.getMovimento: string;
begin
  result := FMovimento;
end;

function TEstoqueManual.getNome: string;
begin
  result := FNome;
end;

function TEstoqueManual.getObservacao: string;
begin
  result := FObservacao;
end;

function TEstoqueManual.getOrigem: string;
begin
  result := FOrigem;
end;

function TEstoqueManual.getOrigemDocumento: string;
begin
  result := FOrigemDocumento;
end;

function TEstoqueManual.getOrigemIdpk: string;
begin
  result := FOrigemIdpk;
end;

function TEstoqueManual.getProdutoIdpk: string;
begin
  result := FProdutoIdpk;
end;

function TEstoqueManual.getProdutoNome: string;
begin
  result := FProdutoNome;
end;

function TEstoqueManual.getQtde: double;
begin
  result := FQtde;
end;

function TEstoqueManual.getValorUnitario: double;
begin
  result := FValorUnitario;
end;

class function TEstoqueManual.new: IEstoqueManual;
begin
  result := TEstoqueManual.Create;
end;

function TEstoqueManual.setDataMovimento(const value : TDate) : IEstoqueManual;
begin
  result := self;
  FDataMovimento := value;
end;

function TEstoqueManual.setEmpresaIdpk(const value: string): IEstoqueManual;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TEstoqueManual.setFilialIdpk(const value: string): IEstoqueManual;
begin
  result := self;
  FFilialIdpk := value;
end;

function TEstoqueManual.setIdpk(const value: string): IEstoqueManual;
begin
  result := self;
  FIdpk := value;
end;

function TEstoqueManual.setMovimento(const value: string): IEstoqueManual;
begin
  result := self;
  FMovimento := value;
end;

function TEstoqueManual.setNome(const value: string): IEstoqueManual;
begin
  result := self;
  FNome := value;
end;

function TEstoqueManual.setObservacao(const value: string): IEstoqueManual;
begin
  result := self;
  FObservacao := value;
end;

function TEstoqueManual.setOrigem(const value: string): IEstoqueManual;
begin
  result := self;
  FOrigem := value;
end;

function TEstoqueManual.setOrigemDocumento(const value: string): IEstoqueManual;
begin
  result := self;
  FOrigemDocumento := value;
end;

function TEstoqueManual.setOrigemIdpk(const value: string): IEstoqueManual;
begin
  result := self;
  FOrigemIdpk := value;
end;

function TEstoqueManual.setProdutoIdpk(const value: string): IEstoqueManual;
begin
  result := self;
  FProdutoIdpk := value;
end;

function TEstoqueManual.setProdutoNome(const value: string): IEstoqueManual;
begin
  result := self;
  FProdutoNome := value;
end;

function TEstoqueManual.setQtde(const value: double): IEstoqueManual;
begin
  result := self;
  FQtde := value;
end;

function TEstoqueManual.setValorUnitario(const value: double): IEstoqueManual;
begin
  result := self;
  FValorUnitario := value;
end;

function TEstoqueManual.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('emm_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('emm_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('emm_filial_idpk', FFilialIdpk);
  if (FProdutoIdpk <> '') then
    result.AddPair('emm_produto_idpk', FProdutoIdpk);
  if (FDataMovimento > 0) then
    result.AddPair('emm_data_movimento', FormatDateTime('DD/MM/YYYY', FDataMovimento));
  result.AddPair('emm_quantidade', TJSONNumber.Create(FQtde));
  result.AddPair('emm_valor_unitario', TJSONNumber.Create(FValorUnitario));
  result.AddPair('emm_movimento', FMovimento);
  result.AddPair('emm_produto_nome', FProdutoNome);
  result.AddPair('emm_observacao', FObservacao);
  result.AddPair('emm_origem', FOrigem);
  result.AddPair('emm_origem_idpk', FOrigemIdpk);
  result.AddPair('emm_origem_documento', FOrigemDocumento);
  result.AddPair('emm_nome', FNome);
end;

{ TEstoqueManualGet }

constructor TEstoqueManualGet.Create;
begin
  inherited;

  FDataMovimentoDe := 0;
  FDataMovimentoAte := 0;
end;

function TEstoqueManualGet.getDataMovimentoAte: TDate;
begin
  result := FDataMovimentoAte;
end;

function TEstoqueManualGet.getDataMovimentoDe: TDate;
begin
  result := FDataMovimentoDe;
end;

function TEstoqueManualGet.getMovimento: string;
begin
  result := FMovimento;
end;

function TEstoqueManualGet.getOrigem: string;
begin
  result := FOrigem;
end;

function TEstoqueManualGet.getOrigemIdpk: string;
begin
  result := FOrigemIdpk;
end;

function TEstoqueManualGet.getProdutoIdpk: string;
begin
  result := FProdutoIdpk;
end;

function TEstoqueManualGet.getProdutoNome: string;
begin
  result := FProdutoNome;
end;

class function TEstoqueManualGet.new: IEstoqueManualGet;
begin
  result := TEstoqueManualGet.Create;
end;

function TEstoqueManualGet.setDataMovimento(const pDe, pAte: TDate): IEstoqueManualGet;
begin
  result := self;
  FDataMovimentoDe := pDe;
  FDataMovimentoAte := pAte;
end;

function TEstoqueManualGet.setMovimento(const value: string): IEstoqueManualGet;
begin
  result := self;
  FMovimento := value;
end;

function TEstoqueManualGet.setOrigem(const value: string): IEstoqueManualGet;
begin
  result := self;
  FOrigem := value;
end;

function TEstoqueManualGet.setOrigemIdpk(const value: string): IEstoqueManualGet;
begin
  result := self;
  FOrigemIdpk := value;
end;

function TEstoqueManualGet.setProdutoIdpk(const value: string): IEstoqueManualGet;
begin
  result := self;
  FProdutoIdpk := value;
end;

function TEstoqueManualGet.setProdutoNome(const value: string): IEstoqueManualGet;
begin
  result := self;
  FProdutoNome := value;
end;

function TEstoqueManualGet.toParams: string;
begin
  result := inherited;
  if (FDataMovimentoDe > 0) and (FDataMovimentoAte > 0) then
    result := AddParam(result, 'data_movimento_de=' +FormatDateTime('DD-MM-YYYY', FDataMovimentoDe) +
    '&data_movimento_ate='+ FormatDateTime('DD-MM-YYYY', FDataMovimentoAte));
  if (FMovimento <> '') then
    result := AddParam(result, 'movimento='+ FMovimento);
  if (FOrigem <> '') then
    result := AddParam(result, 'origem='+ FOrigem);
  if (FOrigemIdpk <> '') then
    result := AddParam(result, 'origem_idpk='+ FOrigemIdpk);
  if (FProdutoIdpk <> '') then
    result := AddParam(result, 'produto_idpk='+ FProdutoIdpk);
  if (FProdutoNome <> '') then
    result := AddParam(result, 'produto_nome='+ FProdutoNome);
end;

{ TMercurioEstoque }

function TMercurioEstoque.GetMovimento(var params : IEstoqueGet) : IResponseEstoqueGet;
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
    url := getUrl(Ambiente, urlMovimentoEstoque) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEstoqueGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioEstoque.GetMovimentoManual(var params : IEstoqueManualGet) : IResponseEstoqueGetManual;
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
    url := getUrl(Ambiente, urlMovimentoEstoqueManual) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEstoqueGetManual.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioEstoque.PostMovimentoManual(var params : IEstoqueManualPost) : IResponseEstoquePostManual;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlMovimentoEstoqueManual) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseEstoquePostManual.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TEstoqueManualPost }

function TEstoqueManualPost.addMovimentoManual(const value: IEstoqueManual): IEstoqueManualPost;
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

class function TEstoqueManualPost.new: IEstoqueManualPost;
begin
  result := TEstoqueManualPost.Create;
end;

{ TEstoqueGet }

constructor TEstoqueGet.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FQtde := 0;
  FValorUnitario := 0;
  FMovimento := '';
  FProdutoIdpk := '';
  FProdutoNome := '';
  FObservacao := '';
  FDataMovimentoDe := 0;
  FDataMovimentoAte := 0;
  FOrigem := '';
  FOrigemIdpk := '';
  FOrigemDocumento := '';
  FNome := '';
  FPosicaoEstoquePeriodo := false;
end;

function TEstoqueGet.getDataMovimentoAte: TDate;
begin
  result := FDataMovimentoDe;
end;

function TEstoqueGet.getDataMovimentoDe: TDate;
begin
  result := FDataMovimentoDe;
end;

function TEstoqueGet.getMovimento: string;
begin
  result := FMovimento;
end;

function TEstoqueGet.getOrigem: string;
begin
  result := FOrigem;
end;

function TEstoqueGet.getOrigemIdpk: string;
begin
  result := FOrigemIdpk;
end;

function TEstoqueGet.getPosicaoEstoquePeriodo: boolean;
begin
  result := FPosicaoEstoquePeriodo;
end;

function TEstoqueGet.getProdutoIdpk: string;
begin
  result := FProdutoIdpk;
end;

function TEstoqueGet.getProdutoNome: string;
begin
  result := FProdutoNome;
end;

class function TEstoqueGet.new: IEstoqueGet;
begin
  result := TEstoqueGet.Create;
end;

function TEstoqueGet.setDataMovimento(const pDe, pAte: TDate): IEstoqueGet;
begin
  result := self;
  FDataMovimentoDe := pDe;
  FDataMovimentoAte := pAte;
end;

function TEstoqueGet.setMovimento(const value: string): IEstoqueGet;
begin
  result := self;
  FMovimento := value;
end;

function TEstoqueGet.setOrigem(const value: string): IEstoqueGet;
begin
  result := self;
  FOrigem := value;
end;

function TEstoqueGet.setOrigemIdpk(const value: string): IEstoqueGet;
begin
  result := self;
  FOrigemIdpk := value;
end;

function TEstoqueGet.setPosicaoEstoquePeriodo(const value: boolean): IEstoqueGet;
begin
  result := self;
  FPosicaoEstoquePeriodo := value;
end;

function TEstoqueGet.setProdutoIdpk(const value: string): IEstoqueGet;
begin
  result := self;
  FProdutoIdpk := value;
end;

function TEstoqueGet.setProdutoNome(const value: string): IEstoqueGet;
begin
  result := self;
  FProdutoNome := value;
end;

function TEstoqueGet.toParams: string;
begin
  result := inherited;
  if (FDataMovimentoDe > 0) and (FDataMovimentoAte > 0) then
    result := AddParam(result, 'data_movimento_de=' +FormatDateTime('DD-MM-YYYY', FDataMovimentoDe) +
    '&data_movimento_ate='+ FormatDateTime('DD-MM-YYYY', FDataMovimentoAte));
  if (FMovimento <> '') then
    result := AddParam(result, 'movimento='+ FMovimento);
  if (FOrigem <> '') then
    result := AddParam(result, 'origem='+ FOrigem);
  if (FOrigemIdpk <> '') then
    result := AddParam(result, 'origem_idpk='+ FOrigemIdpk);
  if (FProdutoIdpk <> '') then
    result := AddParam(result, 'produto_idpk='+ FProdutoIdpk);
  if (FProdutoNome <> '') then
    result := AddParam(result, 'produto_nome='+ FProdutoNome);
  if (FPosicaoEstoquePeriodo) then
    result := AddParam(result, 'posicao_estoque_periodo=S');
end;

{ TResponseEstoqueGetManual }

constructor TResponseEstoqueGetManual.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEstoqueGetManual.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEstoqueGetManual.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEstoqueGetManual.new(parent: IResponse): IResponseEstoqueGetManual;
begin
  result := TResponseEstoqueGetManual.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEstoqueGetManual.Obj: TResponseClassEstoqueGetManual;
begin
  result := FObj;
end;

{ TResponseEstoqueGet }

constructor TResponseEstoqueGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEstoqueGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEstoqueGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEstoqueGet.new(parent: IResponse): IResponseEstoqueGet;
begin
  result := TResponseEstoqueGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEstoqueGet.Obj: TResponseClassEstoqueGet;
begin
  result := FObj;
end;

{ TResponseEstoquePostManual }

constructor TResponseEstoquePostManual.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassEstoquePostManual.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseEstoquePostManual.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseEstoquePostManual.new(parent: IResponse): IResponseEstoquePostManual;
begin
  result := TResponseEstoquePostManual.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseEstoquePostManual.Obj: TResponseClassEstoquePostManual;
begin
  result := FObj;
end;

end.
