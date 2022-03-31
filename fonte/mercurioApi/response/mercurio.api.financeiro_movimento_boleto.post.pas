unit mercurio.api.financeiro_movimento_boleto.post;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TRegistros = class
  private
    [Coluna('status')]
    FStatus: string;
    [Coluna('fmb_idpk')]
    FFmb_idpk: integer;
    [Coluna('fmb_link_url')]
    FFmb_link_url: string;
    [Coluna('fmb_linha_digitavel')]
    FFmb_linha_digitavel: string;
    [Coluna('fmb_nosso_numero')]
    FFmb_nosso_numero: string;
    [Coluna('fmb_chave')]
    FFmb_chave: string;
    [Coluna('fmb_cobranca_gerada_por')]
    FFmb_cobranca_gerada_por: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Status: string read FStatus write FStatus;
    property Fmb_idpk: integer read FFmb_idpk write FFmb_idpk;
    property Fmb_link_url: string read FFmb_link_url write FFmb_link_url;
    property Fmb_linha_digitavel: string read FFmb_linha_digitavel write FFmb_linha_digitavel;
    property Fmb_nosso_numero: string read FFmb_nosso_numero write FFmb_nosso_numero;
    property Fmb_chave: string read FFmb_chave write FFmb_chave;
    property Fmb_cobranca_gerada_por: integer read FFmb_cobranca_gerada_por write FFmb_cobranca_gerada_por;
  end;

  TResponseClassFinanceiroMovimentoBoletoPost = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
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
    property Registros: TList<TRegistros> read FRegistros write FRegistros;
    property Status: string read FStatus write FStatus;
    property Codigo: string read FCodigo write FCodigo;
    property Tag: string read FTag write FTag;
    property Mensagem: string read FMensagem write FMensagem;
    property Mensagem_original: string read FMensagem_original write FMensagem_original;
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

  try value.TryGetValue<string>('status', self.FStatus); except end;
  try value.TryGetValue<integer>('fmb_idpk', self.FFmb_idpk); except end;
  try value.TryGetValue<string>('fmb_link_url', self.FFmb_link_url); except end;
  try value.TryGetValue<string>('fmb_linha_digitavel', self.FFmb_linha_digitavel); except end;
  try value.TryGetValue<string>('fmb_nosso_numero', self.FFmb_nosso_numero); except end;
  try value.TryGetValue<string>('fmb_chave', self.FFmb_chave); except end;
  try value.TryGetValue<integer>('fmb_cobranca_gerada_por', self.FFmb_cobranca_gerada_por); except end;
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

{ TResponseClassFinanceiroMovimentoBoletoPost }

constructor TResponseClassFinanceiroMovimentoBoletoPost.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassFinanceiroMovimentoBoletoPost.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassFinanceiroMovimentoBoletoPost.CreateWithJson(const value : TJSonObject);
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
  try value.TryGetValue<string>('status', self.FStatus); except end;
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
end;

constructor TResponseClassFinanceiroMovimentoBoletoPost.CreateWithJsonString(const value : string);
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
