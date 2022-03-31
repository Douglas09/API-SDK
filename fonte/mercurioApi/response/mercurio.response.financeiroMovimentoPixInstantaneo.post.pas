unit mercurio.response.financeiroMovimentoPixInstantaneo.post;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('fmp_idpk')]
    FFmp_idpk: string;
    [Coluna('fmp_pix_tipo')]
    FFmp_pix_tipo: string;
    [Coluna('fmp_link_qrcode')]
    FFmp_link_qrcode: string;
    [Coluna('fmp_hash')]
    FFmp_hash: string;
    [Coluna('fmp_descricao')]
    FFmp_descricao: string;
    [Coluna('fmp_chave')]
    FFmp_chave: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Fmp_idpk: string read FFmp_idpk write FFmp_idpk;
    property Fmp_pix_tipo: string read FFmp_pix_tipo write FFmp_pix_tipo;
    property Fmp_link_qrcode: string read FFmp_link_qrcode write FFmp_link_qrcode;
    property Fmp_hash: string read FFmp_hash write FFmp_hash;
    property Fmp_descricao: string read FFmp_descricao write FFmp_descricao;
    property Fmp_chave: string read FFmp_chave write FFmp_chave;
  end;

  TResponseClassFinanceiroMovimentoPixInstantaneoPost = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('codigo')]
    FCodigo: string;
    [Coluna('tag')]
    FTag: string;
    [Coluna('mensagem')]
    FMensagem: string;
    [Coluna('mensagem_original')]
    FMensagem_original: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Registros: TList<TRegistros> read FRegistros write FRegistros;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TRegistros }

constructor TRegistros.Create;
begin
end;

destructor TRegistros.Destroy;
begin

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('fmp_idpk', self.FFmp_idpk); except end;
  try value.TryGetValue<string>('fmp_pix_tipo', self.FFmp_pix_tipo); except end;
  try value.TryGetValue<string>('fmp_link_qrcode', self.FFmp_link_qrcode); except end;
  try value.TryGetValue<string>('fmp_hash', self.FFmp_hash); except end;
  try value.TryGetValue<string>('fmp_descricao', self.FFmp_descricao); except end;
  try value.TryGetValue<string>('fmp_chave', self.FFmp_chave); except end;
end;

constructor TRegistros.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TResponseClassFinanceiroMovimentoPixInstantaneoPost }

constructor TResponseClassFinanceiroMovimentoPixInstantaneoPost.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFinanceiroMovimentoPixInstantaneoPost.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFinanceiroMovimentoPixInstantaneoPost.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONArray>('registros', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FRegistros.add(
          TRegistros.CreateWithJson(obj)
        );
      end;
  except
  end;
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassFinanceiroMovimentoPixInstantaneoPost.CreateWithJsonString(const value : string);
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
