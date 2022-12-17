unit mercurio.response.produto.get;

interface

uses mercurio.api.functions, System.Generics.Collections, Json;

type
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

  TProduto_estoque = class
  private
    [Coluna('pre_idpk')]
    FPre_idpk: integer;
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

  TProduto_foto = class
  private
    [Coluna('prf_idpk')]
    FPrf_idpk: integer;
    [Coluna('prf_descricao')]
    FPrf_descricao: string;
    [Coluna('prf_foto_path')]
    FPrf_foto_path: string;
    [Coluna('prf_empresa_idpk')]
    FPrf_empresa_idpk: integer;
    [Coluna('prf_produto_idpk')]
    FPrf_produto_idpk: integer;
    [Coluna('prf_foto_principal')]
    FPrf_foto_principal: integer;
    [Coluna('prf_ultima_alteracao')]
    FPrf_ultima_alteracao: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Prf_idpk: integer read FPrf_idpk write FPrf_idpk;
    property Prf_descricao: string read FPrf_descricao write FPrf_descricao;
    property Prf_foto_path: string read FPrf_foto_path write FPrf_foto_path;
    property Prf_empresa_idpk: integer read FPrf_empresa_idpk write FPrf_empresa_idpk;
    property Prf_produto_idpk: integer read FPrf_produto_idpk write FPrf_produto_idpk;
    property Prf_foto_principal: integer read FPrf_foto_principal write FPrf_foto_principal;
    property Prf_ultima_alteracao: string read FPrf_ultima_alteracao write FPrf_ultima_alteracao;
  end;

  TParente = class
  private
    [Coluna('qtde_filhos')]
    FQtde_filhos: integer;
    [Coluna('produto_pai_idpk')]
    FProduto_pai_idpk: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Qtde_filhos: integer read FQtde_filhos write FQtde_filhos;
    property Produto_pai_idpk: string read FProduto_pai_idpk write FProduto_pai_idpk;
  end;

  TRegistros = class
  private
    [Coluna('parente')]
    FParente: TParente;
    [Coluna('pro_ncm')]
    FPro_ncm: string;
    [Coluna('pro_sku')]
    FPro_sku: string;
    [Coluna('pro_idpk')]
    FPro_idpk: integer;
    [Coluna('pro_tipo')]
    FPro_tipo: string;
    [Coluna('pro_altura')]
    FPro_altura: double;
    [Coluna('pro_cbenef')]
    FPro_cbenef: string;
    [Coluna('pro_inativo')]
    FPro_inativo: integer;
    [Coluna('pro_largura')]
    FPro_largura: double;
    [Coluna('pro_favorito')]
    FPro_favorito: integer;
    [Coluna('produto_foto')]
    FProduto_foto: TList<TProduto_foto>;
    [Coluna('produto_tipo')]
    FProduto_tipo: TProduto_tipo;
    [Coluna('estoque_total')]
    FEstoque_total: double;
    [Coluna('pro_cod_barra')]
    FPro_cod_barra: string;
    [Coluna('pro_descricao')]
    FPro_descricao: string;
    [Coluna('pro_ncm_status')]
    FPro_ncm_status: string;
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
    [Coluna('produto_categoria')]
    FProduto_categoria: TProduto_categoria;
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
    [Coluna('produto_variacao')]
    FProduto_variacao: string;
    [Coluna('pro_data_cadastro')]
    FPro_data_cadastro: string;
    [Coluna('pro_markup_minimo')]
    FPro_markup_minimo: double;
    [Coluna('pro_ncm_descricao')]
    FPro_ncm_descricao: string;
    [Coluna('pro_codigo_interno')]
    FPro_codigo_interno: integer;
    [Coluna('pro_estoque_minimo')]
    FPro_estoque_minimo: double;
    [Coluna('pro_icmsstret_base')]
    FPro_icmsstret_base: double;
    [Coluna('pro_exibir_catalogo')]
    FPro_exibir_catalogo: integer;
    [Coluna('pro_icmsstret_valor')]
    FPro_icmsstret_valor: double;
    [Coluna('pro_balanca_validade')]
    FPro_balanca_validade: integer;
    [Coluna('pro_ultima_alteracao')]
    FPro_ultima_alteracao: string;
    [Coluna('produto_pacote_barra')]
    FProduto_pacote_barra: string;
    [Coluna('pro_controlar_estoque')]
    FPro_controlar_estoque: integer;
    [Coluna('pro_data_ultima_venda')]
    FPro_data_ultima_venda: string;
    [Coluna('pro_data_ultima_compra')]
    FPro_data_ultima_compra: string;
    [Coluna('pro_icmsstret_aliquota')]
    FPro_icmsstret_aliquota: double;
    [Coluna('pro_produto_marca_idpk')]
    FPro_produto_marca_idpk: string;
    [Coluna('pro_nota_fiscal_infadic')]
    FPro_nota_fiscal_infadic: string;
    [Coluna('pro_permite_mudar_preco')]
    FPro_permite_mudar_preco: integer;
    [Coluna('pro_produto_cest_codigo')]
    FPro_produto_cest_codigo: string;
    [Coluna('pro_produto_tipo_codigo')]
    FPro_produto_tipo_codigo: string;
    [Coluna('pro_icmsstret_substituto')]
    FPro_icmsstret_substituto: double;
    [Coluna('pro_produto_unidade_idpk')]
    FPro_produto_unidade_idpk: string;
    [Coluna('pro_balanca_validade_dias')]
    FPro_balanca_validade_dias: integer;
    [Coluna('pro_data_remarcacao_custo')]
    FPro_data_remarcacao_custo: string;
    [Coluna('pro_data_remarcacao_venda')]
    FPro_data_remarcacao_venda: string;
    [Coluna('pro_produto_origem_codigo')]
    FPro_produto_origem_codigo: integer;
    [Coluna('pro_icmsstret_fcp_aliquota')]
    FPro_icmsstret_fcp_aliquota: double;
    [Coluna('pro_produto_categoria_idpk')]
    FPro_produto_categoria_idpk: string;
    [Coluna('pro_produto_cest_descricao')]
    FPro_produto_cest_descricao: string;
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
    property Parente: TParente read FParente write FParente;
    property Pro_ncm: string read FPro_ncm write FPro_ncm;
    property Pro_sku: string read FPro_sku write FPro_sku;
    property Pro_idpk: integer read FPro_idpk write FPro_idpk;
    property Pro_tipo: string read FPro_tipo write FPro_tipo;
    property Pro_altura: double read FPro_altura write FPro_altura;
    property Pro_cbenef: string read FPro_cbenef write FPro_cbenef;
    property Pro_inativo: integer read FPro_inativo write FPro_inativo;
    property Pro_largura: double read FPro_largura write FPro_largura;
    property Pro_favorito: integer read FPro_favorito write FPro_favorito;
    property Produto_foto: TList<TProduto_foto> read FProduto_foto write FProduto_foto;
    property Produto_tipo: TProduto_tipo read FProduto_tipo write FProduto_tipo;
    property Estoque_total: double read FEstoque_total write FEstoque_total;
    property Pro_cod_barra: string read FPro_cod_barra write FPro_cod_barra;
    property Pro_descricao: string read FPro_descricao write FPro_descricao;
    property Pro_ncm_status: string read FPro_ncm_status write FPro_ncm_status;
    property Pro_observacao: string read FPro_observacao write FPro_observacao;
    property Pro_peso_bruto: double read FPro_peso_bruto write FPro_peso_bruto;
    property Produto_origem: TProduto_origem read FProduto_origem write FProduto_origem;
    property Pro_comprimento: double read FPro_comprimento write FPro_comprimento;
    property Pro_preco_custo: double read FPro_preco_custo write FPro_preco_custo;
    property Pro_preco_venda: double read FPro_preco_venda write FPro_preco_venda;
    property Pro_usa_balanca: integer read FPro_usa_balanca write FPro_usa_balanca;
    property Produto_estoque: TList<TProduto_estoque> read FProduto_estoque write FProduto_estoque;
    property Produto_categoria: TProduto_categoria read FProduto_categoria write FProduto_categoria;
    property Produto_unidade: TProduto_unidade read FProduto_unidade write FProduto_unidade;
    property Pro_empresa_idpk: integer read FPro_empresa_idpk write FPro_empresa_idpk;
    property Pro_markup_venda: double read FPro_markup_venda write FPro_markup_venda;
    property Pro_peso_liquido: double read FPro_peso_liquido write FPro_peso_liquido;
    property Pro_preco_minimo: double read FPro_preco_minimo write FPro_preco_minimo;
    property Produto_variacao: string read FProduto_variacao write FProduto_variacao;
    property Pro_data_cadastro: string read FPro_data_cadastro write FPro_data_cadastro;
    property Pro_markup_minimo: double read FPro_markup_minimo write FPro_markup_minimo;
    property Pro_ncm_descricao: string read FPro_ncm_descricao write FPro_ncm_descricao;
    property Pro_codigo_interno: integer read FPro_codigo_interno write FPro_codigo_interno;
    property Pro_estoque_minimo: double read FPro_estoque_minimo write FPro_estoque_minimo;
    property Pro_icmsstret_base: double read FPro_icmsstret_base write FPro_icmsstret_base;
    property Pro_exibir_catalogo: integer read FPro_exibir_catalogo write FPro_exibir_catalogo;
    property Pro_icmsstret_valor: double read FPro_icmsstret_valor write FPro_icmsstret_valor;
    property Pro_balanca_validade: integer read FPro_balanca_validade write FPro_balanca_validade;
    property Pro_ultima_alteracao: string read FPro_ultima_alteracao write FPro_ultima_alteracao;
    property Produto_pacote_barra: string read FProduto_pacote_barra write FProduto_pacote_barra;
    property Pro_controlar_estoque: integer read FPro_controlar_estoque write FPro_controlar_estoque;
    property Pro_data_ultima_venda: string read FPro_data_ultima_venda write FPro_data_ultima_venda;
    property Pro_data_ultima_compra: string read FPro_data_ultima_compra write FPro_data_ultima_compra;
    property Pro_icmsstret_aliquota: double read FPro_icmsstret_aliquota write FPro_icmsstret_aliquota;
    property Pro_produto_marca_idpk: string read FPro_produto_marca_idpk write FPro_produto_marca_idpk;
    property Pro_nota_fiscal_infadic: string read FPro_nota_fiscal_infadic write FPro_nota_fiscal_infadic;
    property Pro_permite_mudar_preco: integer read FPro_permite_mudar_preco write FPro_permite_mudar_preco;
    property Pro_produto_cest_codigo: string read FPro_produto_cest_codigo write FPro_produto_cest_codigo;
    property Pro_produto_tipo_codigo: string read FPro_produto_tipo_codigo write FPro_produto_tipo_codigo;
    property Pro_icmsstret_substituto: double read FPro_icmsstret_substituto write FPro_icmsstret_substituto;
    property Pro_produto_unidade_idpk: string read FPro_produto_unidade_idpk write FPro_produto_unidade_idpk;
    property Pro_balanca_validade_dias: integer read FPro_balanca_validade_dias write FPro_balanca_validade_dias;
    property Pro_data_remarcacao_custo: string read FPro_data_remarcacao_custo write FPro_data_remarcacao_custo;
    property Pro_data_remarcacao_venda: string read FPro_data_remarcacao_venda write FPro_data_remarcacao_venda;
    property Pro_produto_origem_codigo: integer read FPro_produto_origem_codigo write FPro_produto_origem_codigo;
    property Pro_icmsstret_fcp_aliquota: double read FPro_icmsstret_fcp_aliquota write FPro_icmsstret_fcp_aliquota;
    property Pro_produto_categoria_idpk: string read FPro_produto_categoria_idpk write FPro_produto_categoria_idpk;
    property Pro_produto_cest_descricao: string read FPro_produto_cest_descricao write FPro_produto_cest_descricao;
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

{ TProduto_foto }

constructor TProduto_foto.Create;
begin
end;

destructor TProduto_foto.Destroy;
begin

  inherited;
end;

constructor TProduto_foto.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('prf_idpk', self.FPrf_idpk); except end;
  try value.TryGetValue<string>('prf_descricao', self.FPrf_descricao); except end;
  try value.TryGetValue<string>('prf_foto_path', self.FPrf_foto_path); except end;
  try value.TryGetValue<integer>('prf_empresa_idpk', self.FPrf_empresa_idpk); except end;
  try value.TryGetValue<integer>('prf_produto_idpk', self.FPrf_produto_idpk); except end;
  try value.TryGetValue<integer>('prf_foto_principal', self.FPrf_foto_principal); except end;
  try value.TryGetValue<string>('prf_ultima_alteracao', self.FPrf_ultima_alteracao); except end;
end;

constructor TProduto_foto.CreateWithJsonString(const value : string);
var obj : TJSONObject;
begin
  obj := TJSONObject(TJSONObject.ParseJSONValue(value));
  try
    self.CreateWithJson(obj);
  finally
    myFreeAndNil(obj);
  end;
end;

{ TParente }

constructor TParente.Create;
begin
end;

destructor TParente.Destroy;
begin

  inherited;
end;

constructor TParente.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<integer>('qtde_filhos', self.FQtde_filhos); except end;
  try value.TryGetValue<string>('produto_pai_idpk', self.FProduto_pai_idpk); except end;
end;

constructor TParente.CreateWithJsonString(const value : string);
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
  Parente := TParente.Create;
  Produto_foto := TList<TProduto_foto>.Create;
  Produto_tipo := TProduto_tipo.Create;
  Produto_origem := TProduto_origem.Create;
  Produto_estoque := TList<TProduto_estoque>.Create;
  Produto_categoria := TProduto_categoria.Create;
  Produto_unidade := TProduto_unidade.Create;
end;

destructor TRegistros.Destroy;
begin
  myFreeAndNil(Parente);
  while (Produto_foto.Count > 0) do
  begin
    myFreeAndNil(Produto_foto.items[0]);
    Produto_foto.Delete(0);
  end;
  myFreeAndNil(Produto_foto);
  myFreeAndNil(Produto_tipo);
  myFreeAndNil(Produto_origem);
  while (Produto_estoque.Count > 0) do
  begin
    myFreeAndNil(Produto_estoque.items[0]);
    Produto_estoque.Delete(0);
  end;
  myFreeAndNil(Produto_estoque);
  myFreeAndNil(Produto_categoria);
  myFreeAndNil(Produto_unidade);

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

  try
    value.TryGetValue<TJSONObject>('parente', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FParente);
      self.FParente := TParente.CreateWithJson(obj);
    end;
  except
  end;
  try value.TryGetValue<string>('pro_ncm', self.FPro_ncm); except end;
  try value.TryGetValue<string>('pro_sku', self.FPro_sku); except end;
  try value.TryGetValue<integer>('pro_idpk', self.FPro_idpk); except end;
  try value.TryGetValue<string>('pro_tipo', self.FPro_tipo); except end;
  try value.TryGetValue<double>('pro_altura', self.FPro_altura); except end;
  try value.TryGetValue<string>('pro_cbenef', self.FPro_cbenef); except end;
  try value.TryGetValue<integer>('pro_inativo', self.FPro_inativo); except end;
  try value.TryGetValue<double>('pro_largura', self.FPro_largura); except end;
  try value.TryGetValue<integer>('pro_favorito', self.FPro_favorito); except end;
  try
    value.TryGetValue<TJSONArray>('produto_foto', arr);
    if (arr <> nil) then
      for x := 0 to arr.count - 1 do
      begin
        obj := TJSONObject(arr.items[x]);
        if (obj = nil) then
          continue;

        self.FProduto_foto.add(
          TProduto_foto.CreateWithJson(obj)
        );
      end;
  except
  end;
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
  try value.TryGetValue<string>('pro_ncm_status', self.FPro_ncm_status); except end;
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
    value.TryGetValue<TJSONObject>('produto_categoria', obj);
    if (obj <> nil) then
    begin
      myFreeAndNil(self.FProduto_categoria);
      self.FProduto_categoria := TProduto_categoria.CreateWithJson(obj);
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
  try value.TryGetValue<string>('produto_variacao', self.FProduto_variacao); except end;
  try value.TryGetValue<string>('pro_data_cadastro', self.FPro_data_cadastro); except end;
  try value.TryGetValue<double>('pro_markup_minimo', self.FPro_markup_minimo); except end;
  try value.TryGetValue<string>('pro_ncm_descricao', self.FPro_ncm_descricao); except end;
  try value.TryGetValue<integer>('pro_codigo_interno', self.FPro_codigo_interno); except end;
  try value.TryGetValue<double>('pro_estoque_minimo', self.FPro_estoque_minimo); except end;
  try value.TryGetValue<double>('pro_icmsstret_base', self.FPro_icmsstret_base); except end;
  try value.TryGetValue<integer>('pro_exibir_catalogo', self.FPro_exibir_catalogo); except end;
  try value.TryGetValue<double>('pro_icmsstret_valor', self.FPro_icmsstret_valor); except end;
  try value.TryGetValue<integer>('pro_balanca_validade', self.FPro_balanca_validade); except end;
  try value.TryGetValue<string>('pro_ultima_alteracao', self.FPro_ultima_alteracao); except end;
  try value.TryGetValue<string>('produto_pacote_barra', self.FProduto_pacote_barra); except end;
  try value.TryGetValue<integer>('pro_controlar_estoque', self.FPro_controlar_estoque); except end;
  try value.TryGetValue<string>('pro_data_ultima_venda', self.FPro_data_ultima_venda); except end;
  try value.TryGetValue<string>('pro_data_ultima_compra', self.FPro_data_ultima_compra); except end;
  try value.TryGetValue<double>('pro_icmsstret_aliquota', self.FPro_icmsstret_aliquota); except end;
  try value.TryGetValue<string>('pro_produto_marca_idpk', self.FPro_produto_marca_idpk); except end;
  try value.TryGetValue<string>('pro_nota_fiscal_infadic', self.FPro_nota_fiscal_infadic); except end;
  try value.TryGetValue<integer>('pro_permite_mudar_preco', self.FPro_permite_mudar_preco); except end;
  try value.TryGetValue<string>('pro_produto_cest_codigo', self.FPro_produto_cest_codigo); except end;
  try value.TryGetValue<string>('pro_produto_tipo_codigo', self.FPro_produto_tipo_codigo); except end;
  try value.TryGetValue<double>('pro_icmsstret_substituto', self.FPro_icmsstret_substituto); except end;
  try value.TryGetValue<string>('pro_produto_unidade_idpk', self.FPro_produto_unidade_idpk); except end;
  try value.TryGetValue<integer>('pro_balanca_validade_dias', self.FPro_balanca_validade_dias); except end;
  try value.TryGetValue<string>('pro_data_remarcacao_custo', self.FPro_data_remarcacao_custo); except end;
  try value.TryGetValue<string>('pro_data_remarcacao_venda', self.FPro_data_remarcacao_venda); except end;
  try value.TryGetValue<integer>('pro_produto_origem_codigo', self.FPro_produto_origem_codigo); except end;
  try value.TryGetValue<double>('pro_icmsstret_fcp_aliquota', self.FPro_icmsstret_fcp_aliquota); except end;
  try value.TryGetValue<string>('pro_produto_categoria_idpk', self.FPro_produto_categoria_idpk); except end;
  try value.TryGetValue<string>('pro_produto_cest_descricao', self.FPro_produto_cest_descricao); except end;
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
  try value.TryGetValue<string>('codigo', self.FCodigo); except end;
  try value.TryGetValue<string>('tag', self.FTag); except end;
  try value.TryGetValue<string>('mensagem', self.FMensagem); except end;
  try value.TryGetValue<string>('mensagem_original', self.FMensagem_original); except end;
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
