unit mercurio.api;

interface

uses mercurio.api.consts, mercurio.api.classes, mercurio.api.login, mercurio.api.functions,
  mercurio.api.communication, mercurio.api.sistema, mercurio.api.empresa, mercurio.api.cliente,
  mercurio.api.fornecedor, mercurio.api.transportador, mercurio.api.produto, mercurio.api.usuario,
  mercurio.api.estoque, mercurio.api.forma_pagamento, mercurio.api.financeiro_movimento,
  mercurio.api.financeiro_movimento_pix_instantaneo, mercurio.api.financeiro_conta,
  mercurio.api.usuario_empresa_push_notification, mercurio.api.aplicativo;

type
  TMercurioApi = class
  private
    FApiVersion : string;
    FAmbiente: TMercurioAmbiente;
    FAplicativo : TMercurioAplicativo;
    FLogin: TMercurioLogin;
    FSistema : TMercurioSistema;
    FEmpresa : TMercurioEmpresa;
    FCliente : TMercurioCliente;
    FFornecedor : TMercurioFornecedor;
    FTransportador : TMercurioTransportador;
    FProduto : TMercurioProduto;
    FPushNotificationToken : TMercurioPushNotificationToken;
    FUsuario : TMercurioUsuario;
    FEstoque : TMercurioEstoque;
    FFormaPagamento : TMercurioFormaPagamento;
    FApi : TApi;
    FOnResponseError: TOnCommunicationError;
    FOnInternalError: TOnInternalError;
    FFinanceiroConta : TMercurioFinanceiroConta;
    FFinanceiroMovimento: TMercurioFinanceiroMovimento;
    procedure SetAmbiente(const Value: TMercurioAmbiente);
    procedure SetOnInternalError(const Value: TOnInternalError);
    procedure SetOnResponseError(const Value: TOnCommunicationError);
  protected
    {eventos internos}
    /// <summary> Este evendo limpa o cache de autenticação caso exista no dispositivo utilizado </summary>
    procedure ApiUnauthorized;
  public
    /// <summary> Ambiente da API | PRODUÇÃO | HOMOLOGAÇÃO | </summary>
    property Ambiente : TMercurioAmbiente read FAmbiente write SetAmbiente;

    /// <summary> Rotinas referente aos endpoints dos aplicativos conectados a este ecosistema </summary>
    property Aplicativo : TMercurioAplicativo read FAplicativo;
    /// <summary> Rotinas referente aos endpoints de login/autenticação </summary>
    property Login : TMercurioLogin read FLogin;
    /// <summary> Rotinas referente aos clientes da empresa </summary>
    property Cliente : TMercurioCliente read FCliente;
    /// <summary> Rotinas referente as movimentações de estoque </summary>
    property Estoque : TMercurioEstoque read FEstoque;
    /// <summary> Rotinas referente aos fornecedores da empresa </summary>
    property Fornecedor : TMercurioFornecedor read FFornecedor;
    /// <summary> Rotinas referente as contas financeiras </summary>
    property FinanceiroConta : TMercurioFinanceiroConta read FFinanceiroConta;
    /// <summary> Rotinas referente aos movimentos financeiros </summary>
    property FinanceiroMovimento : TMercurioFinanceiroMovimento read FFinanceiroMovimento;
    /// <summary> Rotinas referente aos fornecedores da empresa </summary>
    property Transportador : TMercurioTransportador read FTransportador;
    /// <summary> Rotinas referente aos endpoints do sistema </summary>
    property Sistema : TMercurioSistema read FSistema;
    /// <summary> Rotinas referente aos endpoints da empresa </summary>
    property Empresa : TMercurioEmpresa read FEmpresa;

    property FormaPagamento : TMercurioFormaPagamento read FFormaPagamento;
    /// <summary> Rotinas referente aos endpoints de produtos </summary>
    property Produto : TMercurioProduto read FProduto;
    /// <summary> Rotinas referente aos endpoints de push notification token </summary>
    property PushNotificationToken : TMercurioPushNotificationToken read FPushNotificationToken;
    /// <summary> Rotinas referente aos endpoints de usuários </summary>
    property Usuario : TMercurioUsuario read FUsuario;

    //events
    /// <summary> Evento que é disparado ao dar erro na comunicação com a API da JUNO </summary>
    property OnResponseError : TOnCommunicationError read FOnResponseError write SetOnResponseError;
    /// <summary> Evento que é disparado ao gerar erro interno na implementação </summary>
    property OnInternalError : TOnInternalError read FOnInternalError write SetOnInternalError;
    /// <summary> Versão que está sendo utilizada do SDK </summary>
    property VersionSDK : string read FApiVersion;

    constructor Create(Ambiente : TMercurioAmbiente = amProducao);
    destructor Destroy; override;
  end;

implementation

uses System.SysUtils;

{ TMercurioApi }

procedure TMercurioApi.ApiUnauthorized;
begin
  //Limpa o token de autenticação/login na api que fica salvo no dispositivo logado
  if (assigned(FLogin)) then
    FLogin.LimparCache;
end;

constructor TMercurioApi.Create(Ambiente : TMercurioAmbiente = amProducao);
begin
  //Data da alteração ao contrário com a constante um {1.21.12.31}
  FApiVersion := '1.22.3.30';

  FApi := TApi.create('');
  FApi.OnUnauthorized := ApiUnauthorized;

  FLogin := TMercurioLogin.Create(FApi);
  FAplicativo := TMercurioAplicativo.Create(FLogin);
  FSistema := TMercurioSistema.Create(FLogin);
  FEmpresa := TMercurioEmpresa.Create(FLogin);
  FCliente := TMercurioCliente.Create(FLogin);
  FFornecedor := TMercurioFornecedor.Create(FLogin);
  FTransportador := TMercurioTransportador.Create(FLogin);
  FProduto := TMercurioProduto.Create(FLogin);
  FPushNotificationToken := TMercurioPushNotificationToken.Create(FLogin);
  FUsuario := TMercurioUsuario.Create(FLogin);
  FEstoque := TMercurioEstoque.Create(FLogin);
  FFormaPagamento := TMercurioFormaPagamento.Create(FLogin);
  FFinanceiroMovimento := TMercurioFinanceiroMovimento.Create(FLogin);
  FFinanceiroConta := TMercurioFinanceiroConta.Create(FLogin);

  self.SetAmbiente(Ambiente);
end;

destructor TMercurioApi.Destroy;
begin
  FOnResponseError := nil;
  FOnInternalError := nil;
  MyFreeAndNil(FApi);
  MyFreeAndNil(FAplicativo);
  MyFreeAndNil(FLogin);
  MyFreeAndNil(FSistema);
  MyFreeAndNil(FEmpresa);
  MyFreeAndNil(FCliente);
  MyFreeAndNil(Fornecedor);
  MyFreeAndNil(FTransportador);
  MyFreeAndNil(FProduto);
  MyFreeAndNil(FPushNotificationToken);
  MyFreeAndNil(FUsuario);
  MyFreeAndNil(FEstoque);
  MyFreeAndNil(FFormaPagamento);
  MyFreeAndNil(FFinanceiroMovimento);
  MyFreeAndNil(FFinanceiroConta);

  inherited;
end;

procedure TMercurioApi.SetAmbiente(const Value: TMercurioAmbiente);
begin
  FAmbiente := Value;
  FAplicativo.Ambiente := FAmbiente;
  FLogin.Ambiente := FAmbiente;
  FSistema.Ambiente := FAmbiente;
  FEmpresa.Ambiente := FAmbiente;
  FCliente.Ambiente := FAmbiente;
  FFornecedor.Ambiente := FAmbiente;
  FTransportador.Ambiente := FAmbiente;
  FProduto.Ambiente := FAmbiente;
  FUsuario.Ambiente := FAmbiente;
  FEstoque.Ambiente := FAmbiente;
  FFormaPagamento.Ambiente := FAmbiente;
  FFinanceiroConta.Ambiente := FAmbiente;
  FPushNotificationToken.Ambiente := FAmbiente;
  FFinanceiroMovimento.Ambiente := FAmbiente;
end;

procedure TMercurioApi.SetOnInternalError(const Value: TOnInternalError);
begin
  FOnInternalError := Value;
  FAplicativo.OnInternalError := Value;
  FLogin.OnInternalError := Value;
  FSistema.OnInternalError := Value;
  FEmpresa.OnInternalError := Value;
  FCliente.OnInternalError := Value;
  FFornecedor.OnInternalError := Value;
  FTransportador.OnInternalError := Value;
  FProduto.OnInternalError := Value;
  FUsuario.OnInternalError := Value;
  FEstoque.OnInternalError := Value;
  FFormaPagamento.OnInternalError := Value;
  FFinanceiroConta.OnInternalError := Value;
  FPushNotificationToken.OnInternalError := Value;
  FFinanceiroMovimento.OnInternalError := Value;
end;

procedure TMercurioApi.SetOnResponseError(const Value: TOnCommunicationError);
begin
  FOnResponseError := Value;
  FApi.OnCommunicationError := Value;
end;

end.
