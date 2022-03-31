unit mercurio.api.produto;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.response.produto.get,
  mercurio.response.produto.post, mercurio.response.produto.put, mercurio.response.produto.delete;

type
  /// <summary> Tabela de produtos </summary>
  IProduto = interface
    ['{5BCA1F87-2BAF-4EEF-BE4A-4491E0975E10}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IProduto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IProduto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Nome do produto </summary>
    function setDescricao(const value : string) : IProduto;
    /// <summary> Nome do produto </summary>
    function getDescricao : string;
    /// <summary> Código numérico sequencial visível ao usuário final (pode ser setado manualmente) </summary>
    function setCodigoInterno(const value : integer) : IProduto;
    /// <summary> Código numérico sequencial visível ao usuário final (pode ser setado manualmente) </summary>
    function getCodigoInterno : integer;
    /// <summary> Código auxiliar com letras e números </summary>
    function setCodigoAuxiliar(const value : string) : IProduto;
    /// <summary> Código auxiliar com letras e números </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Código de barras do produto </summary>
    function setCodBarras(const value : string) : IProduto;
    /// <summary> Código de barras do produto </summary>
    function getCodBarras : string;
    /// <summary> Preço de custo do produto </summary>
    function setPrecoCusto(const value : double) : IProduto;
    /// <summary> Preço de custo do produto </summary>
    function getPrecoCusto : double;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço mínimo do produto </summary>
    function setMarkupMinimo(const value : double) : IProduto;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço mínimo do produto </summary>
    function getMarkupMinimo : double;
    /// <summary> Menor preço que este produto pode ser vendido </summary>
    function setPrecoMinimo(const value : double) : IProduto;
    /// <summary> Menor preço que este produto pode ser vendido </summary>
    function getPrecoMinimo : double;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço de venda do produto </summary>
    function setMarkupVenda(const value : double) : IProduto;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço de venda do produto </summary>
    function getMarkupVenda : double;
    /// <summary> Preço de venda deste produto </summary>
    function setPrecoVenda(const value : double) : IProduto;
    /// <summary> Preço de venda deste produto </summary>
    function getPrecoVenda : double;
    /// <summary> Peso líquido do produto </summary>
    function setPesoLiquido(const value : double) : IProduto;
    /// <summary> Peso líquido do produto </summary>
    function getPesoLiquido : double;
    /// <summary> Peso bruto do produto </summary>
    function setPesoBruto(const value : double) : IProduto;
    /// <summary> Peso bruto do produto </summary>
    function getPesoBruto : double;
    /// <summary> Ao ativar esta propriedade, o produto passa a ter o controle de estoque </summary>
    function setControlarEstoque(const value : boolean) : IProduto;
    /// <summary> Ao ativar esta propriedade, o produto passa a ter o controle de estoque </summary>
    function getControlarEstoque : boolean;
    /// <summary> Caso o produto tiver controle de estoque, este campo indica se pode ter a quantidade de estoque menor que zero caso ativo </summary>
    function setPermiteEstoqueNegativo(const value : boolean) : IProduto;
    /// <summary> Caso o produto tiver controle de estoque, este campo indica se pode ter a quantidade de estoque menor que zero caso ativo </summary>
    function getPermiteEstoqueNegativo : boolean;
    /// <summary> Se ativo, este campo indica que este produto pode ter o preço de venda alterado </summary>
    function setPermiteMudarPreco(const value : boolean) : IProduto;
    /// <summary> Se ativo, este campo indica que este produto pode ter o preço de venda alterado </summary>
    function getPermiteMudarPreco : boolean;
    /// <summary> Se ativo, permite vender este produto em partes/frações, exemplo vender meia caixa de chiclete (0,5) </summary>
    function setPermiteVendaFracionada(const value : boolean) : IProduto;
    /// <summary> Se ativo, permite vender este produto em partes/frações, exemplo vender meia caixa de chiclete (0,5) </summary>
    function getPermiteVendaFracionada : boolean;
    /// <summary> Indica a quantidade mínima que deve se ter este produto em estoque </summary>
    function setEstoqueMinimo(const value : double) : IProduto;
    /// <summary> Indica a quantidade mínima que deve se ter este produto em estoque </summary>
    function getEstoqueMinimo : double;
    /// <summary> Observações deste produto </summary>
    function setObservacao(const value : string) : IProduto;
    /// <summary> Observações deste produto </summary>
    function getObservacao : string;
    /// <summary> Campo que indica que este produto deve ser exibido no catálogo de produtos </summary>
    function setExibirCatalogo(const value : boolean) : IProduto;
    /// <summary> Campo que indica que este produto deve ser exibido no catálogo de produtos </summary>
    function getExibirCatalogo : boolean;
    /// <summary> Indica se o produto está inativo dentro da empresa, não está sendo vendido </summary>
    function setInativo(const value : boolean) : IProduto;
    /// <summary> Indica se o produto está inativo dentro da empresa, não está sendo vendido </summary>
    function getInativo : boolean;
    /// <summary> Indica se este produto é um dos favoritos/mais vendidos </summary>
    function setFavorito(const value : boolean) : IProduto;
    /// <summary> Indica se este produto é um dos favoritos/mais vendidos </summary>
    function getFavorito : boolean;
    /// <summary> Indica se este produto será exportado para balanças integradas com o sistema via TXT </summary>
    function setUsaBalanca(const value : boolean) : IProduto;
    /// <summary> Indica se este produto será exportado para balanças integradas com o sistema via TXT </summary>
    function getUsaBalanca : boolean;
    /// <summary> Indica se é para imprimir a validade deste produto na etiqueta gerada pela balança </summary>
    function setBalancaValidade(const value : boolean) : IProduto;
    /// <summary> Indica se é para imprimir a validade deste produto na etiqueta gerada pela balança </summary>
    function getBalancaValidade : boolean;
    /// <summary> Indica a quantidade de dias para o vencimento deste produto a ser impresso pela balança </summary>
    function setBalancaValidadeDias(const value : integer) : IProduto;
    /// <summary> Indica a quantidade de dias para o vencimento deste produto a ser impresso pela balança </summary>
    function getBalancaValidadeDias : integer;
    /// <summary> Largura do produto </summary>
    function setLargura(const value : double) : IProduto;
    /// <summary> Largura do produto </summary>
    function getLargura : double;
    /// <summary> Altura do produto </summary>
    function setAltura(const value : double) : IProduto;
    /// <summary> Altura do produto </summary>
    function getAltura : double;
    /// <summary> Comprimento/profundidade do produto </summary>
    function setComprimento(const value : double) : IProduto;
    /// <summary> Comprimento/profundidade do produto </summary>
    function getComprimento : double;
    /// <summary>
    ///  0 - Nacional
    ///  1 - Estrangeira – Importação direta
    ///  2 - Estrangeira – Adquirida no mercado interno
    ///  3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%
    ///  4 - Nacional, cuja produção tenha sido feita em conformidade com a MP 252 (MP do Bem)
    ///  5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
    ///  6 - Estrangeira – Importação direta, sem similar nacional, constante em lista de Resolução CAMEX
    ///  7 - Estrangeira – Adquirida no mercado interno, sem similar nacional, constante em lista de Resolução CAMEX
    ///  8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
    /// </summary>
    function setProdutoOrigemCodigo(const value : integer) : IProduto;
    /// <summary>
    ///  0 - Nacional
    ///  1 - Estrangeira – Importação direta
    ///  2 - Estrangeira – Adquirida no mercado interno
    ///  3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%
    ///  4 - Nacional, cuja produção tenha sido feita em conformidade com a MP 252 (MP do Bem)
    ///  5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
    ///  6 - Estrangeira – Importação direta, sem similar nacional, constante em lista de Resolução CAMEX
    ///  7 - Estrangeira – Adquirida no mercado interno, sem similar nacional, constante em lista de Resolução CAMEX
    ///  8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
    /// </summary>
    function getProdutoOrigemCodigo : integer;
    /// <summary> Idpk da tabela produto_categoria </summary>
    function setProdutoCategoriaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_categoria </summary>
    function getProdutoCategoriaIdpk : integer;
    /// <summary> Idpk da tabela produto_marca </summary>
    function setProdutoMarcaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_marca </summary>
    function getProdutoMarcaIdpk : integer;
    /// <summary> Idpk da tabela produto_subcategoria </summary>
    function setProdutoSubcategoriaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_subcategoria </summary>
    function getProdutoSubcategoriaIdpk : integer;
    /// <summary> Idpk da tabela produto_unidade </summary>
    function setProdutoUnidadeIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_unidade </summary>
    function getProdutoUnidadeIdpk : integer;
    /// <summary> Idpk da tabela produto_ncm </summary>
    function setProdutoNcmIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_ncm </summary>
    function getProdutoNcmIdpk : integer;
    /// <summary> Código da tabela produto_tipo </summary>
    function setProdutoTipoCodigo(const value : string) : IProduto;
    /// <summary> Código da tabela produto_tipo </summary>
    function getProdutoTipoCodigo : string;
    /// <summary> Código da tabela produto_cest </summary>
    function setProdutoCestCodigo(const value : integer) : IProduto;
    /// <summary> Código da tabela produto_cest </summary>
    function getProdutoCestCodigo : integer;
    /// <summary> Idpk da tabela regra_fiscal </summary>
    function setProdutoRegraFiscalIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela regra_fiscal </summary>
    function getProdutoRegraFiscalIdpk : integer;
    /// <summary> Campo utilizado para informar o estoque atual deste produto na empresa/filial em edição </summary>
    function setEstoqueTotal(const value : double) : IProduto;
    /// <summary> Campo utilizado para informar o estoque atual deste produto na empresa/filial em edição </summary>
    function getEstoqueTotal : double;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Tabela de produtos </summary>
  TProduto = class(TInterfacedObject, IProduto)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FDescricao : string;
    FCodigoInterno : integer;
    FCodigoAuxiliar : string;
    FCodBarras : string;
    FPrecoCusto : double;
    FMarkupMinimo : double;
    FPrecoMinimo : double;
    FMarkupVenda : double;
    FPrecoVenda : double;
    FPesoLiquido : double;
    FPesoBruto : double;
    FControlaEstoque : boolean;
    FPermiteEstoqueNegativo : boolean;
    FPermiteMudarPreco : boolean;
    FPermiteVendaFracionada : boolean;
    FEstoqueMinimo : double;
    FObservacao : string;
    FExibirCatalogo : boolean;
    FInativo : boolean;
    FFavorito : boolean;
    FUsaBalanca : boolean;
    FBalancaValidade : boolean;
    FBalancaValidadeDias : integer;
    FLargura : double;
    FAltura : double;
    FComprimento : double;
    FProdutoOrigemCodigo : integer;
    FProdutoCategoriaIdpk : integer;
    FProdutoMarcaIdpk : integer;
    FProdutoSubcategoriaIdpk : integer;
    FProdutoUnidadeIdpk : integer;
    FProdutoNcmIdpk : integer;
    FProdutoTipoCodigo : string;
    FProdutoCestCodigo : integer;
    FProdutoRegraFiscalIdpk : integer;
    FEstoqueTotal : double;
    FEstoqueTotalChecked : boolean;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IProduto;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IProduto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IProduto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Nome do produto </summary>
    function setDescricao(const value : string) : IProduto;
    /// <summary> Nome do produto </summary>
    function getDescricao : string;
    /// <summary> Código numérico sequencial visível ao usuário final (pode ser setado manualmente) </summary>
    function setCodigoInterno(const value : integer) : IProduto;
    /// <summary> Código numérico sequencial visível ao usuário final (pode ser setado manualmente) </summary>
    function getCodigoInterno : integer;
    /// <summary> Código auxiliar com letras e números </summary>
    function setCodigoAuxiliar(const value : string) : IProduto;
    /// <summary> Código auxiliar com letras e números </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Código de barras do produto </summary>
    function setCodBarras(const value : string) : IProduto;
    /// <summary> Código de barras do produto </summary>
    function getCodBarras : string;
    /// <summary> Preço de custo do produto </summary>
    function setPrecoCusto(const value : double) : IProduto;
    /// <summary> Preço de custo do produto </summary>
    function getPrecoCusto : double;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço mínimo do produto </summary>
    function setMarkupMinimo(const value : double) : IProduto;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço mínimo do produto </summary>
    function getMarkupMinimo : double;
    /// <summary> Menor preço que este produto pode ser vendido </summary>
    function setPrecoMinimo(const value : double) : IProduto;
    /// <summary> Menor preço que este produto pode ser vendido </summary>
    function getPrecoMinimo : double;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço de venda do produto </summary>
    function setMarkupVenda(const value : double) : IProduto;
    /// <summary> Campo percentual utilizado somente para importação de notas de entrada para gerar o preço de venda do produto </summary>
    function getMarkupVenda : double;
    /// <summary> Preço de venda deste produto </summary>
    function setPrecoVenda(const value : double) : IProduto;
    /// <summary> Preço de venda deste produto </summary>
    function getPrecoVenda : double;
    /// <summary> Peso líquido do produto </summary>
    function setPesoLiquido(const value : double) : IProduto;
    /// <summary> Peso líquido do produto </summary>
    function getPesoLiquido : double;
    /// <summary> Peso bruto do produto </summary>
    function setPesoBruto(const value : double) : IProduto;
    /// <summary> Peso bruto do produto </summary>
    function getPesoBruto : double;
    /// <summary> Ao ativar esta propriedade, o produto passa a ter o controle de estoque </summary>
    function setControlarEstoque(const value : boolean) : IProduto;
    /// <summary> Ao ativar esta propriedade, o produto passa a ter o controle de estoque </summary>
    function getControlarEstoque : boolean;
    /// <summary> Caso o produto tiver controle de estoque, este campo indica se pode ter a quantidade de estoque menor que zero caso ativo </summary>
    function setPermiteEstoqueNegativo(const value : boolean) : IProduto;
    /// <summary> Caso o produto tiver controle de estoque, este campo indica se pode ter a quantidade de estoque menor que zero caso ativo </summary>
    function getPermiteEstoqueNegativo : boolean;
    /// <summary> Se ativo, este campo indica que este produto pode ter o preço de venda alterado </summary>
    function setPermiteMudarPreco(const value : boolean) : IProduto;
    /// <summary> Se ativo, este campo indica que este produto pode ter o preço de venda alterado </summary>
    function getPermiteMudarPreco : boolean;
    /// <summary> Se ativo, permite vender este produto em partes/frações, exemplo vender meia caixa de chiclete (0,5) </summary>
    function setPermiteVendaFracionada(const value : boolean) : IProduto;
    /// <summary> Se ativo, permite vender este produto em partes/frações, exemplo vender meia caixa de chiclete (0,5) </summary>
    function getPermiteVendaFracionada : boolean;
    /// <summary> Indica a quantidade mínima que deve se ter este produto em estoque </summary>
    function setEstoqueMinimo(const value : double) : IProduto;
    /// <summary> Indica a quantidade mínima que deve se ter este produto em estoque </summary>
    function getEstoqueMinimo : double;
    /// <summary> Observações deste produto </summary>
    function setObservacao(const value : string) : IProduto;
    /// <summary> Observações deste produto </summary>
    function getObservacao : string;
    /// <summary> Campo que indica que este produto deve ser exibido no catálogo de produtos </summary>
    function setExibirCatalogo(const value : boolean) : IProduto;
    /// <summary> Campo que indica que este produto deve ser exibido no catálogo de produtos </summary>
    function getExibirCatalogo : boolean;
    /// <summary> Indica se o produto está inativo dentro da empresa, não está sendo vendido </summary>
    function setInativo(const value : boolean) : IProduto;
    /// <summary> Indica se o produto está inativo dentro da empresa, não está sendo vendido </summary>
    function getInativo : boolean;
    /// <summary> Indica se este produto é um dos favoritos/mais vendidos </summary>
    function setFavorito(const value : boolean) : IProduto;
    /// <summary> Indica se este produto é um dos favoritos/mais vendidos </summary>
    function getFavorito : boolean;
    /// <summary> Indica se este produto será exportado para balanças integradas com o sistema via TXT </summary>
    function setUsaBalanca(const value : boolean) : IProduto;
    /// <summary> Indica se este produto será exportado para balanças integradas com o sistema via TXT </summary>
    function getUsaBalanca : boolean;
    /// <summary> Indica se é para imprimir a validade deste produto na etiqueta gerada pela balança </summary>
    function setBalancaValidade(const value : boolean) : IProduto;
    /// <summary> Indica se é para imprimir a validade deste produto na etiqueta gerada pela balança </summary>
    function getBalancaValidade : boolean;
    /// <summary> Indica a quantidade de dias para o vencimento deste produto a ser impresso pela balança </summary>
    function setBalancaValidadeDias(const value : integer) : IProduto;
    /// <summary> Indica a quantidade de dias para o vencimento deste produto a ser impresso pela balança </summary>
    function getBalancaValidadeDias : integer;
    /// <summary> Largura do produto </summary>
    function setLargura(const value : double) : IProduto;
    /// <summary> Largura do produto </summary>
    function getLargura : double;
    /// <summary> Altura do produto </summary>
    function setAltura(const value : double) : IProduto;
    /// <summary> Altura do produto </summary>
    function getAltura : double;
    /// <summary> Comprimento/profundidade do produto </summary>
    function setComprimento(const value : double) : IProduto;
    /// <summary> Comprimento/profundidade do produto </summary>
    function getComprimento : double;
    /// <summary>
    ///  0 - Nacional
    ///  1 - Estrangeira – Importação direta
    ///  2 - Estrangeira – Adquirida no mercado interno
    ///  3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%
    ///  4 - Nacional, cuja produção tenha sido feita em conformidade com a MP 252 (MP do Bem)
    ///  5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
    ///  6 - Estrangeira – Importação direta, sem similar nacional, constante em lista de Resolução CAMEX
    ///  7 - Estrangeira – Adquirida no mercado interno, sem similar nacional, constante em lista de Resolução CAMEX
    ///  8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
    /// </summary>
    function setProdutoOrigemCodigo(const value : integer) : IProduto;
    /// <summary>
    ///  0 - Nacional
    ///  1 - Estrangeira – Importação direta
    ///  2 - Estrangeira – Adquirida no mercado interno
    ///  3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%
    ///  4 - Nacional, cuja produção tenha sido feita em conformidade com a MP 252 (MP do Bem)
    ///  5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
    ///  6 - Estrangeira – Importação direta, sem similar nacional, constante em lista de Resolução CAMEX
    ///  7 - Estrangeira – Adquirida no mercado interno, sem similar nacional, constante em lista de Resolução CAMEX
    ///  8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
    /// </summary>
    function getProdutoOrigemCodigo : integer;
    /// <summary> Idpk da tabela produto_categoria </summary>
    function setProdutoCategoriaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_categoria </summary>
    function getProdutoCategoriaIdpk : integer;
    /// <summary> Idpk da tabela produto_marca </summary>
    function setProdutoMarcaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_marca </summary>
    function getProdutoMarcaIdpk : integer;
    /// <summary> Idpk da tabela produto_subcategoria </summary>
    function setProdutoSubcategoriaIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_subcategoria </summary>
    function getProdutoSubcategoriaIdpk : integer;
    /// <summary> Idpk da tabela produto_unidade </summary>
    function setProdutoUnidadeIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_unidade </summary>
    function getProdutoUnidadeIdpk : integer;
    /// <summary> Idpk da tabela produto_ncm </summary>
    function setProdutoNcmIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela produto_ncm </summary>
    function getProdutoNcmIdpk : integer;
    /// <summary> Código da tabela produto_tipo </summary>
    function setProdutoTipoCodigo(const value : string) : IProduto;
    /// <summary> Código da tabela produto_tipo </summary>
    function getProdutoTipoCodigo : string;
    /// <summary> Código da tabela produto_cest </summary>
    function setProdutoCestCodigo(const value : integer) : IProduto;
    /// <summary> Código da tabela produto_cest </summary>
    function getProdutoCestCodigo : integer;
    /// <summary> Idpk da tabela regra_fiscal </summary>
    function setProdutoRegraFiscalIdpk(const value : integer) : IProduto;
    /// <summary> Idpk da tabela regra_fiscal </summary>
    function getProdutoRegraFiscalIdpk : integer;
    /// <summary> Campo utilizado para informar o estoque atual deste produto na empresa/filial em edição </summary>
    function setEstoqueTotal(const value : double) : IProduto;
    /// <summary> Campo utilizado para informar o estoque atual deste produto na empresa/filial em edição </summary>
    function getEstoqueTotal : double;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;

  IProdutoGet = interface(IPayloadGet)
    ['{458243E6-4EC8-4670-ACD4-64F787BBD44E}']
    /// <summary> Código numérico do cadastro do produto visível ao usuário (não é o idpk) </summary>
    function setCodigoInterno(const value : string) : IProdutoGet;
    /// <summary> Código numérico do cadastro do produto visível ao usuário (não é o idpk) </summary>
    function getCodigoInterno : string;
    /// <summary> Código auxiliar do cadastro do produto </summary>
    function setCodigoAuxiliar(const value : string) : IProdutoGet;
    /// <summary> Código auxiliar do cadastro do produto </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Nome ou parte do nome do produto </summary>
    function setNome(const value : string) : IProdutoGet;
    /// <summary> Nome ou parte do nome do produto </summary>
    function getNome : string;
    /// <summary> Código de barras principal ou secundário vinculado com o produto </summary>
    function setCodBarras(const value : string) : IProdutoGet;
    /// <summary> Código de barras principal ou secundário vinculado com o produto </summary>
    function getCodBarras : string;
    /// <summary> Consulta somente os produtos que possuem o estoque menor que o valor definido neste campo </summary>
    function setEstoqueMenor(const value : double) : IProdutoGet;
    /// <summary> Consulta somente os produtos que possuem o estoque menor que o valor definido neste campo </summary>
    function getEstoqueMenor : double;
    /// <summary> Consulta somente os produtos que possuem o mesmo código do tipo de produto </summary>
    function setProdutoTipoCodigo(const value : string) : IProdutoGet;
    /// <summary> Consulta somente os produtos que possuem o mesmo código do tipo de produto </summary>
    function getProdutoTipoCodigo : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TProdutoGet = class(TPayloadGet, IProdutoGet)
  private
    FCodigoInterno : string;
    FCodigoAuxiliar : string;
    FNome : string;
    FCodBarras : string;
    FEstoqueMenor : double;
    FEstoqueMenorChecked : boolean;
    FProdutoTipoCodigo : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IProdutoGet;

    /// <summary> Código numérico do cadastro do produto visível ao usuário (não é o idpk) </summary>
    function setCodigoInterno(const value : string) : IProdutoGet;
    /// <summary> Código numérico do cadastro do produto visível ao usuário (não é o idpk) </summary>
    function getCodigoInterno : string;
    /// <summary> Código auxiliar do cadastro do produto </summary>
    function setCodigoAuxiliar(const value : string) : IProdutoGet;
    /// <summary> Código auxiliar do cadastro do produto </summary>
    function getCodigoAuxiliar : string;
    /// <summary> Nome ou parte do nome do produto </summary>
    function setNome(const value : string) : IProdutoGet;
    /// <summary> Nome ou parte do nome do produto </summary>
    function getNome : string;
    /// <summary> Código de barras principal ou secundário vinculado com o produto </summary>
    function setCodBarras(const value : string) : IProdutoGet;
    /// <summary> Código de barras principal ou secundário vinculado com o produto </summary>
    function getCodBarras : string;
    /// <summary> Consulta somente os produtos que possuem o estoque menor que o valor definido neste campo </summary>
    function setEstoqueMenor(const value : double) : IProdutoGet;
    /// <summary> Consulta somente os produtos que possuem o estoque menor que o valor definido neste campo </summary>
    function getEstoqueMenor : double;
    /// <summary> Consulta somente os produtos que possuem o mesmo código do tipo de produto </summary>
    function setProdutoTipoCodigo(const value : string) : IProdutoGet;
    /// <summary> Consulta somente os produtos que possuem o mesmo código do tipo de produto </summary>
    function getProdutoTipoCodigo : string;

    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string; override;
  end;

  IProdutoPost = interface(IPayloadPost)
    ['{0CF06197-B60A-4BE3-AA8A-128C63F6B34A}']
    /// <summary> Adiciona um novo produto ao payload via classe </summary>
    function addProduto(const value : IProduto) : IProdutoPost;
  end;

  TProdutoPost = class(TPayloadPost, IProdutoPost)
  public
    class function new : IProdutoPost;

    /// <summary> Adiciona um novo produto ao payload via classe </summary>
    function addProduto(const value : IProduto) : IProdutoPost;
  end;

  IProdutoPut = interface(IPayloadPut)
    ['{50C8A048-F5D7-4B74-815C-A754C794C954}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IProdutoPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IProdutoPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Adiciona as informações do produto ao payload via classe </summary>
    function setProduto(const value : IProduto) : IProdutoPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, o produto adicionado via classe é desconsiderado </summary>
    function setPayload(const value : TJSONObject) : IProdutoPut;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  TProdutoPut = class(TPayloadPut, IProdutoPut)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FPayload : TJSONObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IProdutoPut;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IProdutoPut;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IProdutoPut;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Adiciona as informações do produto ao payload via classe </summary>
    function setProduto(const value : IProduto) : IProdutoPut;
    /// <summary> Recebe o payload manualmente. Caso recebido este parâmetro, o produto adicionado via classe é desconsiderado </summary>
    function setPayload(const value : TJSONObject) : IProdutoPut;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONValue; override;
    /// <summary> Monta parâmetros para a URL </summary>
    function toParams : string;
  end;

  IProdutoDelete = interface(IPayloadDelete)
    ['{847B530F-8B23-4424-A167-AF481F3B9470}']
  end;

  TProdutoDelete = class(TPayloadDelete, IProdutoDelete)
  public
    class function new : IProdutoDelete;
  end;

  IResponseProdutoGet = interface(IResponse)
    ['{60374B2C-CFC2-4C32-8C74-64AB8EA03026}']
    function Obj : TResponseClassProdutoGet;
  end;
  TResponseProdutoGet = class(TResponse, IResponseProdutoGet)
  private
    FObj : TResponseClassProdutoGet;
  public
    class function new(parent : IResponse) : IResponseProdutoGet;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassProdutoGet;
  end;

  IResponseProdutoPost = interface(IResponse)
    ['{9B48828E-A47C-462C-A823-52F53F3BC812}']
    function Obj : TResponseClassProdutoPost;
  end;
  TResponseProdutoPost = class(TResponse, IResponseProdutoPost)
  private
    FObj : TResponseClassProdutoPost;
  public
    class function new(parent : IResponse) : IResponseProdutoPost;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassProdutoPost;
  end;

  IResponseProdutoPut = interface(IResponse)
    ['{9E42F3C9-422F-4455-B784-06741BD0F488}']
    function Obj : TResponseClassProdutoPut;
  end;
  TResponseProdutoPut = class(TResponse, IResponseProdutoPut)
  private
    FObj : TResponseClassProdutoPut;
  public
    class function new(parent : IResponse) : IResponseProdutoPut;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassProdutoPut;
  end;

  IResponseProdutoDelete = interface(IResponse)
    ['{11E8EDFB-2923-4D05-AB21-F6DAF40619B4}']
    function Obj : TResponseClassProdutoDelete;
  end;
  TResponseProdutoDelete = class(TResponse, IResponseProdutoDelete)
  private
    FObj : TResponseClassProdutoDelete;
  public
    class function new(parent : IResponse) : IResponseProdutoDelete;
    constructor Create(pResponse : IHTTPResponse; pResponseData : string);
    destructor Destroy; override;
    function Obj : TResponseClassProdutoDelete;
  end;

  TMercurioProduto = class(TMercurioPai)
  public
    /// <summary> Busca um ou mais produtos na base da empresa </summary>
    function Get(var params : IProdutoGet) : IResponseProdutoGet;
    /// <summary> Insere um ou mais produtos </summary>
    function Post(var params : IProdutoPost) : IResponseProdutoPost;
    /// <summary> Altera os dados cadastrais de um produto </summary>
    function Put(var params : IProdutoPut) : IResponseProdutoPut;
    /// <summary> Apaga um produto </summary>
    function Delete(var params : IProdutoDelete) : IResponseProdutoDelete;
  end;


implementation

{ TProduto }

uses mercurio.api.functions, mercurio.api.consts, System.SysUtils;

constructor TProduto.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FDescricao := '';
  FCodigoInterno := 0;
  FCodigoAuxiliar := '';
  FCodBarras := '';
  FPrecoCusto := 0;
  FMarkupMinimo := 0;
  FPrecoMinimo := 0;
  FMarkupVenda := 0;
  FPrecoVenda := 0;
  FPesoLiquido := 0;
  FPesoBruto := 0;
  FControlaEstoque := false;
  FPermiteEstoqueNegativo := false;
  FPermiteMudarPreco := false;
  FPermiteVendaFracionada := false;
  FEstoqueMinimo := 0;
  FObservacao := '';
  FExibirCatalogo := false;
  FInativo := false;
  FFavorito := false;
  FUsaBalanca := false;
  FBalancaValidade := false;
  FBalancaValidadeDias := 0;
  FLargura := 0;
  FAltura := 0;
  FComprimento := 0;
  FProdutoOrigemCodigo := 0;
  FProdutoCategoriaIdpk := 0;
  FProdutoMarcaIdpk := 0;
  FProdutoSubcategoriaIdpk := 0;
  FProdutoUnidadeIdpk := 0;
  FProdutoNcmIdpk := 0;
  FProdutoTipoCodigo := '00';
  FProdutoCestCodigo := 0;
  FProdutoRegraFiscalIdpk := 0;
  FEstoqueTotal := 0;
  FEstoqueTotalChecked := false;
end;

destructor TProduto.Destroy;
begin

  inherited;
end;

function TProduto.getAltura: double;
begin
  result := FAltura;
end;

function TProduto.getBalancaValidade: boolean;
begin
  result := FBalancaValidade;
end;

function TProduto.getBalancaValidadeDias: integer;
begin
  result := FBalancaValidadeDias;
end;

function TProduto.getCodBarras: string;
begin
  result := FCodBarras;
end;

function TProduto.getCodigoAuxiliar: string;
begin
  result := FCodigoAuxiliar;
end;

function TProduto.getCodigoInterno: integer;
begin
  result := FCodigoInterno;
end;

function TProduto.getComprimento: double;
begin
  result := FComprimento;
end;

function TProduto.getControlarEstoque: boolean;
begin
  result := FControlaEstoque;
end;

function TProduto.getDescricao: string;
begin
  result := FDescricao;
end;

function TProduto.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TProduto.getEstoqueMinimo: double;
begin
  result := FEstoqueMinimo;
end;

function TProduto.getEstoqueTotal: double;
begin
  result := FEstoqueTotal;
end;

function TProduto.getExibirCatalogo: boolean;
begin
  result := FExibirCatalogo;
end;

function TProduto.getFavorito: boolean;
begin
  result := FFavorito;
end;

function TProduto.getIdpk: string;
begin
  result := FIdpk;
end;

function TProduto.getInativo: boolean;
begin
  result := FInativo;
end;

function TProduto.getLargura: double;
begin
  result := FLargura;
end;

function TProduto.getMarkupMinimo: double;
begin
  result := FMarkupMinimo;
end;

function TProduto.getMarkupVenda: double;
begin
  result := FMarkupVenda;
end;

function TProduto.getObservacao: string;
begin
  result := FObservacao;
end;

function TProduto.getPermiteEstoqueNegativo: boolean;
begin
  result := FPermiteEstoqueNegativo;
end;

function TProduto.getPermiteMudarPreco: boolean;
begin
  result := FPermiteMudarPreco;
end;

function TProduto.getPermiteVendaFracionada: boolean;
begin
  result := FPermiteVendaFracionada;
end;

function TProduto.getPesoBruto: double;
begin
  result := FPesoBruto;
end;

function TProduto.getPesoLiquido: double;
begin
  result := FPesoLiquido;
end;

function TProduto.getPrecoCusto: double;
begin
  result := FPrecoCusto;
end;

function TProduto.getPrecoMinimo: double;
begin
  result := FPrecoMinimo;
end;

function TProduto.getPrecoVenda: double;
begin
  result := FPrecoVenda;
end;

function TProduto.getProdutoCategoriaIdpk: integer;
begin
  result := FProdutoCategoriaIdpk;
end;

function TProduto.getProdutoCestCodigo: integer;
begin
  result := FProdutoCestCodigo;
end;

function TProduto.getProdutoMarcaIdpk: integer;
begin
  result := FProdutoMarcaIdpk;
end;

function TProduto.getProdutoNcmIdpk: integer;
begin
  result := FProdutoNcmIdpk;
end;

function TProduto.getProdutoOrigemCodigo: integer;
begin
  result := FProdutoOrigemCodigo;
end;

function TProduto.getProdutoRegraFiscalIdpk: integer;
begin
  result := FProdutoRegraFiscalIdpk;
end;

function TProduto.getProdutoSubcategoriaIdpk: integer;
begin
  result := FProdutoSubcategoriaIdpk;
end;

function TProduto.getProdutoTipoCodigo: string;
begin
  result := FProdutoTipoCodigo;
end;

function TProduto.getProdutoUnidadeIdpk: integer;
begin
  result := FProdutoUnidadeIdpk;
end;

function TProduto.getUsaBalanca: boolean;
begin
  result := FUsaBalanca;
end;

class function TProduto.new: IProduto;
begin
  result := TProduto.Create;
end;

function TProduto.setAltura(const value: double): IProduto;
begin
  result := self;
  FAltura := value;
end;

function TProduto.setBalancaValidade(const value: boolean): IProduto;
begin
  result := self;
  FBalancaValidade := value;
end;

function TProduto.setBalancaValidadeDias(const value: integer): IProduto;
begin
  result := self;
  FBalancaValidadeDias := value;
end;

function TProduto.setCodBarras(const value: string): IProduto;
begin
  result := self;
  FCodBarras := value;
end;

function TProduto.setCodigoAuxiliar(const value: string): IProduto;
begin
  result := self;
  FCodigoAuxiliar := value;
end;

function TProduto.setCodigoInterno(const value: integer): IProduto;
begin
  result := self;
  FCodigoInterno := value;
end;

function TProduto.setComprimento(const value: double): IProduto;
begin
  result := self;
  FComprimento := value;
end;

function TProduto.setControlarEstoque(const value: boolean): IProduto;
begin
  result := self;
  FControlaEstoque := value;
end;

function TProduto.setDescricao(const value: string): IProduto;
begin
  result := self;
  FDescricao := value;
end;

function TProduto.setEmpresaIdpk(const value: string): IProduto;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TProduto.setEstoqueMinimo(const value: double): IProduto;
begin
  result := self;
  FEstoqueMinimo := value;
end;

function TProduto.setEstoqueTotal(const value: double): IProduto;
begin
  result := self;
  FEstoqueTotal := value;
  FEstoqueTotalChecked := true;
end;

function TProduto.setExibirCatalogo(const value: boolean): IProduto;
begin
  result := self;
  FExibirCatalogo := value;
end;

function TProduto.setFavorito(const value: boolean): IProduto;
begin
  result := self;
  FFavorito := value;
end;

function TProduto.setIdpk(const value: string): IProduto;
begin
  result := self;
  FIdpk := value;
end;

function TProduto.setInativo(const value: boolean): IProduto;
begin
  result := self;
  FInativo := value;
end;

function TProduto.setLargura(const value: double): IProduto;
begin
  result := self;
  FLargura := value;
end;

function TProduto.setMarkupMinimo(const value: double): IProduto;
begin
  result := self;
  FMarkupMinimo := value;
end;

function TProduto.setMarkupVenda(const value: double): IProduto;
begin
  result := self;
  FMarkupVenda := value;
end;

function TProduto.setObservacao(const value: string): IProduto;
begin
  result := self;
  FObservacao := value;
end;

function TProduto.setPermiteEstoqueNegativo(const value: boolean): IProduto;
begin
  result := self;
  FPermiteEstoqueNegativo := value;
end;

function TProduto.setPermiteMudarPreco(const value: boolean): IProduto;
begin
  result := self;
  FPermiteMudarPreco := value;
end;

function TProduto.setPermiteVendaFracionada(const value: boolean): IProduto;
begin
  result := self;
  FPermiteVendaFracionada := value;
end;

function TProduto.setPesoBruto(const value: double): IProduto;
begin
  result := self;
  FPesoBruto := value;
end;

function TProduto.setPesoLiquido(const value: double): IProduto;
begin
  result := self;
  FPesoLiquido := value;
end;

function TProduto.setPrecoCusto(const value: double): IProduto;
begin
  result := self;
  FPrecoCusto := value;
end;

function TProduto.setPrecoMinimo(const value: double): IProduto;
begin
  result := self;
  FPrecoMinimo := value;
end;

function TProduto.setPrecoVenda(const value: double): IProduto;
begin
  result := self;
  FPrecoVenda := value;
end;

function TProduto.setProdutoCategoriaIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoCategoriaIdpk := value;
end;

function TProduto.setProdutoCestCodigo(const value: integer): IProduto;
begin
  result := self;
  FProdutoCestCodigo := value;
end;

function TProduto.setProdutoMarcaIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoMarcaIdpk := value;
end;

function TProduto.setProdutoNcmIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoNcmIdpk := value;
end;

function TProduto.setProdutoOrigemCodigo(const value: integer): IProduto;
begin
  result := self;
  FProdutoOrigemCodigo := value;
end;

function TProduto.setProdutoRegraFiscalIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoRegraFiscalIdpk := value;
end;

function TProduto.setProdutoSubcategoriaIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoSubcategoriaIdpk := value;
end;

function TProduto.setProdutoTipoCodigo(const value: string): IProduto;
begin
  result := self;
  FProdutoTipoCodigo := value;
end;

function TProduto.setProdutoUnidadeIdpk(const value: integer): IProduto;
begin
  result := self;
  FProdutoUnidadeIdpk := value;
end;

function TProduto.setUsaBalanca(const value: boolean): IProduto;
begin
  result := self;
  FUsaBalanca := value;
end;

function TProduto.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('pro_idpk', FIdpk);

  result.AddPair('pro_empresa_idpk', FEmpresaIdpk);
  result.AddPair('pro_descricao', FDescricao);
  result.AddPair('pro_codigo_interno', TJSONNumber.Create(FCodigoInterno));
  result.AddPair('pro_codigo_auxiliar', FCodigoAuxiliar);
  result.AddPair('pro_cod_barra', FCodBarras);
  result.AddPair('pro_preco_custo', TJSONNumber.Create(FPrecoCusto));
  result.AddPair('pro_markup_minimo', TJSONNumber.Create(FMarkupMinimo));
  result.AddPair('pro_preco_minimo', TJSONNumber.Create(FPrecoMinimo));
  result.AddPair('pro_markup_venda', TJSONNumber.Create(FMarkupVenda));
  result.AddPair('pro_preco_venda', TJSONNumber.Create(FPrecoVenda));
  result.AddPair('pro_peso_liquido', TJSONNumber.Create(FPesoLiquido));
  result.AddPair('pro_peso_bruto', TJSONNumber.Create(FPesoBruto));
  result.AddPair('pro_controlar_estoque', TJSONNumber.Create(Integer(FControlaEstoque)));
  result.AddPair('pro_permite_estoque_negativo', TJSONNumber.Create(Integer(FPermiteEstoqueNegativo)));
  result.AddPair('pro_permite_mudar_preco', TJSONNumber.Create(Integer(FPermiteMudarPreco)));
  result.AddPair('pro_permite_venda_fracionada', TJSONNumber.Create(Integer(FPermiteVendaFracionada)));
  result.AddPair('pro_estoque_minimo', TJSONNumber.Create(FEstoqueMinimo));
  result.AddPair('pro_observacao', FObservacao);
  result.AddPair('pro_exibir_catalogo', TJSONNumber.Create(Integer(FExibirCatalogo)));
  result.AddPair('pro_inativo', TJSONNumber.Create(Integer(FInativo)));
  result.AddPair('pro_favorito', TJSONNumber.Create(Integer(FFavorito)));
  result.AddPair('pro_usa_balanca', TJSONNumber.Create(Integer(FUsaBalanca)));
  result.AddPair('pro_balanca_validade', TJSONNumber.Create(Integer(FBalancaValidade)));
  result.AddPair('pro_balanca_validade_dias', TJSONNumber.Create(FBalancaValidadeDias));
  result.AddPair('pro_largura', TJSONNumber.Create(FLargura));
  result.AddPair('pro_altura', TJSONNumber.Create(FAltura));
  result.AddPair('pro_comprimento', TJSONNumber.Create(FComprimento));
  result.AddPair('pro_produto_origem_codigo', TJSONNumber.Create(FProdutoOrigemCodigo));
  result.AddPair('pro_produto_categoria_idpk', TJSONNumber.Create(FProdutoCategoriaIdpk));
  result.AddPair('pro_produto_marca_idpk', TJSONNumber.Create(FProdutoMarcaIdpk));
  result.AddPair('pro_produto_subcategoria_idpk', TJSONNumber.Create(FProdutoSubcategoriaIdpk));
  result.AddPair('pro_produto_unidade_idpk', TJSONNumber.Create(FProdutoUnidadeIdpk));
  result.AddPair('pro_produto_ncm_idpk', TJSONNumber.Create(FProdutoNcmIdpk));
  result.AddPair('pro_produto_tipo_codigo', FProdutoTipoCodigo);
  result.AddPair('pro_produto_cest_codigo', TJSONNumber.Create(FProdutoCestCodigo));
  result.AddPair('pro_produto_regra_fiscal_idpk', TJSONNumber.Create(FProdutoRegraFiscalIdpk));

  if (FEstoqueTotalChecked) then
    result.AddPair('estoque_total', TJSONNumber.Create(FEstoqueTotal));
end;

{ TProdutoGet }

constructor TProdutoGet.Create;
begin
  FCodigoInterno := '';
  FCodigoAuxiliar := '';
  FNome := '';
  FCodBarras := '';
  FEstoqueMenor := 0;
  FEstoqueMenorChecked := false;
  FProdutoTipoCodigo := '';
end;

destructor TProdutoGet.Destroy;
begin

  inherited;
end;

function TProdutoGet.getCodBarras: string;
begin
  result := FCodBarras;
end;

function TProdutoGet.getCodigoAuxiliar: string;
begin
  result := FCodigoAuxiliar;
end;

function TProdutoGet.getCodigoInterno: string;
begin
  result := FCodigoInterno;
end;

function TProdutoGet.getEstoqueMenor: double;
begin
  result := FEstoqueMenor;
end;

function TProdutoGet.getNome: string;
begin
  result := FNome;
end;

function TProdutoGet.getProdutoTipoCodigo: string;
begin
  result := FProdutoTipoCodigo;
end;

class function TProdutoGet.new: IProdutoGet;
begin
  result := TProdutoGet.Create;
end;

function TProdutoGet.setCodBarras(const value: string): IProdutoGet;
begin
  result := self;
  FCodBarras := value;
end;

function TProdutoGet.setCodigoAuxiliar(const value: string): IProdutoGet;
begin
  result := self;
  FCodigoAuxiliar := value;
end;

function TProdutoGet.setCodigoInterno(const value: string): IProdutoGet;
begin
  result := self;
  FCodigoInterno := value;
end;

function TProdutoGet.setEstoqueMenor(const value: double): IProdutoGet;
begin
  result := self;
  FEstoqueMenor := value;
  FEstoqueMenorChecked := true;
end;

function TProdutoGet.setNome(const value: string): IProdutoGet;
begin
  result := self;
  FNome := value;
end;

function TProdutoGet.setProdutoTipoCodigo(const value: string): IProdutoGet;
begin
  result := self;
  FProdutoTipoCodigo := value;
end;

function TProdutoGet.toParams: string;
begin
  result := inherited;
  if (FNome <> '') then
    result := AddHeaderParams(result, 'nome='+ FNome);
  if (FCodigoInterno <> '') then
    result := AddHeaderParams(result, 'codigo='+ FCodigoInterno);
  if (FCodigoAuxiliar <> '') then
    result := AddHeaderParams(result, 'codigo_auxiliar='+ FCodigoAuxiliar);
  if (FCodBarras <> '') then
    result := AddHeaderParams(result, 'codigo_barra='+ FCodBarras);
  if (FEstoqueMenorChecked) then
    result := AddHeaderParams(result, 'estoque_menor='+ FloatToStr(FEstoqueMenor));
  if (FProdutoTipoCodigo <> '') then
    result := AddHeaderParams(result, 'tipo_produto='+ FProdutoTipoCodigo);
end;

{ TMercurioProduto }

function TMercurioProduto.Delete(var params : IProdutoDelete) : IResponseProdutoDelete;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (Trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlProduto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseProdutoDelete.new(Api.Delete(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioProduto.Get(var params : IProdutoGet) : IResponseProdutoGet;
var url : string;
begin
  result := nil;
  if not (assigned(params)) then
    exit
  else if (Trim(Auth.Token) = '') then
  begin
    OnInternalError(self, 'Para utilizar este recurso você precisa estar autenticado na API.');
    exit;
  end;

  try
    url := getUrl(Ambiente, urlProduto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseProdutoGet.new(Api.Get(url));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;
end;

function TMercurioProduto.Post(var params : IProdutoPost) : IResponseProdutoPost;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlProduto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseProdutoPost.new(Api.Post(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

function TMercurioProduto.Put(var params : IProdutoPut) : IResponseProdutoPut;
var url : string;
    payload : TJSONObject;
begin
  result := nil;
  if not (assigned(params)) then
    exit;

  payload := TJSONObject(params.toJson);
  try
    url := getUrl(Ambiente, urlProduto) + params.toParams;
    Api.HeaderCustomAdd('Authorization', 'Bearer '+ Auth.Token);
    result := TResponseProdutoPut.new(Api.Put(url, payload));
  except
    on E : Exception do
    begin
      if (assigned(OnInternalError)) then
        OnInternalError(self, E.Message);
    end;
  end;

  MyFreeAndNil(payload);
end;

{ TProdutoDelete }

class function TProdutoDelete.new: IProdutoDelete;
begin
  result := TProdutoDelete.Create;
end;

{ TProdutoPost }

function TProdutoPost.addProduto(const value: IProduto): IProdutoPost;
var obj : TJSONObject;
    arr : TJSONArray;
begin
  result := self;
  if not (Assigned(value)) then
    exit;

  obj := value.ToJson;
  if (obj = nil) then
    exit;

  arr := nil;
  getPayload.TryGetValue<TJSONArray>('registros', arr);
  if (arr = nil) then
    exit;

  arr.Add(obj);
end;

class function TProdutoPost.new: IProdutoPost;
begin
  result := TProdutoPost.Create;
end;

{ TProdutoPut }

constructor TProdutoPut.Create;
begin
  FPayload := TJSONObject.Create;
end;

destructor TProdutoPut.Destroy;
begin
  MyFreeAndNil(FPayload);

  inherited;
end;

function TProdutoPut.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TProdutoPut.getIdpk: string;
begin
  result := FIdpk;
end;

class function TProdutoPut.new: IProdutoPut;
begin
  result := TProdutoPut.Create;
end;

function TProdutoPut.setEmpresaIdpk(const value: string): IProdutoPut;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TProdutoPut.setIdpk(const value: string): IProdutoPut;
begin
  result := self;
  FIdpk := value;
end;

function TProdutoPut.setPayload(const value: TJSONObject): IProdutoPut;
begin
  result := self;
  if (value = nil) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value;
end;

function TProdutoPut.setProduto(const value: IProduto): IProdutoPut;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  MyFreeAndNil(FPayload);
  FPayload := value.ToJson;
end;

function TProdutoPut.ToJson: TJSONValue;
begin
  result := TJSONObject(FPayload.Clone);
end;

function TProdutoPut.toParams: string;
begin
  result := '';
  if (FEmpresaIdpk <> '') then
    result := AddHeaderParams(result, 'empresa_idpk='+ FEmpresaIdpk);
  if (trim(result) <> '') then
    result := '?'+ result;
  if (FIdpk <> '') then
    result := '/'+ FIdpk + result;
end;

{ TResponseProdutoGet }

constructor TResponseProdutoGet.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassProdutoGet.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseProdutoGet.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseProdutoGet.new(parent: IResponse): IResponseProdutoGet;
begin
  result := TResponseProdutoGet.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseProdutoGet.Obj: TResponseClassProdutoGet;
begin
  result := FObj;
end;

{ TResponseProdutoPost }

constructor TResponseProdutoPost.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassProdutoPost.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseProdutoPost.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseProdutoPost.new(parent: IResponse): IResponseProdutoPost;
begin
  result := TResponseProdutoPost.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseProdutoPost.Obj: TResponseClassProdutoPost;
begin
  result := FObj;
end;

{ TResponseProdutoPut }

constructor TResponseProdutoPut.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassProdutoPut.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseProdutoPut.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseProdutoPut.new(parent: IResponse): IResponseProdutoPut;
begin
  result := TResponseProdutoPut.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseProdutoPut.Obj: TResponseClassProdutoPut;
begin
  result := FObj;
end;

{ TResponseProdutoDelete }

constructor TResponseProdutoDelete.Create(pResponse: IHTTPResponse; pResponseData: string);
begin
  inherited Create(pResponse, pResponseData);
  FObj := TResponseClassProdutoDelete.CreateWithJsonString(self.GetResponseData);
end;

destructor TResponseProdutoDelete.Destroy;
begin
  MyFreeAndNil(FObj);
  inherited;
end;

class function TResponseProdutoDelete.new(parent: IResponse): IResponseProdutoDelete;
begin
  result := TResponseProdutoDelete.Create(parent.GetResponse, parent.GetResponseData);
end;

function TResponseProdutoDelete.Obj: TResponseClassProdutoDelete;
begin
  result := FObj;
end;

end.
