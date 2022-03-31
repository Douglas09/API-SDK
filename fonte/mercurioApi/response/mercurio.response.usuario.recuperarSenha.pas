unit mercurio.response.usuario.recuperarSenha;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassUsuarioRecuperarSenha = class
  private
    [Coluna('mensagem')]
    FMensagem: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Mensagem: string read FMensagem write FMensagem;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassUsuarioRecuperarSenha }

constructor TResponseClassUsuarioRecuperarSenha.Create;
begin
end;

destructor TResponseClassUsuarioRecuperarSenha.Destroy;
begin

  inherited;
end;

constructor TResponseClassUsuarioRecuperarSenha.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassUsuarioRecuperarSenha.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

end.
