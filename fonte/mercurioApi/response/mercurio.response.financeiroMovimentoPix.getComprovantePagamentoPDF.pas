unit mercurio.response.financeiroMovimentoPix.getComprovantePagamentoPDF;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassPixComprovantePagamentoPDF = class
  private
    [Coluna('link_url')]
    FLink_url: string;
    [Coluna('file_name')]
    FFile_name: string;
    [Coluna('file_base64')]
    FFile_base64: string;
    [Coluna('status')]
    FStatus: string;
    [Coluna('codigo')]
    FCodigo: string;
    [Coluna('tag')]
    FTag: string;
    [Coluna('mensagem')]
    FMensagem: string;
    [Coluna('mensagem_original')]
    FMensagem_original: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Link_url: string read FLink_url write FLink_url;
    property File_name: string read FFile_name write FFile_name;
    property File_base64: string read FFile_base64 write FFile_base64;
    property Status: string read FStatus write FStatus;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
  end;

implementation

uses System.SysUtils;

{ TResponseClassPixComprovantePagamentoPDF }

constructor TResponseClassPixComprovantePagamentoPDF.Create;
begin
end;

destructor TResponseClassPixComprovantePagamentoPDF.Destroy;
begin

  inherited;
end;

constructor TResponseClassPixComprovantePagamentoPDF.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('link_url', self.FLink_url); except end;
  try value.TryGetValue<string>('file_name', self.FFile_name); except end;
  try value.TryGetValue<string>('file_base64', self.FFile_base64); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
end;

constructor TResponseClassPixComprovantePagamentoPDF.CreateWithJsonString(const value : string);
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
