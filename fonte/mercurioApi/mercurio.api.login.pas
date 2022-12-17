unit mercurio.api.login;

interface

uses Json, mercurio.api.functions, mercurio.api.communication, mercurio.api.classes,
     mercurio.response.login.logar, mercurio.response.login.renovar, mercurio.response.login.logof;

type
  ILogarParams = interface
    ['{B4149ECE-1A98-4475-8BAE-48ABC2CF6021}']
    /// <summary> Código único do sistema </summary>
    function setSistemaIdpk(const value : string) : ILogarParams;
    /// <summary> Email do usuário para login </summary>
    function setEmail(const value : string) : ILogarParams;
    /// <summary> Email do usuário para login </summary>
    function getEmail : string;
    /// <summary> Senha do usuário para login </summary>
    function setSenha(const value : string) : ILogarParams;
    /// <summary> Senha do usuário para login </summary>
    function getSenha : string;

    /// <summary> Gera o Payload </summary>
    function toJson : TJSONValue;
  end;

  TLogarParams = class(TInterfacedObject, ILogarParams)
  private
    FSistemaIdpk : string;
    FEmail : string;
    FSenha : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : ILogarParams;

    /// <summary> Código único do sistema </summary>
    function setSistemaIdpk(const value : string) : ILogarParams;
    /// <summary> Email do usuário para login </summary>
    function setEmail(const value : string) : ILogarParams;
    /// <summary> Email do usuário para login </summary>
    function getEmail : string;
    /// <summary> Senha do usuário para login </summary>
    function setSenha(const value : string) : ILogarParams;
    /// <summary> Senha do usuário para login </summary>
    function getSenha : string;
    /// <summary> Gera o Payload </summary>
    function toJson : TJSONValue;
  end;

  IResponseLogar = interface(IResponse)
    ['{A4640BE7-9898-4880-AD56-D97F47D050BA}']
    function Obj : TResponseClassLogin;
  end;
  TResponseLogar = class(TResponse, IResponseLogar)
  private
    FObj : TResponseClassLogin;
  public
    class function new(parent : IResponse) : IResponseLogar;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassLogin;
  end;

  IResponseRenovar = interface(IResponse)
    ['{492EBBAE-6E15-440B-BA74-42AA760BA6DD}']
    function Obj : TResponseClassRenovar;
  end;
  TResponseRenovar = class(TResponse, IResponseRenovar)
  private
    FObj : TResponseClassRenovar;
  public
    class function new(parent : IResponse) : IResponseRenovar;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassRenovar;
  end;

  IResponseLogof = interface(IResponse)
    ['{8055003E-6428-43A8-92E5-290B7E42022F}']
    function Obj : TResponseClassLogof;
  end;
  TResponseLogof = class(TResponse, IResponseLogof)
  private
    FObj : TResponseClassLogof;
  public
    class function new(parent : IResponse) : IResponseLogof;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassLogof;
  end;

  TMercurioLogin = class
  private
    FToken: string;
    FTokenExpiration: TDateTime;
    FEmail : string;
    FSenha : string;
    FAmbiente: TMercurioAmbiente;
    FApi : TApi;
    FOnInternalError: TOnInternalError;
    procedure SetToken(const Value: string);
    procedure SetTokenExpiration(const Value: TDateTime);
    procedure SetAmbiente(const Value: TMercurioAmbiente);
    procedure SetOnInternalError(const Value: TOnInternalError);
  Strict private
    //rotinas para pegar um token já existente
    procedure LoadAuthentication(email, senha : string);
    /// <summary> Armazena localmente os dados de autenticação (token bearer e tudo mais) </summary>
    procedure SaveAuthentication(email, senha : string; obj : TJSONObject);
    /// <summary> remove os dados de autenticação salvos temporariamente no dispositivo </summary>
    procedure RemoveAuthentication(email : string);
    /// <summary> Puxa as configurações salvas da autenticação </summary>
    function GetAuthentication(email : string) : TJSONObject;
  public
    constructor Create(var api : TApi);
    destructor Destroy; override;

    /// <summary> Acessa diretamente aos endpoints da API </summary>
    property Api : TApi read FApi;
    /// <summary> Token de autenticação na Api </summary>
    property Token : string read FToken write SetToken;
    /// <summary> Data e hora da expiração do token de autenticação na Api </summary>
    property TokenExpiration : TDateTime read FTokenExpiration;
    /// <summary> Email que efetuou a autenticação </summary>
    property Email : string read FEmail write FEmail;
    /// <summary> Senha que efetuou a autenticação </summary>
    property Senha : string read FSenha write FSenha;
    /// <summary> Ambiente da API | PRODUÇÃO | HOMOLOGAÇÃO | </summary>
    property Ambiente : TMercurioAmbiente read FAmbiente write SetAmbiente;
    /// <summary> Evento disparado ao gerar uma exceção dentro das classes do mercúrio API </summary>
    property OnInternalError : TOnInternalError read FOnInternalError write SetOnInternalError;

    /// <summary> Limpa a autenticação com a API salsa no dispositivo e na próxima requisição no servidor precisará fazer o login novamente </summary>
    function LimparCache : boolean;

    /// <summary> Efetua o login e autenticação da API </summary>
    function Logar(var params : ILogarParams) : IResponseLogar;
    /// <summary> Renovar token JWT de autenticação </summary>
    function RenovarToken : IResponseRenovar;
    /// <summary> Efetua o logof e a desativação do token da API </summary>
    function Logof : IResponseLogof;
  end;

implementation

{ TMercurioLogin }

uses mercurio.api.consts, System.SysUtils, System.IOUtils, mercurio.api.base64;

constructor TMercurioLogin.Create(var api : TApi);
begin
  FApi := api;
  FToken := '';
  FTokenExpiration := 0;
end;

destructor TMercurioLogin.Destroy;
begin
  FApi := nil;
  FOnInternalError := nil;
  inherited;
end;

function TMercurioLogin.GetAuthentication(email: string): TJSONObject;
var value, filePath : string;
begin
  result := nil;
  if (Trim(email) = '') then
    exit;

  if (FAmbiente = TMercurioAmbiente.amProducao) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'P_login.json'
  else if (FAmbiente = TMercurioAmbiente.amSandbox) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'S_login.json';

  if not (FileExists(filePath)) then
    exit;

  value := mercurio.api.functions.FileRead(filePath);
  if (Trim(value) = '') then
    exit;

  result := TJSONObject(TJSONObject.ParseJSONValue(value));
end;

function TMercurioLogin.LimparCache: boolean;
begin
  result := false;

  if (FToken <> '') and (FTokenExpiration > 0) then
    RemoveAuthentication(FEmail);
end;

procedure TMercurioLogin.LoadAuthentication(email, senha : string);
var filePath, value, tokenExpiracao, senhaSalva : string;
    obj : TJSONObject;
    tokenExp : TDateTime;
begin
  obj := nil;
  if (email = '') or (senha = '') then
    exit;

  if (FAmbiente = TMercurioAmbiente.amProducao) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'P_login.json'
  else if (FAmbiente = TMercurioAmbiente.amSandbox) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'S_login.json';

  if not (FileExists(filePath)) then
    exit;

  value := mercurio.api.functions.FileRead(filePath);
  if (Trim(value) = '') then
    exit;

  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  if (obj = nil) then
    exit;

  try
    //Valida se a senha informada pelo usuário confere com a senha salva
    obj.TryGetValue<string>('senha', senhaSalva);
    senhaSalva := Base64ToString(senhaSalva);
    if (senhaSalva <> senha) then
      exit;

    obj.TryGetValue<string>('token_exp', tokenExpiracao);
    tokenExp := StrToDateTimeDef(tokenExpiracao, 0);

    if (tokenExp <= now) then
    begin
      FTokenExpiration := 0;
      FToken := '';
      DeleteFile(filePath);
    end
    else
    begin
      FTokenExpiration := tokenExp;
      obj.TryGetValue<string>('token', FToken);
      obj.TryGetValue<string>('usu_email', FEmail);
    end;
  finally
    MyFreeAndNil(obj);
  end;
end;

function TMercurioLogin.Logar(var params : ILogarParams) : IResponseLogar;
var response, payload : TJSONObject;
    url, exp : string;
begin
  result := nil;
  payload := nil;
  response := nil;
  if not (assigned(params)) then
    exit
  else if (Trim(params.getEmail) = '') then
  begin
    OnInternalError(self, 'Para efetuar o login, você precisa informar sua conta de email.');
    exit;
  end;

  //confere se já está logado e o token está válido
  FToken := '';
  FTokenExpiration := 0;
  LoadAuthentication(params.getEmail, params.getSenha);
  if (FToken <> '') and (FTokenExpiration > now) then
  begin
    payload := GetAuthentication(params.getEmail);
    if (payload = nil) then
      exit;

    result := TResponseLogar.New(TResponse.New(nil, payload.ToJSON));
    MyFreeAndNil(payload);
    exit;
  end;

  try
    payload := TJSONObject(params.toJson);
    url := getUrl(FAmbiente, urlLogar);

    result := TResponseLogar.new(FApi.Post(url, payload));

    response := TJSONObject(TJSONObject.ParseJSONValue(result.GetResponseData));

    TFile.WriteAllText('C:\a\1.txt', ' '+ response.Format());

    if (response = nil) then
      exit;

    response.TryGetValue<string>('token', FToken);
    response.TryGetValue<string>('token_exp', exp);
    FTokenExpiration := StrToDateTimeDef(exp, 0);
    response.TryGetValue<string>('usu_email', FEmail);
    FSenha := params.getSenha;

    //salva os dados de autenticação localmente para não gerar 1 novo token a cada login
    SaveAuthentication(FEmail, FSenha, response);
  except
    on E : Exception do
    begin
      if (assigned(FOnInternalError)) then
        FOnInternalError(self, E.Message);
    end;
  end;
  MyFreeAndNil(payload);
  MyFreeAndNil(response);
end;

function TMercurioLogin.Logof: IResponseLogof;
var url : string;
begin
  url := getUrl(Ambiente, urlLogof);
  try
    FApi.HeaderCustomAdd('Authorization', 'Bearer '+ Token);
    result := TResponseLogof.new(FApi.Post(url));

    RemoveAuthentication(FEmail);
  except
    on E : Exception do
    begin
      if (assigned(FOnInternalError)) then
        FOnInternalError(self, E.Message);
    end;
  end;
end;

procedure TMercurioLogin.RemoveAuthentication(email: string);
var filePath : string;
begin
  if (email = '') then
    exit;

  if (FAmbiente = TMercurioAmbiente.amProducao) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'P_login.json'
  else if (FAmbiente = TMercurioAmbiente.amSandbox) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'S_login.json';

  if (FileExists(filePath)) then
    DeleteFile(filePath);

  FToken := '';
  FTokenExpiration := 0;
  FEmail := '';
  FSenha := '';
end;

function TMercurioLogin.RenovarToken: IResponseRenovar;
var exp, url : string;
    response : TJSONObject;
begin
  response := nil;

  if (FToken = '') or (FTokenExpiration <= now) then
  begin
    OnInternalError(self, 'Desculpe, você não pode renovar seu login pois ele expirou.');
    exit;
  end;

  url := getUrl(Ambiente, urlRenovarToken);
  try
    FApi.HeaderCustomAdd('Authorization', 'Bearer '+ FToken);
    result := TResponseRenovar.new(FApi.Post(url));

    response := TJSONObject(TJSONObject.ParseJSONValue(result.GetResponseData));
    if (response = nil) then
      exit;

    response.TryGetValue<string>('token', FToken);
    response.TryGetValue<string>('token_exp', exp);
    FTokenExpiration := StrToDateTimeDef(exp, 0);

    //atualiza os dados de autenticação do usuário localmente
    SaveAuthentication(FEmail, FSenha, response);
  except
    on E : Exception do
    begin
      if (assigned(FOnInternalError)) then
        FOnInternalError(self, E.Message);
    end;
  end;
  MyFreeAndNil(response);
end;

procedure TMercurioLogin.SaveAuthentication(email, senha : string; obj : TJSONObject);
var filePath, value : string;
    objAuth : TJSONObject;
    x: Integer;
begin
  objAuth := nil;
  if (email = '') or (obj = nil) then
    exit;

  //Salva a senha de login do usuário no objeto de retorno da API
  obj.AddPair('senha', StringToBase64(senha));

  value := '';
  if (FAmbiente = TMercurioAmbiente.amProducao) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'P_login.json'
  else if (FAmbiente = TMercurioAmbiente.amSandbox) then
    filePath := TPath.GetPublicPath +PathDelim+ 'mercurioSDK' +PathDelim+ email +PathDelim+ 'S_login.json';

  if (FileExists(filePath)) then
    value := mercurio.api.functions.FileRead(filePath);
  if (Trim(value) <> '') then
  begin
    objAuth := TJSONObject(TJSONObject.ParseJSONValue(value));

    for x := 0 to obj.Count - 1 do
      JsonAddPair(objAuth, obj.Pairs[x].JsonString.Value, obj.Pairs[x].JsonValue.Value);

    mercurio.api.functions.FileWrite(filePath, objAuth.ToJSON);
    MyFreeAndNil(objAuth);
  end
  else
    mercurio.api.functions.FileWrite(filePath, obj.ToJSON);
end;

procedure TMercurioLogin.SetAmbiente(const Value: TMercurioAmbiente);
begin
  FAmbiente := Value;
end;

procedure TMercurioLogin.SetOnInternalError(const Value: TOnInternalError);
begin
  FOnInternalError := Value;
end;

procedure TMercurioLogin.SetToken(const Value: string);
begin
  FToken := Value;
end;

procedure TMercurioLogin.SetTokenExpiration(const Value: TDateTime);
begin
  FTokenExpiration := Value;
end;

{ TLogarParams }

constructor TLogarParams.Create;
begin

end;

destructor TLogarParams.Destroy;
begin

  inherited;
end;

function TLogarParams.getEmail: string;
begin
  result := FEmail;
end;

function TLogarParams.getSenha: string;
begin
  result := FSenha;
end;

class function TLogarParams.new: ILogarParams;
begin
  result := TLogarParams.Create;
end;

function TLogarParams.setEmail(const value: string): ILogarParams;
begin
  result := self;
  FEmail := value;
end;

function TLogarParams.setSenha(const value: string): ILogarParams;
begin
  result := self;
  FSenha := value;
end;

function TLogarParams.setSistemaIdpk(const value: string): ILogarParams;
begin
  result := self;
  FSistemaIdpk := value;
end;

function TLogarParams.toJson: TJSONValue;
var obj : TJSONObject;
begin
  obj := TJSONObject.Create;
  if (FSistemaIdpk <> '') then
    obj.AddPair('sistema_idpk', FSistemaIdpk);
  if (FEmail <> '') then
    obj.AddPair('email', FEmail);
  if (FSenha <> '') then
    obj.AddPair('senha', FSenha);

  result := obj;
end;

{ TResponseLogar }

constructor TResponseLogar.Create(pResponse : IHTTPResponse; pResponseData : string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassLogin.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseLogar.Destroy;
begin
  myFreeAndNil(FObj);
  inherited;
end;

class function TResponseLogar.new(parent : IResponse) : IResponseLogar;
begin
  result := TResponseLogar.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseLogar.Obj: TResponseClassLogin;
begin
  result := FObj;
end;

{ TResponseRenovar }

constructor TResponseRenovar.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassRenovar.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseRenovar.Destroy;
begin
  myFreeAndNil(FObj);
  inherited;
end;

class function TResponseRenovar.new(parent : IResponse) : IResponseRenovar;
begin
  result := TResponseRenovar.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseRenovar.Obj: TResponseClassRenovar;
begin
  result := FObj;
end;

{ TResponseLogof }

constructor TResponseLogof.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassLogof.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseLogof.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseLogof.new(parent: IResponse): IResponseLogof;
begin
  result := TResponseLogof.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseLogof.Obj: TResponseClassLogof;
begin
  result := FObj;
end;

end.
