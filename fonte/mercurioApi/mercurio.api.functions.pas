unit mercurio.api.functions;

interface

uses Json;

type
  /// <summary> Utilizado para mapeasão dos parâmetros RESPONSE </summary>
  Coluna = class(TCustomAttribute)
  private
    FColuna : string;
  public
    Constructor Create(aColuna : string);
    property Coluna : string read FColuna;
  end;

  TJSONObjectHelper = class helper for TJSONObject
  public
    function AddPair(const Str: string; const Val: double): TJSONObject; overload;
    function AddPair(const Str: TJSONString; const Val: double): TJSONObject; overload;

    function AddPair(const Str: string; const Val: Integer): TJSONObject; overload;
    function AddPair(const Str: TJSONString; const Val: Integer): TJSONObject; overload;
  end;

/// <summary> Adiciona um novo par ao objeto json </summary>
function JsonAddPair(obj : TJSonObject; field : String; value : String): TJSONObject;

/// <summary> Lê o conteúdo de um arquivo </summary>
function FileRead(arquivo : String) : String;
/// <summary> Salva um arquivo no diretório passado por parâmetro </summary>
procedure FileWrite(arquivo, valor : String);

/// <summary> Esta função serve para adicionar parâmetros na URL </summary>
function AddHeaderParams(value : string; newValue : string) : string;

/// <summary> Limpa da memória a referência de um objeto </summary>
procedure MyFreeAndNil(const [ref] Obj: TObject);

implementation

uses System.SysUtils, System.IOUtils;

function JsonAddPair(obj : TJSonObject; field : String; value : String): TJSONObject; overload;
begin
  if (assigned(obj)) and (field <> '') then
  begin
    try obj.RemovePair(field).Free; except end;
    try obj.AddPair(field, value); except end;
  end;
  result := obj;
end;

function FileRead(arquivo : String) : String;
begin
  result := '';
  if (FileExists(arquivo)) then
    result := TFile.ReadAllText( arquivo );
end;

procedure FileWrite(arquivo, valor : String);
begin
  if not (DirectoryExists(ExtractFilePath(arquivo))) then
    ForceDirectories(ExtractFilePath(arquivo));
  if not (DirectoryExists(ExtractFilePath(arquivo))) then
    CreateDir(ExtractFilePath(arquivo));
  if (arquivo <> '') then
    TFile.WriteAllText(arquivo, valor);
end;

function AddHeaderParams(value : string; newValue : string) : string;
begin
  result := value;
  if (Trim(newValue) = '') then
    exit;

  if (Trim(value) <> '') then
    result := value +'&'+ newValue
  else
    result := newValue;
end;

procedure MyFreeAndNil(const [ref] Obj: TObject);
begin
  if not (assigned(Obj)) or (Obj = nil) then
    exit;

  {$IFDEF ANDROID}
    Obj.DisposeOf;
  {$ELSE}
    FreeAndNil(Obj);
  {$ENDIF}
end;

{ Coluna }

constructor Coluna.Create(aColuna: string);
begin
  FColuna := aColuna;
end;

{ TJSONObjectHelper }

function TJSONObjectHelper.AddPair(const Str: string; const Val: double): TJSONObject;
begin
  result := self;
  self.AddPair(Str, TJSONNumber.Create(Val));
end;

function TJSONObjectHelper.AddPair(const Str: TJSONString; const Val: double): TJSONObject;
begin
  result := self;
  self.AddPair(Str, TJSONNumber.Create(Val));
end;

function TJSONObjectHelper.AddPair(const Str: string; const Val: Integer): TJSONObject;
begin
  result := self;
  self.AddPair(Str, TJSONNumber.Create(Val));
end;

function TJSONObjectHelper.AddPair(const Str: TJSONString; const Val: Integer): TJSONObject;
begin
  result := self;
  self.AddPair(Str, TJSONNumber.Create(Val));
end;

end.
