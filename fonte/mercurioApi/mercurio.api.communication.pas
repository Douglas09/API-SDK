unit mercurio.api.communication;

interface

uses Json, System.Net.URLClient, System.Net.HttpClientComponent, System.Net.HttpClient,
     System.Classes, System.SysUtils, mercurio.api.functions;

type
  THTTPSecureProtocol = System.Net.HttpClient.THTTPSecureProtocol;
  THTTPSecureProtocols = set of THTTPSecureProtocol;
  IHTTPResponse = System.Net.HttpClient.IHTTPResponse;

  IResponse = interface
    ['{E333A537-2004-4E69-ABDE-38A202BF0382}']
    function GetResponse : IHTTPResponse;
    function GetResponseData : string;
  end;

  TResponse = class(TInterfacedObject, IResponse)
  PRIVATE
    FResponse : IHTTPResponse;
    FResponseData : string;
  public
    function GetResponse : IHTTPResponse;
    function GetResponseData : string;

    class function New(pResponse : IHTTPResponse; pResponseData : string) : IResponse;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
  end;

  /// <summary> Caso de algum erro durante a comucaniçaõ com a api da JUNO, este evento é disparado </summary>
  TOnCommunicationError = procedure(const Response : IResponse; StatusCode : integer; StatusMessage : string) of object;
  /// <summary> Este evento é disparado somente quando uma chamada de api não for autorizada </summary>
  TOnUnauthorized = procedure() of object;

  IApi = interface
    ['{12A3C834-2BC9-49BE-A7BD-1AEFCBBC063A}']
    function HeaderCustom(pColumn, pValue : string) : IApi;
    function Put(pCurl : string; pParam : TJSonObject) : IResponse;
    function Delete(pCurl : string) : IResponse; overload;
    function Post(pCurl : string; pParam : TJSonObject) : IResponse; overload;
    function Post(pCurl : string; pParam : TStringList) : IResponse; overload;
    function Post(pCurl : string; pParam : TStringStream = nil) : IResponse; overload;
    function Post(pCurl : string; pParam : TMemoryStream; pFileName : string) : IResponse; overload;
    function Post(pCurl : string; pParamFilePath : string) : IResponse; overload;
    function Patch(pCurl : string; pParam : TStringStream = nil) : IResponse; overload;
    function Patch(pCurl : string; pParam : TJSONObject) : IResponse; overload;
    function DownloadFile(pCurl : string; pSaveFile : string) : IResponse; overload;
    function Get(pCurl : string) : IResponse;
    function SetSecureProtocols(Value: THTTPSecureProtocols) : IApi; overload;
    function SetCommunicationError(const value : TOnCommunicationError) : IApi;
  end;

  TApi = class(TInterfacedObject, IApi)
  private
    http : TNetHttpClient;
    FTimeoutRequest: integer;
    FTimeoutResponse: integer;
    FAuthorization: string;
    FHeader: TStringList;
    FSecureProtocols: THTTPSecureProtocols;
    FOnCommunicationError : TOnCommunicationError;
    FOnUnauthorized: TOnUnauthorized;
    procedure SetTimeoutRequest(const Value: integer);
    procedure SetTimeoutResponse(const Value: integer);
    procedure SetAuthorization(const Value: string);
    procedure SetOnCommunicationError(const Value: TOnCommunicationError);
    procedure SetOnUnauthorized(const Value: TOnUnauthorized);
  protected
    procedure CommunicationError(const Response : IResponse; StatusCode : integer; StatusMessage : string);
  public
    property Authorization : string read FAuthorization write SetAuthorization;
    property TimeoutRequest : integer read FTimeoutRequest write SetTimeoutRequest;
    property TimeoutResponse : integer read FTimeoutResponse write SetTimeoutResponse;
    property Header : TStringList read FHeader;
    property OnCommunicationError : TOnCommunicationError read FOnCommunicationError write SetOnCommunicationError;
    property OnUnauthorized : TOnUnauthorized read FOnUnauthorized write SetOnUnauthorized;


    function SetSecureProtocols(Value: THTTPSecureProtocols) : IApi; overload;
    function SetCommunicationError(const value : TOnCommunicationError) : IApi;

    procedure HeaderCustomAdd(pColumn, pValue : string);
    function HeaderCustom(pColumn, pValue : string) : IApi;
    function Put(pCurl : string; pParam : TJSonObject) : IResponse;

    function Delete(pCurl : string) : IResponse; overload;
    function Post(pCurl : string; pParam : TJSonObject) : IResponse; overload;
    function Post(pCurl : string; pParam : TStringList) : IResponse; overload;
    function Post(pCurl : string; pParam : TStringStream = nil) : IResponse; overload;
    function Post(pCurl : string; pParam : TMemoryStream; pFileName : string) : IResponse; overload;
    function Post(pCurl : string; pParamFilePath : string) : IResponse; overload;
    function Patch(pCurl : string; pParam : TStringStream = nil) : IResponse; overload;
    function Patch(pCurl : string; pParam : TJSONObject) : IResponse; overload;
    function DownloadFile(pCurl : string; pSaveFile : string) : IResponse; overload;
    function Get(pCurl : string) : IResponse;

    class function New(pAuthorization : string; pRequestTimeOut : integer = 20000; pResponseTimeout : integer = 20000) : IApi;
    constructor create(pAuthorization : string = ''; pRequestTimeOut : integer = 20000; pResponseTimeout : integer = 20000);
    destructor destroy; override;
  end;

implementation

uses System.Net.Mime, IdGlobalProtocols;

{ TApi }

procedure TApi.CommunicationError(const Response: IResponse; StatusCode: integer; StatusMessage: string);
begin
  //Unauthorized -> Apaga o token temporário salvo no dispositivo que está utilizando este SDK
  if (StatusCode = 401) or (StatusMessage = 'Unauthorized') then
    if (assigned(FOnUnauthorized)) then
      FOnUnauthorized;

  if (assigned(FOnCommunicationError)) then
    FOnCommunicationError(Response, StatusCode, StatusMessage);
end;

constructor TApi.create(pAuthorization : string = ''; pRequestTimeOut : integer = 20000; pResponseTimeout : integer = 20000);
begin
  http := TNetHTTPClient.Create(nil);
  http.Asynchronous := false;
  TimeoutRequest := pRequestTimeOut;
  TimeoutResponse := pResponseTimeout;
  Authorization := pAuthorization;

  FHeader := TStringList.Create;
end;

function TApi.Delete(pCurl: string): IResponse;
var url : string;
    response : TStringStream;
    x : integer;
    return : IHTTPResponse;
begin
  result := nil;
  url := pCurl;

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept']        := 'application/json';
    end;
    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Delete(url, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

destructor TApi.destroy;
begin
  FOnCommunicationError := nil;
  MyFreeAndNil(http);
  MyFreeAndNil(FHeader);
  inherited;
end;

function TApi.DownloadFile(pCurl, pSaveFile: string): IResponse;
var url : string;
    response : TFileStream;
    return : IHTTPResponse;
    x : integer;
begin
  result := nil;
  url := pCurl;

  if not (DirectoryExists(ExtractFilePath(pSaveFile))) then
    ForceDirectories(ExtractFilePath(pSaveFile));
  if FileExists(pSaveFile) then
    DeleteFile(pSaveFile);

  response := TFileStream.Create(pSaveFile, fmCreate);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept'] := 'application/json';
    end;
    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.SecureProtocols := FSecureProtocols;
    http.Asynchronous := false;

    return := http.Get(url, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, pSaveFile);
  finally
    MyFreeAndNil(response);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

function TApi.Get(pCurl : string) : IResponse;
var url : string;
    response : TStringStream;
    return : IHTTPResponse;
    x : integer;
begin
  result := nil;
  url := pCurl;

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept']        := 'application/json';
    end;
    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.SecureProtocols := FSecureProtocols;
    http.Asynchronous := false;

    return := http.Get(url, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

procedure TApi.HeaderCustomAdd(pColumn, pValue: string);
begin
  if (pColumn = '') or (pValue = '') then
    exit;

  FHeader.Add(pColumn +'='+ pValue);
end;

function TApi.HeaderCustom(pColumn, pValue: string): IApi;
begin
  result := self;
  if (pColumn = '') or (pValue = '') then
    exit;

  FHeader.Add(pColumn +'='+ pValue);
end;

class function TApi.New(pAuthorization: string; pRequestTimeOut, pResponseTimeout: integer): IApi;
begin
  result := TApi.create(pAuthorization, pRequestTimeOut, pResponseTimeout);
end;

function TApi.Post(pCurl : string; pParam : TJSonObject) : IResponse;
var request : TStringStream;
begin
  request := nil;
  if (pParam <> nil) then
  begin
    request := TStringStream.Create(pParam.ToJSON, TEncoding.UTF8);
    request.Position := 0;
  end;

  try
    result := self.Post(pCurl, request);
  finally
    MyFreeAndNil(request);
  end;
end;

function TApi.Post(pCurl: string; pParam: TStringList): IResponse;
var request : TStringStream;
begin
  request := nil;
  if (pParam <> nil) then
  begin
    request := TStringStream.Create(
      StringReplace(pParam.Text, #$D#$A, '', [rfReplaceAll]),
      TEncoding.UTF8
    );
    request.Position := 0;
  end;

  try
    result := self.Post(pCurl, request);
  finally
    MyFreeAndNil(request);
  end;
end;

function TApi.Post(pCurl: string; pParam: TStringStream = nil): IResponse;
var url : string;
    response : TStringStream;
    x : integer;
    return : IHTTPResponse;
begin
  result := nil;
  return := nil;
  url := pCurl;

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept'] := 'application/json';
    end;

    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Post(url, pParam, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);
    
    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

function TApi.Patch(pCurl: string; pParam: TJSONObject): IResponse;
var request : TStringStream;
begin
  request := nil;
  if (pParam <> nil) then
  begin
    request := TStringStream.Create(pParam.ToJSON, TEncoding.UTF8);
    request.Position := 0;
  end;

  try
    result := self.Patch(pCurl, request);
  finally
    MyFreeAndNil(request);
  end;
end;

function TApi.Patch(pCurl: string; pParam: TStringStream): IResponse;
var url : string;
    response : TStringStream;
    x : integer;
    return : IHTTPResponse;
begin
  result := nil;
  return := nil;
  url := pCurl;

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept'] := 'application/json';
    end;

    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Patch(url, pParam, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

function TApi.Post(pCurl, pParamFilePath: string): IResponse;
var url, contentType : string;
    response : TStringStream;
    x : integer;
    return : IHTTPResponse;
    payload : TMultipartFormData;
begin
  result := nil;
  return := nil;
  url := pCurl;
  if not (fileExists(pParamFilePath)) then
    exit;

  contentType := GetMIMETypeFromFile(pParamFilePath);

  payload := TMultipartFormData.Create;
  payload.AddField('main', 'true');
  payload.AddFile('file', pParamFilePath, contentType);

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept'] := 'application/json';
    end;

    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Post(url, payload, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    MyFreeAndNil(payload);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

function TApi.Post(pCurl: string; pParam: TMemoryStream; pFileName : string): IResponse;
var typeFile, url : string;
    response : TStringStream;
    x : integer;
    return : IHTTPResponse;
    payload : TMultipartFormData;
begin
  result := nil;
  return := nil;
  url := pCurl;
  if not (assigned(pParam)) then
    exit;

  typeFile := GetMIMETypeFromFile(pFileName);

  payload := TMultipartFormData.Create;
  payload.AddStream('files', pParam, pFileName, typeFile);

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept'] := 'application/json';
    end;

    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Post(url, payload, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    MyFreeAndNil(payload);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

function TApi.Put(pCurl : string; pParam : TJSonObject) : IResponse;
var url : string;
    request, response : TStringStream;
    x : integer;
    return : IHTTPResponse;
begin
  result := nil;
  url := pCurl;
  if (pParam <> nil) then
  begin
    request := TStringStream.Create(pParam.ToJSON, TEncoding.UTF8);
    request.Position := 0;
  end;

  response := TStringStream.Create('', TEncoding.UTF8);
  try
    if (FHeader.Count <= 0) then
    begin
      http.ContentType := 'application/json';
      http.CustomHeaders['Accept']        := 'application/json';
    end;

    if (self.Authorization <> '') and (FHeader.Count <= 0) then
      http.CustomHeaders['Authorization'] := self.Authorization;

    for x := 0 to FHeader.Count - 1 do
      http.CustomHeaders[Copy(FHeader[x], 1, pos('=', FHeader[x]) - 1)] :=
        Copy(FHeader[x], pos('=', FHeader[x]) + 1, length(FHeader[x]));

    http.Asynchronous := false;
    http.SecureProtocols := FSecureProtocols;

    return := http.Put(url, request, response);
    if (return.StatusCode <> 200) then
      CommunicationError(result, return.StatusCode, return.StatusText);

    result := TResponse.New(return, response.DataString);
  finally
    MyFreeAndNil(response);
    MyFreeAndNil(request);
    FHeader.Clear;
    http.CustHeaders.Clear;
  end;
end;

procedure TApi.SetAuthorization(const Value: string);
begin
  FAuthorization := Value;
end;

function TApi.SetCommunicationError(const value: TOnCommunicationError): IApi;
begin
  result := self;
  FOnCommunicationError := value;
end;

procedure TApi.SetOnCommunicationError(const Value: TOnCommunicationError);
begin
  FOnCommunicationError := Value;
end;

procedure TApi.SetOnUnauthorized(const Value: TOnUnauthorized);
begin
  FOnUnauthorized := Value;
end;

function TApi.SetSecureProtocols(Value: THTTPSecureProtocols) : IApi;
begin
  result := self;
  FSecureProtocols := Value;
end;

procedure TApi.SetTimeoutRequest(const Value: integer);
begin
  FTimeoutRequest := Value;
  http.ConnectionTimeout := FTimeoutRequest;
end;

procedure TApi.SetTimeoutResponse(const Value: integer);
begin
  FTimeoutResponse := Value;
  http.ResponseTimeout := FTimeoutResponse;
end;

{ TResponse }

constructor TResponse.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  FResponse := pResponse;
  FResponseData := pResponseData;
end;

destructor TResponse.Destroy;
begin
  if (assigned(FResponse)) then
    FResponse := nil;
  inherited;
end;

function TResponse.GetResponse: IHTTPResponse;
begin
  result := FResponse;
end;

function TResponse.GetResponseData: string;
begin
  result := FResponseData;
end;

class function TResponse.New(pResponse: IHTTPResponse; pResponseData: string): IResponse;
begin
  result := TResponse.Create(pResponse, pResponseData);
end;

end.

