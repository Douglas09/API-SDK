unit mercurio.response.produto.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
  TProduto_categoria = class
  private
    [Coluna('prc_cor')]
    FPrc_cor: string;
    [Coluna('prc_idpk')]
    FPrc_idpk: integer;
    [Coluna('prc_imagem')]
    FPrc_imagem: string;
    [Coluna('prc_descricao')]
    FPrc_descricao: string;
    [Coluna('prc_empresa_idpk')]
    FPrc_empresa_idpk: integer;
    [Coluna('prc_ultima_alteracao')]
    FPrc_ultima_alteracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Prc_cor: string read FPrc_cor write FPrc_cor;
    property Prc_idpk: integer read FPrc_idpk write FPrc_idpk;
    property Prc_imagem: string read FPrc_imagem write FPrc_imagem;
    property Prc_descricao: string read FPrc_descricao write FPrc_descricao;
    property Prc_empresa_idpk: integer read FPrc_empresa_idpk write FPrc_empresa_idpk;
    property Prc_ultima_alteracao: string read FPrc_ultima_alteracao write FPrc_ultima_alteracao;
  end;

  TProduto_unidade = class
  private
    [Coluna('pru_idpk')]
    FPru_idpk: integer;
    [Coluna('pru_sigla')]
    FPru_sigla: string;
    [Coluna('pru_descricao')]
    FPru_descricao: string;
    [Coluna('pru_ultima_alteracao')]
    FPru_ultima_alteracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pru_idpk: integer read FPru_idpk write FPru_idpk;
    property Pru_sigla: string read FPru_sigla write FPru_sigla;
    property Pru_descricao: string read FPru_descricao write FPru_descricao;
    property Pru_ultima_alteracao: string read FPru_ultima_alteracao write FPru_ultima_alteracao;
  end;

  TProduto_estoque = class
  private
    [Coluna('pre_idpk')]
    FPre_idpk: integer;
    [Coluna('pre_filial_idpk')]
    FPre_filial_idpk: string;
    [Coluna('pre_empresa_idpk')]
    FPre_empresa_idpk: integer;
    [Coluna('pre_produto_idpk')]
    FPre_produto_idpk: integer;
    [Coluna('pre_ultima_saida')]
    FPre_ultima_saida: string;
    [Coluna('pre_estoque_atual')]
    FPre_estoque_atual: double;
    [Coluna('pre_ultima_entrada')]
    FPre_ultima_entrada: string;
    [Coluna('pre_estoque_inicial')]
    FPre_estoque_inicial: double;
    [Coluna('pre_ultima_alteracao')]
    FPre_ultima_alteracao: string;
    [Coluna('pre_estoque_reservado')]
    FPre_estoque_reservado: double;
    [Coluna('pre_estoque_disponivel')]
    FPre_estoque_disponivel: double;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pre_idpk: integer read FPre_idpk write FPre_idpk;
    property Pre_filial_idpk: string read FPre_filial_idpk write FPre_filial_idpk;
    property Pre_empresa_idpk: integer read FPre_empresa_idpk write FPre_empresa_idpk;
    property Pre_produto_idpk: integer read FPre_produto_idpk write FPre_produto_idpk;
    property Pre_ultima_saida: string read FPre_ultima_saida write FPre_ultima_saida;
    property Pre_estoque_atual: double read FPre_estoque_atual write FPre_estoque_atual;
    property Pre_ultima_entrada: string read FPre_ultima_entrada write FPre_ultima_entrada;
    property Pre_estoque_inicial: double read FPre_estoque_inicial write FPre_estoque_inicial;
    property Pre_ultima_alteracao: string read FPre_ultima_alteracao write FPre_ultima_alteracao;
    property Pre_estoque_reservado: double read FPre_estoque_reservado write FPre_estoque_reservado;
    property Pre_estoque_disponivel: double read FPre_estoque_disponivel write FPre_estoque_disponivel;
  end;

  TProduto_origem = class
  private
    [Coluna('pro_codigo')]
    FPro_codigo: integer;
    [Coluna('pro_descricao')]
    FPro_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pro_codigo: integer read FPro_codigo write FPro_codigo;
    property Pro_descricao: string read FPro_descricao write FPro_descricao;
  end;

  TProduto_tipo = class
  private
    [Coluna('prt_codigo')]
    FPrt_codigo: string;
    [Coluna('prt_descricao')]
    FPrt_descricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Prt_codigo: string read FPrt_codigo write FPrt_codigo;
    property Prt_descricao: string read FPrt_descricao write FPrt_descricao;
  end;

  TProduto_cest = class
  private
    [Coluna('prc_ncm')]
    FPrc_ncm: string;
    [Coluna('descricao')]
    FDescricao: string;
    [Coluna('prc_codigo')]
    FPrc_codigo: string;
    [Coluna('prc_descricao_cest')]
    FPrc_descricao_cest: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Prc_ncm: string read FPrc_ncm write FPrc_ncm;
    property Descricao: string read FDescricao write FDescricao;
    property Prc_codigo: string read FPrc_codigo write FPrc_codigo;
    property Prc_descricao_cest: string read FPrc_descricao_cest write FPrc_descricao_cest;
  end;

  TProduto_ncm = class
  private
    [Coluna('prn_idpk')]
    FPrn_idpk: integer;
    [Coluna('descricao')]
    FDescricao: string;
    [Coluna('prn_descricao')]
    FPrn_descricao: string;
    [Coluna('prn_codigo_auxiliar')]
    FPrn_codigo_auxiliar: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Prn_idpk: integer read FPrn_idpk write FPrn_idpk;
    property Descricao: string read FDescricao write FDescricao;
    property Prn_descricao: string read FPrn_descricao write FPrn_descricao;
    property Prn_codigo_auxiliar: string read FPrn_codigo_auxiliar write FPrn_codigo_auxiliar;
  end;

  TRegistros = class
  private
    [Coluna('pro_idpk')]
    FPro_idpk: integer;
    [Coluna('pro_altura')]
    FPro_altura: double;
    [Coluna('pro_inativo')]
    FPro_inativo: integer;
    [Coluna('pro_largura')]
    FPro_largura: double;
    [Coluna('produto_ncm')]
    FProduto_ncm: TProduto_ncm;
    [Coluna('pro_favorito')]
    FPro_favorito: integer;
    [Coluna('produto_cest')]
    FProduto_cest: TProduto_cest;
    [Coluna('produto_foto')]
    FProduto_foto: string;
    [Coluna('produto_tipo')]
    FProduto_tipo: TProduto_tipo;
    [Coluna('estoque_total')]
    FEstoque_total: double;
    [Coluna('pro_cod_barra')]
    FPro_cod_barra: string;
    [Coluna('pro_descricao')]
    FPro_descricao: string;
    [Coluna('pro_observacao')]
    FPro_observacao: string;
    [Coluna('pro_peso_bruto')]
    FPro_peso_bruto: double;
    [Coluna('produto_origem')]
    FProduto_origem: TProduto_origem;
    [Coluna('pro_comprimento')]
    FPro_comprimento: double;
    [Coluna('pro_preco_custo')]
    FPro_preco_custo: double;
    [Coluna('pro_preco_venda')]
    FPro_preco_venda: double;
    [Coluna('pro_usa_balanca')]
    FPro_usa_balanca: integer;
    [Coluna('produto_estoque')]
    FProduto_estoque: TList<TProduto_estoque>;
    [Coluna('produto_unidade')]
    FProduto_unidade: TProduto_unidade;
    [Coluna('pro_empresa_idpk')]
    FPro_empresa_idpk: integer;
    [Coluna('pro_markup_venda')]
    FPro_markup_venda: double;
    [Coluna('pro_peso_liquido')]
    FPro_peso_liquido: double;
    [Coluna('pro_preco_minimo')]
    FPro_preco_minimo: double;
    [Coluna('pro_data_cadastro')]
    FPro_data_cadastro: string;
    [Coluna('pro_markup_minimo')]
    FPro_markup_minimo: double;
    [Coluna('produto_categoria')]
    FProduto_categoria: TProduto_categoria;
    [Coluna('pro_codigo_interno')]
    FPro_codigo_interno: integer;
    [Coluna('pro_estoque_minimo')]
    FPro_estoque_minimo: double;
    [Coluna('pro_codigo_auxiliar')]
    FPro_codigo_auxiliar: string;
    [Coluna('pro_exibir_catalogo')]
    FPro_exibir_catalogo: integer;
    [Coluna('pro_balanca_validade')]
    FPro_balanca_validade: integer;
    [Coluna('pro_produto_ncm_idpk')]
    FPro_produto_ncm_idpk: integer;
    [Coluna('pro_ultima_alteracao')]
    FPro_ultima_alteracao: string;
    [Coluna('produto_pacote_barra')]
    FProduto_pacote_barra: string;
    [Coluna('produto_subcategoria')]
    FProduto_subcategoria: string;
    [Coluna('pro_controlar_estoque')]
    FPro_controlar_estoque: integer;
    [Coluna('pro_data_ultima_venda')]
    FPro_data_ultima_venda: string;
    [Coluna('pro_data_ultima_compra')]
    FPro_data_ultima_compra: string;
    [Coluna('pro_produto_marca_idpk')]
    FPro_produto_marca_idpk: string;
    [Coluna('pro_permite_mudar_preco')]
    FPro_permite_mudar_preco: integer;
    [Coluna('pro_produto_cest_codigo')]
    FPro_produto_cest_codigo: string;
    [Coluna('pro_produto_tipo_codigo')]
    FPro_produto_tipo_codigo: string;
    [Coluna('pro_produto_unidade_idpk')]
    FPro_produto_unidade_idpk: integer;
    [Coluna('pro_balanca_validade_dias')]
    FPro_balanca_validade_dias: integer;
    [Coluna('pro_data_remarcacao_custo')]
    FPro_data_remarcacao_custo: string;
    [Coluna('pro_data_remarcacao_venda')]
    FPro_data_remarcacao_venda: string;
    [Coluna('pro_produto_origem_codigo')]
    FPro_produto_origem_codigo: integer;
    [Coluna('pro_produto_categoria_idpk')]
    FPro_produto_categoria_idpk: integer;
    [Coluna('pro_permite_estoque_negativo')]
    FPro_permite_estoque_negativo: integer;
    [Coluna('pro_permite_venda_fracionada')]
    FPro_permite_venda_fracionada: integer;
    [Coluna('pro_produto_regra_fiscal_idpk')]
    FPro_produto_regra_fiscal_idpk: string;
    [Coluna('pro_produto_subcategoria_idpk')]
    FPro_produto_subcategoria_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Pro_idpk: integer read FPro_idpk write FPro_idpk;
    property Pro_altura: double read FPro_altura write FPro_altura;
    property Pro_inativo: integer read FPro_inativo write FPro_inativo;
    property Pro_largura: double read FPro_largura write FPro_largura;
    property Produto_ncm: TProduto_ncm read FProduto_ncm write FProduto_ncm;
    property Pro_favorito: integer read FPro_favorito write FPro_favorito;
    property Produto_cest: TProduto_cest read FProduto_cest write FProduto_cest;
    property Produto_foto: string read FProduto_foto write FProduto_foto;
    property Produto_tipo: TProduto_tipo read FProduto_tipo write FProduto_tipo;
    property Estoque_total: double read FEstoque_total write FEstoque_total;
    property Pro_cod_barra: string read FPro_cod_barra write FPro_cod_barra;
    property Pro_descricao: string read FPro_descricao write FPro_descricao;
    property Pro_observacao: string read FPro_observacao write FPro_observacao;
    property Pro_peso_bruto: double read FPro_peso_bruto write FPro_peso_bruto;
    property Produto_origem: TProduto_origem read FProduto_origem write FProduto_origem;
    property Pro_comprimento: double read FPro_comprimento write FPro_comprimento;
    property Pro_preco_custo: double read FPro_preco_custo write FPro_preco_custo;
    property Pro_preco_venda: double read FPro_preco_venda write FPro_preco_venda;
    property Pro_usa_balanca: integer read FPro_usa_balanca write FPro_usa_balanca;
    property Produto_estoque: TList<TProduto_estoque> read FProduto_estoque write FProduto_estoque;
    property Produto_unidade: TProduto_unidade read FProduto_unidade write FProduto_unidade;
    property Pro_empresa_idpk: integer read FPro_empresa_idpk write FPro_empresa_idpk;
    property Pro_markup_venda: double read FPro_markup_venda write FPro_markup_venda;
    property Pro_peso_liquido: double read FPro_peso_liquido write FPro_peso_liquido;
    property Pro_preco_minimo: double read FPro_preco_minimo write FPro_preco_minimo;
    property Pro_data_cadastro: string read FPro_data_cadastro write FPro_data_cadastro;
    property Pro_markup_minimo: double read FPro_markup_minimo write FPro_markup_minimo;
    property Produto_categoria: TProduto_categoria read FProduto_categoria write FProduto_categoria;
    property Pro_codigo_interno: integer read FPro_codigo_interno write FPro_codigo_interno;
    property Pro_estoque_minimo: double read FPro_estoque_minimo write FPro_estoque_minimo;
    property Pro_codigo_auxiliar: string read FPro_codigo_auxiliar write FPro_codigo_auxiliar;
    property Pro_exibir_catalogo: integer read FPro_exibir_catalogo write FPro_exibir_catalogo;
    property Pro_balanca_validade: integer read FPro_balanca_validade write FPro_balanca_validade;
    property Pro_produto_ncm_idpk: integer read FPro_produto_ncm_idpk write FPro_produto_ncm_idpk;
    property Pro_ultima_alteracao: string read FPro_ultima_alteracao write FPro_ultima_alteracao;
    property Produto_pacote_barra: string read FProduto_pacote_barra write FProduto_pacote_barra;
    property Produto_subcategoria: string read FProduto_subcategoria write FProduto_subcategoria;
    property Pro_controlar_estoque: integer read FPro_controlar_estoque write FPro_controlar_estoque;
    property Pro_data_ultima_venda: string read FPro_data_ultima_venda write FPro_data_ultima_venda;
    property Pro_data_ultima_compra: string read FPro_data_ultima_compra write FPro_data_ultima_compra;
    property Pro_produto_marca_idpk: string read FPro_produto_marca_idpk write FPro_produto_marca_idpk;
    property Pro_permite_mudar_preco: integer read FPro_permite_mudar_preco write FPro_permite_mudar_preco;
    property Pro_produto_cest_codigo: string read FPro_produto_cest_codigo write FPro_produto_cest_codigo;
    property Pro_produto_tipo_codigo: string read FPro_produto_tipo_codigo write FPro_produto_tipo_codigo;
    property Pro_produto_unidade_idpk: integer read FPro_produto_unidade_idpk write FPro_produto_unidade_idpk;
    property Pro_balanca_validade_dias: integer read FPro_balanca_validade_dias write FPro_balanca_validade_dias;
    property Pro_data_remarcacao_custo: string read FPro_data_remarcacao_custo write FPro_data_remarcacao_custo;
    property Pro_data_remarcacao_venda: string read FPro_data_remarcacao_venda write FPro_data_remarcacao_venda;
    property Pro_produto_origem_codigo: integer read FPro_produto_origem_codigo write FPro_produto_origem_codigo;
    property Pro_produto_categoria_idpk: integer read FPro_produto_categoria_idpk write FPro_produto_categoria_idpk;
    property Pro_permite_estoque_negativo: integer read FPro_permite_estoque_negativo write FPro_permite_estoque_negativo;
    property Pro_permite_venda_fracionada: integer read FPro_permite_venda_fracionada write FPro_permite_venda_fracionada;
    property Pro_produto_regra_fiscal_idpk: string read FPro_produto_regra_fiscal_idpk write FPro_produto_regra_fiscal_idpk;
    property Pro_produto_subcategoria_idpk: string read FPro_produto_subcategoria_idpk write FPro_produto_subcategoria_idpk;
  end;

  TResponseClassProdutoGet = class
  private
    [Coluna('registros')]
    FRegistros: TList<TRegistros>;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Registros: TList<TRegistros> read FRegistros write FRegistros;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TProduto_categoria }

constructor TProduto_categoria.Create;
begin
end;

destructor TProduto_categoria.Destroy;
begin

  inherited;
end;

constructor TProduto_categoria.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('prc_cor', self.FPrc_cor); except end;
  try value.TryGetValue<integer>('prc_idpk', self.FPrc_idpk); except end;
  try value.TryGetValue<string>('prc_imagem', self.FPrc_imagem); except end;
  try value.TryGetValue<string>('prc_descricao', self.FPrc_descricao); except end;
  try value.TryGetValue<integer>('prc_empresa_idpk', self.FPrc_empresa_idpk); except end;
  try value.TryGetValue<string>('prc_ultima_alteracao', self.FPrc_ultima_alteracao); except end;
end;

constructor TProduto_categoria.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_unidade }

constructor TProduto_unidade.Create;
begin
end;

destructor TProduto_unidade.Destroy;
begin

  inherited;
end;

constructor TProduto_unidade.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('pru_idpk', self.FPru_idpk); except end;
  try value.TryGetValue<string>('pru_sigla', self.FPru_sigla); except end;
  try value.TryGetValue<string>('pru_descricao', self.FPru_descricao); except end;
  try value.TryGetValue<string>('pru_ultima_alteracao', self.FPru_ultima_alteracao); except end;
end;

constructor TProduto_unidade.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_estoque }

constructor TProduto_estoque.Create;
begin
end;

destructor TProduto_estoque.Destroy;
begin

  inherited;
end;

constructor TProduto_estoque.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('pre_idpk', self.FPre_idpk); except end;
  try value.TryGetValue<string>('pre_filial_idpk', self.FPre_filial_idpk); except end;
  try value.TryGetValue<integer>('pre_empresa_idpk', self.FPre_empresa_idpk); except end;
  try value.TryGetValue<integer>('pre_produto_idpk', self.FPre_produto_idpk); except end;
  try value.TryGetValue<string>('pre_ultima_saida', self.FPre_ultima_saida); except end;
  try value.TryGetValue<double>('pre_estoque_atual', self.FPre_estoque_atual); except end;
  try value.TryGetValue<string>('pre_ultima_entrada', self.FPre_ultima_entrada); except end;
  try value.TryGetValue<double>('pre_estoque_inicial', self.FPre_estoque_inicial); except end;
  try value.TryGetValue<string>('pre_ultima_alteracao', self.FPre_ultima_alteracao); except end;
  try value.TryGetValue<double>('pre_estoque_reservado', self.FPre_estoque_reservado); except end;
  try value.TryGetValue<double>('pre_estoque_disponivel', self.FPre_estoque_disponivel); except end;
end;

constructor TProduto_estoque.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_origem }

constructor TProduto_origem.Create;
begin
end;

destructor TProduto_origem.Destroy;
begin

  inherited;
end;

constructor TProduto_origem.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('pro_codigo', self.FPro_codigo); except end;
  try value.TryGetValue<string>('pro_descricao', self.FPro_descricao); except end;
end;

constructor TProduto_origem.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_tipo }

constructor TProduto_tipo.Create;
begin
end;

destructor TProduto_tipo.Destroy;
begin

  inherited;
end;

constructor TProduto_tipo.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('prt_codigo', self.FPrt_codigo); except end;
  try value.TryGetValue<string>('prt_descricao', self.FPrt_descricao); except end;
end;

constructor TProduto_tipo.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_cest }

constructor TProduto_cest.Create;
begin
end;

destructor TProduto_cest.Destroy;
begin

  inherited;
end;

constructor TProduto_cest.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('prc_ncm', self.FPrc_ncm); except end;
  try value.TryGetValue<string>('descricao', self.FDescricao); except end;
  try value.TryGetValue<string>('prc_codigo', self.FPrc_codigo); except end;
  try value.TryGetValue<string>('prc_descricao_cest', self.FPrc_descricao_cest); except end;
end;

constructor TProduto_cest.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TProduto_ncm }

constructor TProduto_ncm.Create;
begin
end;

destructor TProduto_ncm.Destroy;
begin

  inherited;
end;

constructor TProduto_ncm.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('prn_idpk', self.FPrn_idpk); except end;
  try value.TryGetValue<string>('descricao', self.FDescricao); except end;
  try value.TryGetValue<string>('prn_descricao', self.FPrn_descricao); except end;
  try value.TryGetValue<string>('prn_codigo_auxiliar', self.FPrn_codigo_auxiliar); except end;
end;

constructor TProduto_ncm.CreateWithJsonString(const value : string);
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
  Produto_ncm := TProduto_ncm.Create;
  Produto_cest := TProduto_cest.Create;
  Produto_tipo := TProduto_tipo.Create;
  Produto_origem := TProduto_origem.Create;
  Produto_estoque := TList<TProduto_estoque>.Create;
  Produto_unidade := TProduto_unidade.Create;
  Produto_categoria := TProduto_categoria.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Produto_ncm);
  myFreeAndNil(Produto_cest);
  myFreeAndNil(Produto_tipo);
  myFreeAndNil(Produto_origem);
  while (Produto_estoque.Count > 0) do
  begin
    myFreeAndNil(Produto_estoque.items[0]);
    Produto_estoque.Delete(0);
  end;
  myFreeAndNil(Produto_estoque);
  myFreeAndNil(Produto_unidade);
  myFreeAndNil(Produto_categoria);

  inherited;
end;

constructor TRegistros.CreateWithJson(const value : TJSonObject);
var arr : TJSONArray;
    obj : TJSONObject;
    x : integer;
begin
  obj := nil;
  arr := nil;
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('pro_idpk', self.FPro_idpk); except end;
  try value.TryGetValue<double>('pro_altura', self.FPro_altura); except end;
  try value.TryGetValue<integer>('pro_inativo', self.FPro_inativo); except end;
  try value.TryGetValue<double>('pro_largura', self.FPro_largura); except end;
  try
    value.TryGetValue<TJSONObject>('produto_ncm', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_ncm);
      self.FProduto_ncm := TProduto_ncm.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('pro_favorito', self.FPro_favorito); except end;
  try
    value.TryGetValue<TJSONObject>('produto_cest', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_cest);
      self.FProduto_cest := TProduto_cest.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('produto_foto', self.FProduto_foto); except end;
  try
    value.TryGetValue<TJSONObject>('produto_tipo', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_tipo);
      self.FProduto_tipo := TProduto_tipo.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<double>('estoque_total', self.FEstoque_total); except end;
  try value.TryGetValue<string>('pro_cod_barra', self.FPro_cod_barra); except end;
  try value.TryGetValue<string>('pro_descricao', self.FPro_descricao); except end;
  try value.TryGetValue<string>('pro_observacao', self.FPro_observacao); except end;
  try value.TryGetValue<double>('pro_peso_bruto', self.FPro_peso_bruto); except end;
  try
    value.TryGetValue<TJSONObject>('produto_origem', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_origem);
      self.FProduto_origem := TProduto_origem.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<double>('pro_comprimento', self.FPro_comprimento); except end;
  try value.TryGetValue<double>('pro_preco_custo', self.FPro_preco_custo); except end;
  try value.TryGetValue<double>('pro_preco_venda', self.FPro_preco_venda); except end;
  try value.TryGetValue<integer>('pro_usa_balanca', self.FPro_usa_balanca); except end;
  try
    value.TryGetValue<TJSONArray>('produto_estoque', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FProduto_estoque.add(
          TProduto_estoque.CreateWithJson(obj)
        );
      end;
  except
  end;
  try
    value.TryGetValue<TJSONObject>('produto_unidade', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_unidade);
      self.FProduto_unidade := TProduto_unidade.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('pro_empresa_idpk', self.FPro_empresa_idpk); except end;
  try value.TryGetValue<double>('pro_markup_venda', self.FPro_markup_venda); except end;
  try value.TryGetValue<double>('pro_peso_liquido', self.FPro_peso_liquido); except end;
  try value.TryGetValue<double>('pro_preco_minimo', self.FPro_preco_minimo); except end;
  try value.TryGetValue<string>('pro_data_cadastro', self.FPro_data_cadastro); except end;
  try value.TryGetValue<double>('pro_markup_minimo', self.FPro_markup_minimo); except end;
  try
    value.TryGetValue<TJSONObject>('produto_categoria', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_categoria);
      self.FProduto_categoria := TProduto_categoria.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<integer>('pro_codigo_interno', self.FPro_codigo_interno); except end;
  try value.TryGetValue<double>('pro_estoque_minimo', self.FPro_estoque_minimo); except end;
  try value.TryGetValue<string>('pro_codigo_auxiliar', self.FPro_codigo_auxiliar); except end;
  try value.TryGetValue<integer>('pro_exibir_catalogo', self.FPro_exibir_catalogo); except end;
  try value.TryGetValue<integer>('pro_balanca_validade', self.FPro_balanca_validade); except end;
  try value.TryGetValue<integer>('pro_produto_ncm_idpk', self.FPro_produto_ncm_idpk); except end;
  try value.TryGetValue<string>('pro_ultima_alteracao', self.FPro_ultima_alteracao); except end;
  try value.TryGetValue<string>('produto_pacote_barra', self.FProduto_pacote_barra); except end;
  try value.TryGetValue<string>('produto_subcategoria', self.FProduto_subcategoria); except end;
  try value.TryGetValue<integer>('pro_controlar_estoque', self.FPro_controlar_estoque); except end;
  try value.TryGetValue<string>('pro_data_ultima_venda', self.FPro_data_ultima_venda); except end;
  try value.TryGetValue<string>('pro_data_ultima_compra', self.FPro_data_ultima_compra); except end;
  try value.TryGetValue<string>('pro_produto_marca_idpk', self.FPro_produto_marca_idpk); except end;
  try value.TryGetValue<integer>('pro_permite_mudar_preco', self.FPro_permite_mudar_preco); except end;
  try value.TryGetValue<string>('pro_produto_cest_codigo', self.FPro_produto_cest_codigo); except end;
  try value.TryGetValue<string>('pro_produto_tipo_codigo', self.FPro_produto_tipo_codigo); except end;
  try value.TryGetValue<integer>('pro_produto_unidade_idpk', self.FPro_produto_unidade_idpk); except end;
  try value.TryGetValue<integer>('pro_balanca_validade_dias', self.FPro_balanca_validade_dias); except end;
  try value.TryGetValue<string>('pro_data_remarcacao_custo', self.FPro_data_remarcacao_custo); except end;
  try value.TryGetValue<string>('pro_data_remarcacao_venda', self.FPro_data_remarcacao_venda); except end;
  try value.TryGetValue<integer>('pro_produto_origem_codigo', self.FPro_produto_origem_codigo); except end;
  try value.TryGetValue<integer>('pro_produto_categoria_idpk', self.FPro_produto_categoria_idpk); except end;
  try value.TryGetValue<integer>('pro_permite_estoque_negativo', self.FPro_permite_estoque_negativo); except end;
  try value.TryGetValue<integer>('pro_permite_venda_fracionada', self.FPro_permite_venda_fracionada); except end;
  try value.TryGetValue<string>('pro_produto_regra_fiscal_idpk', self.FPro_produto_regra_fiscal_idpk); except end;
  try value.TryGetValue<string>('pro_produto_subcategoria_idpk', self.FPro_produto_subcategoria_idpk); except end;
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

{ TResponseClassProdutoGet }

constructor TResponseClassProdutoGet.Create;
begin
  Registros := TList<TRegistros>.Create;
end;

destructor TResponseClassProdutoGet.Destroy;
begin
  while (Registros.Count > 0) do
  begin
    myFreeAndNil(Registros.items[0]);
    Registros.Delete(0);
  end;
  myFreeAndNil(Registros);

  inherited;
end;

constructor TResponseClassProdutoGet.CreateWithJson(const value : TJSonObject);
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
end;

constructor TResponseClassProdutoGet.CreateWithJsonString(const value : string);
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
