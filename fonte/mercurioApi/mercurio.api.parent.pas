unit mercurio.api.parent;

interface

uses mercurio.api.login, json, mercurio.api.communication, mercurio.api.classes;

type
  THTTPSecureProtocol = mercurio.api.communication.THTTPSecureProtocol;
  THTTPSecureProtocols = mercurio.api.communication.THTTPSecureProtocols;
  IHTTPResponse = mercurio.api.communication.IHTTPResponse;
  IResponse = mercurio.api.communication.IResponse;
  TResponse = mercurio.api.communication.TResponse;
  IApi = mercurio.api.communication.IApi;
  TApi = mercurio.api.communication.TApi;

  TMercurioPai = class
  private
    FAuth : TMercurioLogin;
    FAmbiente: TMercurioAmbiente;
    FApi : TApi;
    FOnInternalError: TOnInternalError;
    procedure SetAmbiente(const Value: TMercurioAmbiente);
    procedure SetOnInternalError(const Value: TOnInternalError);
  protected
    function Api : TApi;
  public
    constructor Create(var Auth : TMercurioLogin);
    destructor Destroy; override;

    property Auth : TMercurioLogin read FAuth;
    property Ambiente : TMercurioAmbiente read FAmbiente write SetAmbiente;

    /// <summary> Evento disparado ao gerar uma exceção dentro das classes do mercúrio API </summary>
    property OnInternalError : TOnInternalError read FOnInternalError write SetOnInternalError;
  end;

  IPayload = interface
    ['{F815C0FE-32C9-4A1F-A3F6-4E9785E3B87D}']
  end;
  TPayload = class(TInterfacedObject, IPayload)
  public
    constructor Create;
    destructor Destroy; override;
  end;

  IPayloadGet = interface(IPayload)
    ['{54D34537-FC96-466D-88DA-F38FBCCD84D8}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Campos que deseja que a api retorne (SQL - FIELDS) </summary>
    function setFields(const value : string) : IPayloadGet;
    /// <summary> Campos que deseja que a api retorne (SQL - FIELDS) </summary>
    function getFields : string;
    /// <summary> Campo para montar a SQL personalizada (SQL - WHERE) </summary>
    function setWhere(const value : string) : IPayloadGet;
    /// <summary> Campo para montar a SQL personalizada (SQL - WHERE) </summary>
    function getWhere : string;
    /// <summary> Fields para ordenação do response (SQL - ORDER BY) </summary>
    function setOrderBy(const value : string) : IPayloadGet;
    /// <summary> Fields para ordenação do response (SQL - ORDER BY) </summary>
    function getOrderBy : string;
    /// <summary> Paginação -> Registro inicial da lista de registros </summary>
    function setRegistroInicial(const value : string) : IPayloadGet;
    /// <summary> Paginação -> Registro inicial da lista de registros </summary>
    function getRegistroInicial : string;
    /// <summary> Paginação -> Quantidade de registros a serem retornados </summary>
    function setQtdeRegistros(const value : string) : IPayloadGet;
    /// <summary> Paginação -> Quantidade de registros a serem retornados </summary>
    function getQtdeRegistros : string;
    /// <summary> Paginação -> Retorna a quantidade total de registros existentes </summary>
    function setTotalRegistros(const value : boolean = false) : IPayloadGet;
    /// <summary> Paginação -> Retorna a quantidade total de registros existentes </summary>
    function getTotalRegistros : boolean;
    /// <summary> Caso preenchido, filtra todos os registros que sofreram alteração após a data informada </summary>
    function setUltimaAlteracao(const value : TDateTime) : IPayloadGet;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TPayloadGet = class(TPayload, IPayloadGet)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FFields : string;
    FWhere : string;
    FOrderBy : string;
    FRegistroInicial : string;
    FQtdeRegistros : string;
    FTotalRegistros : boolean;
    FUltimaAlteracao : TDateTime;
  protected

    function AddParam(const paramsList, new : string) : string;
  public
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadGet;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Campos que deseja que a api retorne </summary>
    function setFields(const value : string) : IPayloadGet;
    /// <summary> Campos que deseja que a api retorne </summary>
    function getFields : string;
    /// <summary> Campo para montar a SQL personalizada </summary>
    function setWhere(const value : string) : IPayloadGet;
    /// <summary> Campo para montar a SQL personalizada </summary>
    function getWhere : string;
    /// <summary> Fields para ordenação do response </summary>
    function setOrderBy(const value : string) : IPayloadGet;
    /// <summary> Fields para ordenação do response </summary>
    function getOrderBy : string;
    /// <summary> Paginação -> Registro inicial da lista de registros </summary>
    function setRegistroInicial(const value : string) : IPayloadGet;
    /// <summary> Paginação -> Registro inicial da lista de registros </summary>
    function getRegistroInicial : string;
    /// <summary> Paginação -> Quantidade de registros a serem retornados </summary>
    function setQtdeRegistros(const value : string) : IPayloadGet;
    /// <summary> Paginação -> Quantidade de registros a serem retornados </summary>
    function getQtdeRegistros : string;
    /// <summary> Paginação -> Retorna a quantidade total de registros existentes </summary>
    function setTotalRegistros(const value : boolean = false) : IPayloadGet;
    /// <summary> Paginação -> Retorna a quantidade total de registros existentes </summary>
    function getTotalRegistros : boolean;
    /// <summary> Caso preenchido, filtra todos os registros que sofreram alteração após a data informada </summary>
    function setUltimaAlteracao(const value : TDateTime) : IPayloadGet;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; virtual;
  end;

  IPayloadPost = interface(IPayload)
    ['{3E67B0D0-F09D-45EC-A0AC-41262444AC48}']
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadPost;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadPost;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona manualmente o corpo do payload da requisição </summary>
    function setPayload(const value : TJSONObject) : IPayloadPost;

    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TPayloadPost = class(TPayload, IPayloadPost)
  private
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;

    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadPost;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadPost;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Adiciona manualmente o corpo do payload da requisição </summary>
    function setPayload(const value : TJSONObject) : IPayloadPost;
    /// <summary> Retorna o corpo do payload </summary>
    function getPayload : TJSONObject;

    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue; virtual;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IPayloadPut = interface(IPayload)
    ['{61AD8028-6047-4EC0-80A6-290798AD6971}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;

    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue;
  end;
  TPayloadPut = class(TPayload, IPayloadPut)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
  public
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadPut;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;

    /// <summary> Monta o payload </summary>
    function toJson : TJSONValue; virtual;
  end;

  IPayloadDelete = interface(IPayload)
    ['{0269F66A-B1F9-4043-B96C-5CB43BE355B1}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;
  TPayloadDelete = class(TPayload, IPayloadDelete)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
  public
    class function new : IPayloadDelete;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IPayloadDelete;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

implementation

uses
  System.SysUtils, mercurio.api.functions;

{ TMercurioPai }

function TMercurioPai.Api: TApi;
begin
  result := FApi;
end;

constructor TMercurioPai.Create(var Auth: TMercurioLogin);
begin
  FAuth := Auth;
  FApi := Auth.Api;
end;

destructor TMercurioPai.Destroy;
begin
  FAuth := nil;
  FApi := nil;
  inherited;
end;

procedure TMercurioPai.SetAmbiente(const Value: TMercurioAmbiente);
begin
  FAmbiente := Value;
end;

procedure TMercurioPai.SetOnInternalError(const Value: TOnInternalError);
begin
  FOnInternalError := Value;
end;

{ TPayloadPost }

constructor TPayloadPost.Create;
var arr: TJSONArray;
begin
  FEmpresaIdpk := '';
  FFilialIdpk := '';

  FPayload := TJSONObject.Create;
  arr := TJSONArray.Create;
  FPayload.AddPair('registros', arr);
end;

destructor TPayloadPost.Destroy;
begin
  MyFreeAndNil(FPayload);
  inherited;
end;

function TPayloadPost.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TPayloadPost.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TPayloadPost.getPayload: TJSONObject;
begin
  result := FPayload;
end;

function TPayloadPost.setEmpresaIdpk(const value: string): IPayloadPost;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TPayloadPost.setFilialIdpk(const value: string): IPayloadPost;
begin
  result := self;
  FFilialIdpk := value;
end;

function TPayloadPost.setPayload(const value: TJSONObject): IPayloadPost;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TPayloadPost.toJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TPayloadPost.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+ FFilialIdpk);

  if (trim(result) <> '') then
    result := '?'+ result;
end;

{ TPayload }

constructor TPayload.Create;
begin

end;

destructor TPayload.Destroy;
begin

  inherited;
end;

{ TPayloadGet }

function TPayloadGet.AddParam(const paramsList, new: string): string;
begin
  if (new = '') then
    exit;

  if (trim(paramsList) <> '') then
    result := paramsList +'&'+ new
  else
    result := new;
end;

constructor TPayloadGet.Create;
begin
  inherited;
  FTotalRegistros := false;
  FRegistroInicial := '0';
  FQtdeRegistros := '10';
  FUltimaAlteracao := 0;
end;

destructor TPayloadGet.Destroy;
begin

  inherited;
end;

function TPayloadGet.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TPayloadGet.getFields: string;
begin
  result := FFields;
end;

function TPayloadGet.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TPayloadGet.getIdpk: string;
begin
  result := FIdpk;
end;

function TPayloadGet.getOrderBy: string;
begin
  result := FOrderBy;
end;

function TPayloadGet.getQtdeRegistros: string;
begin
  result := FQtdeRegistros;
end;

function TPayloadGet.getRegistroInicial: string;
begin
  result := FRegistroInicial;
end;

function TPayloadGet.getTotalRegistros: boolean;
begin
  result := FTotalRegistros;
end;

function TPayloadGet.getWhere: string;
begin
  result := FWhere;
end;

function TPayloadGet.setEmpresaIdpk(const value: string): IPayloadGet;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TPayloadGet.setFields(const value: string): IPayloadGet;
begin
  result := self;
  FFields := value;
end;

function TPayloadGet.setFilialIdpk(const value: string): IPayloadGet;
begin
  result := self;
  FFilialIdpk := value;
end;

function TPayloadGet.setIdpk(const value: string): IPayloadGet;
begin
  result := self;
  FIdpk := value;
end;

function TPayloadGet.setOrderBy(const value: string): IPayloadGet;
begin
  result := self;
  FOrderBy := value;
end;

function TPayloadGet.setQtdeRegistros(const value: string): IPayloadGet;
begin
  result := self;
  FQtdeRegistros := value;
end;

function TPayloadGet.setRegistroInicial(const value: string): IPayloadGet;
begin
  result := self;
  FRegistroInicial := value;
end;

function TPayloadGet.setTotalRegistros(const value: boolean): IPayloadGet;
begin
  result := self;
  FTotalRegistros := value;
end;

function TPayloadGet.setUltimaAlteracao(const value: TDateTime): IPayloadGet;
begin
  result := self;
  FUltimaAlteracao := value;
end;

function TPayloadGet.setWhere(const value: string): IPayloadGet;
begin
  result := self;
  FWhere := value;
end;

function TPayloadGet.toParams: string;
var params : string;
begin
  result := '';
  if (FIdpk <> '') then
    result := result +'/'+ FIdpk;

  params := '';
  if (FEmpresaIdpk <> '') then
    params := AddParam(params, 'empresa_idpk='+ FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    params := AddParam(params, 'filial_idpk='+ FFilialIdpk);
  if (FFields <> '') then
    params := AddParam(params, 'fields='+ FFields);
  if (FWhere <> '') then
    params := AddParam(params, 'where='+ FWhere);
  if (FOrderBy <> '') then
    params := AddParam(params, 'orderby='+ FOrderBy);
  if (FRegistroInicial <> '') then
    params := AddParam(params, 'registro_inicial='+ FRegistroInicial);
  if (FQtdeRegistros <> '') then
    params := AddParam(params, 'qtde_registros='+ FQtdeRegistros);
  if (FTotalRegistros) then
    params := AddParam(params, 'total_registros=S');
  if (FUltimaAlteracao <> 0) then
    params := AddParam(params, 'ultima_alteracao='+
      FormatDateTime('DD-MM-YYYY HH:MM:SS', FUltimaAlteracao));

  if (params <> '') then
    result := result +'?'+ params;
end;

{ TPayloadPut }

function TPayloadPut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TPayloadPut.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TPayloadPut.getIdpk: string;
begin
  result := FIdpk;
end;

function TPayloadPut.setEmpresaIdpk(const value: string): IPayloadPut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TPayloadPut.setFilialIdpk(const value: string): IPayloadPut;
begin
  result := self;
  FFilialIdpk := value;
end;

function TPayloadPut.setIdpk(const value: string): IPayloadPut;
begin
  result := self;
  FIdpk := value;
end;

function TPayloadPut.toJson: TJSONValue;
begin
  result := nil;
end;

{ TPayloadDelete }

function TPayloadDelete.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TPayloadDelete.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TPayloadDelete.getIdpk: string;
begin
  result := FIdpk;
end;

class function TPayloadDelete.new: IPayloadDelete;
begin
  result := TPayloadDelete.Create;
end;

function TPayloadDelete.setEmpresaIdpk(const value: string): IPayloadDelete;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TPayloadDelete.setFilialIdpk(const value: string): IPayloadDelete;
begin
  result := self;
  FFilialIdpk := value;
end;

function TPayloadDelete.setIdpk(const value: string): IPayloadDelete;
begin
  result := self;
  FIdpk := value;
end;

function TPayloadDelete.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result := AddHeaderParams(result, 'filial_idpk='+FFilialIdpk);
  
  result := '?'+ result;
  if (FIdpk <> '') then
    result := '/'+ FIdpk + result;
end;

end.
