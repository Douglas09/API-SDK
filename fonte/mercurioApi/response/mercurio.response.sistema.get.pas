unit mercurio.response.sistema.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TLayout = class
  private
    [Coluna('sic_idpk')]
    FSic_idpk: integer;
    [Coluna('sic_menu')]
    FSic_menu: string;
    [Coluna('sic_tema')]
    FSic_tema: string;
    [Coluna('sic_botao')]
    FSic_botao: string;
    [Coluna('sic_card_fundo')]
    FSic_card_fundo: string;
    [Coluna('sic_card_texto')]
    FSic_card_texto: string;
    [Coluna('sic_botao_fundo')]
    FSic_botao_fundo: string;
    [Coluna('sic_botao_texto')]
    FSic_botao_texto: string;
    [Coluna('sic_menu_titulo')]
    FSic_menu_titulo: string;
    [Coluna('sic_cor_primaria')]
    FSic_cor_primaria: string;
    [Coluna('sic_sistema_idpk')]
    FSic_sistema_idpk: integer;
    [Coluna('sic_cor_terciaria')]
    FSic_cor_terciaria: string;
    [Coluna('sic_sistema_fundo')]
    FSic_sistema_fundo: string;
    [Coluna('sic_cor_secundaria')]
    FSic_cor_secundaria: string;
    [Coluna('sic_botao_fundo_info')]
    FSic_botao_fundo_info: string;
    [Coluna('sic_cor_sistema_nome')]
    FSic_cor_sistema_nome: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Sic_idpk: integer read FSic_idpk write FSic_idpk;
    property Sic_menu: string read FSic_menu write FSic_menu;
    property Sic_tema: string read FSic_tema write FSic_tema;
    property Sic_botao: string read FSic_botao write FSic_botao;
    property Sic_card_fundo: string read FSic_card_fundo write FSic_card_fundo;
    property Sic_card_texto: string read FSic_card_texto write FSic_card_texto;
    property Sic_botao_fundo: string read FSic_botao_fundo write FSic_botao_fundo;
    property Sic_botao_texto: string read FSic_botao_texto write FSic_botao_texto;
    property Sic_menu_titulo: string read FSic_menu_titulo write FSic_menu_titulo;
    property Sic_cor_primaria: string read FSic_cor_primaria write FSic_cor_primaria;
    property Sic_sistema_idpk: integer read FSic_sistema_idpk write FSic_sistema_idpk;
    property Sic_cor_terciaria: string read FSic_cor_terciaria write FSic_cor_terciaria;
    property Sic_sistema_fundo: string read FSic_sistema_fundo write FSic_sistema_fundo;
    property Sic_cor_secundaria: string read FSic_cor_secundaria write FSic_cor_secundaria;
    property Sic_botao_fundo_info: string read FSic_botao_fundo_info write FSic_botao_fundo_info;
    property Sic_cor_sistema_nome: string read FSic_cor_sistema_nome write FSic_cor_sistema_nome;
  end;

  TRegistros = class
  private
    [Coluna('layout')]
    FLayout: TLayout;
    [Coluna('sis_idpk')]
    FSis_idpk: integer;
    [Coluna('sis_email')]
    FSis_email: string;
    [Coluna('sis_icone')]
    FSis_icone: string;
    [Coluna('sis_titulo')]
    FSis_titulo: string;
    [Coluna('sis_cnpjcpf')]
    FSis_cnpjcpf: string;
    [Coluna('sis_empresa')]
    FSis_empresa: string;
    [Coluna('sis_youtube')]
    FSis_youtube: string;
    [Coluna('sis_base_url')]
    FSis_base_url: string;
    [Coluna('sis_facebook')]
    FSis_facebook: string;
    [Coluna('sis_logo_svg')]
    FSis_logo_svg: string;
    [Coluna('sis_logotipo')]
    FSis_logotipo: string;
    [Coluna('sis_copyright')]
    FSis_copyright: string;
    [Coluna('sis_instagram')]
    FSis_instagram: string;
    [Coluna('sis_observacoes')]
    FSis_observacoes: string;
    [Coluna('sis_banner_fundo')]
    FSis_banner_fundo: string;
    [Coluna('sis_landing_page')]
    FSis_landing_page: string;
    [Coluna('sis_nome_sistema')]
    FSis_nome_sistema: string;
    [Coluna('sis_conta_digital')]
    FSis_conta_digital: string;
    [Coluna('sis_integracao_pix')]
    FSis_integracao_pix: string;
    [Coluna('sis_ultima_alteracao')]
    FSis_ultima_alteracao: string;
    [Coluna('sis_integracao_boleto')]
    FSis_integracao_boleto: string;
    [Coluna('sis_integracao_cartao')]
    FSis_integracao_cartao: string;
    [Coluna('sis_representante_padrao')]
    FSis_representante_padrao: integer;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Layout: TLayout read FLayout write FLayout;
    property Sis_idpk: integer read FSis_idpk write FSis_idpk;
    property Sis_email: string read FSis_email write FSis_email;
    property Sis_icone: string read FSis_icone write FSis_icone;
    property Sis_titulo: string read FSis_titulo write FSis_titulo;
    property Sis_cnpjcpf: string read FSis_cnpjcpf write FSis_cnpjcpf;
    property Sis_empresa: string read FSis_empresa write FSis_empresa;
    property Sis_youtube: string read FSis_youtube write FSis_youtube;
    property Sis_base_url: string read FSis_base_url write FSis_base_url;
    property Sis_facebook: string read FSis_facebook write FSis_facebook;
    property Sis_logo_svg: string read FSis_logo_svg write FSis_logo_svg;
    property Sis_logotipo: string read FSis_logotipo write FSis_logotipo;
    property Sis_copyright: string read FSis_copyright write FSis_copyright;
    property Sis_instagram: string read FSis_instagram write FSis_instagram;
    property Sis_observacoes: string read FSis_observacoes write FSis_observacoes;
    property Sis_banner_fundo: string read FSis_banner_fundo write FSis_banner_fundo;
    property Sis_landing_page: string read FSis_landing_page write FSis_landing_page;
    property Sis_nome_sistema: string read FSis_nome_sistema write FSis_nome_sistema;
    property Sis_conta_digital: string read FSis_conta_digital write FSis_conta_digital;
    property Sis_integracao_pix: string read FSis_integracao_pix write FSis_integracao_pix;
    property Sis_ultima_alteracao: string read FSis_ultima_alteracao write FSis_ultima_alteracao;
    property Sis_integracao_boleto: string read FSis_integracao_boleto write FSis_integracao_boleto;
    property Sis_integracao_cartao: string read FSis_integracao_cartao write FSis_integracao_cartao;
    property Sis_representante_padrao: integer read FSis_representante_padrao write FSis_representante_padrao;
  end;

  TResponseClassSistemaGet = class
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

{ TLayout }

constructor TLayout.Create;
begin
end;

destructor TLayout.Destroy;
begin

  inherited;
end;

constructor TLayout.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('sic_idpk', self.FSic_idpk); except end;
  try value.TryGetValue<string>('sic_menu', self.FSic_menu); except end;
  try value.TryGetValue<string>('sic_tema', self.FSic_tema); except end;
  try value.TryGetValue<string>('sic_botao', self.FSic_botao); except end;
  try value.TryGetValue<string>('sic_card_fundo', self.FSic_card_fundo); except end;
  try value.TryGetValue<string>('sic_card_texto', self.FSic_card_texto); except end;
  try value.TryGetValue<string>('sic_botao_fundo', self.FSic_botao_fundo); except end;
  try value.TryGetValue<string>('sic_botao_texto', self.FSic_botao_texto); except end;
  try value.TryGetValue<string>('sic_menu_titulo', self.FSic_menu_titulo); except end;
  try value.TryGetValue<string>('sic_cor_primaria', self.FSic_cor_primaria); except end;
  try value.TryGetValue<integer>('sic_sistema_idpk', self.FSic_sistema_idpk); except end;
  try value.TryGetValue<string>('sic_cor_terciaria', self.FSic_cor_terciaria); except end;
  try value.TryGetValue<string>('sic_sistema_fundo', self.FSic_sistema_fundo); except end;
  try value.TryGetValue<string>('sic_cor_secundaria', self.FSic_cor_secundaria); except end;
  try value.TryGetValue<string>('sic_botao_fundo_info', self.FSic_botao_fundo_info); except end;
  try value.TryGetValue<string>('sic_cor_sistema_nome', self.FSic_cor_sistema_nome); except end;
end;

constructor TLayout.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TRegistros }

constructor TRegistros.Create;
begin
  Layout := TLayout.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Layout);

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
var obj : TJSONObject;
begin
  obj := nil;
  self.Create;
  if (value = nil) then
    exit;

  try
    value.TryGetValue<TJSONObject>('layout', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FLayout);
      self.FLayout := TLayout.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('sis_idpk', self.FSis_idpk); except end;
  try value.TryGetValue<string>('sis_email', self.FSis_email); except end;
  try value.TryGetValue<string>('sis_icone', self.FSis_icone); except end;
  try value.TryGetValue<string>('sis_titulo', self.FSis_titulo); except end;
  try value.TryGetValue<string>('sis_cnpjcpf', self.FSis_cnpjcpf); except end;
  try value.TryGetValue<string>('sis_empresa', self.FSis_empresa); except end;
  try value.TryGetValue<string>('sis_youtube', self.FSis_youtube); except end;
  try value.TryGetValue<string>('sis_base_url', self.FSis_base_url); except end;
  try value.TryGetValue<string>('sis_facebook', self.FSis_facebook); except end;
  try value.TryGetValue<string>('sis_logo_svg', self.FSis_logo_svg); except end;
  try value.TryGetValue<string>('sis_logotipo', self.FSis_logotipo); except end;
  try value.TryGetValue<string>('sis_copyright', self.FSis_copyright); except end;
  try value.TryGetValue<string>('sis_instagram', self.FSis_instagram); except end;
  try value.TryGetValue<string>('sis_observacoes', self.FSis_observacoes); except end;
  try value.TryGetValue<string>('sis_banner_fundo', self.FSis_banner_fundo); except end;
  try value.TryGetValue<string>('sis_landing_page', self.FSis_landing_page); except end;
  try value.TryGetValue<string>('sis_nome_sistema', self.FSis_nome_sistema); except end;
  try value.TryGetValue<string>('sis_conta_digital', self.FSis_conta_digital); except end;
  try value.TryGetValue<string>('sis_integracao_pix', self.FSis_integracao_pix); except end;
  try value.TryGetValue<string>('sis_ultima_alteracao', self.FSis_ultima_alteracao); except end;
  try value.TryGetValue<string>('sis_integracao_boleto', self.FSis_integracao_boleto); except end;
  try value.TryGetValue<string>('sis_integracao_cartao', self.FSis_integracao_cartao); except end;
  try value.TryGetValue<integer>('sis_representante_padrao', self.FSis_representante_padrao); except end;
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

{ TResponseClassSistemaGet }

constructor TResponseClassSistemaGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassSistemaGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassSistemaGet.CreateWithJson(const value : TJSonObject);
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

constructor TResponseClassSistemaGet.CreateWithJsonString(const value : string);
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

