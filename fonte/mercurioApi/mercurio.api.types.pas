unit mercurio.api.types;

interface

uses mercurio.api.classes, mercurio.api.login, mercurio.api.communication, mercurio.api.sistema,
     mercurio.api.empresa, mercurio.api.cliente, mercurio.api.fornecedor, mercurio.api.transportador,
     mercurio.api.produto, mercurio.api.usuario, mercurio.api.estoque, mercurio.api.forma_pagamento,
     mercurio.api.financeiro_movimento_pix_instantaneo, mercurio.api.financeiro_conta,
     mercurio.api.usuario_empresa_push_notification, mercurio.response.usuarioEmpresaPushNotificationGet,
     mercurio.api.aplicativo, mercurio.api.financeiro_movimento_boleto.delete,
  mercurio.api.financeiro_movimento_boleto.get, mercurio.api.financeiro_movimento_boleto.Liquidar,
  mercurio.api.financeiro_movimento_boleto.post, mercurio.api.financeiro_movimento_boleto;

type
  //MERCURIO.API.COMMUNICATION
  THTTPSecureProtocol = mercurio.api.communication.THTTPSecureProtocol;
  THTTPSecureProtocols = mercurio.api.communication.THTTPSecureProtocols;
  IHTTPResponse = mercurio.api.communication.IHTTPResponse;
  IResponse = mercurio.api.communication.IResponse;
  TResponse = mercurio.api.communication.TResponse;

  //MERCURIO.API.LOGIN
  ILogarParams = mercurio.api.login.ILogarParams;
  TLogarParams = mercurio.api.login.TLogarParams;
  IResponseLogar = mercurio.api.login.IResponseLogar;
  TResponseLogar = mercurio.api.login.TResponseLogar;
  IResponseRenovar = mercurio.api.login.IResponseRenovar;
  TResponseRenovar = mercurio.api.login.TResponseRenovar;
  IResponseLogof = mercurio.api.login.IResponseLogof;
  TResponseLogof = mercurio.api.login.TResponseLogof;

  //MERCURIO.API.APLICATIVO
  IAplicativoGet = mercurio.api.aplicativo.IAplicativoGet;
  TAplicativoGet = mercurio.api.aplicativo.TAplicativoGet;
  IResponseAplicativoGet = mercurio.api.aplicativo.IResponseAplicativoGet;
  TResponseAplicativoGet = mercurio.api.aplicativo.TResponseAplicativoGet;

  //MERCURIO.API.SISTEMA
  ISistemaGet = mercurio.api.sistema.ISistemaGet;
  TSistemaGet = mercurio.api.sistema.TSistemaGet;
  IResponseSistemaGet = mercurio.api.sistema.IResponseSistemaGet;
  TResponseSistemaGet = mercurio.api.sistema.TResponseSistemaGet;

  //MERCURIO.API.EMPRESA
  IEmpresaGet = mercurio.api.empresa.IEmpresaGet;
  TEmpresaGet = mercurio.api.empresa.TEmpresaGet;
  IEmpresaPost = mercurio.api.empresa.IEmpresaPost;
  TEmpresaPost = mercurio.api.empresa.TEmpresaPost;
  IEmpresaPut = mercurio.api.empresa.IEmpresaPut;
  TEmpresaPut = mercurio.api.empresa.TEmpresaPut;
  IEmpresaLogotipo = mercurio.api.empresa.IEmpresaLogotipo;
  TEmpresaLogotipo = mercurio.api.empresa.TEmpresaLogotipo;
  IEmpresaCertificado = mercurio.api.empresa.IEmpresaCertificado;
  TEmpresaCertificado = mercurio.api.empresa.TEmpresaCertificado;
  IEmpresaUsuario = mercurio.api.empresa.IEmpresaUsuario;
  TEmpresaUsuario = mercurio.api.empresa.TEmpresaUsuario;
  IResponseEmpresaGet = mercurio.api.empresa.IResponseEmpresaGet;
  TResponseEmpresaGet = mercurio.api.empresa.TResponseEmpresaGet;
  IResponseEmpresaPost = mercurio.api.empresa.IResponseEmpresaPost;
  TResponseEmpresaPost = mercurio.api.empresa.TResponseEmpresaPost;
  IResponseEmpresaPut = mercurio.api.empresa.IResponseEmpresaPut;
  TResponseEmpresaPut = mercurio.api.empresa.TResponseEmpresaPut;
  IResponseEmpresaDelete = mercurio.api.empresa.IResponseEmpresaDelete;
  TResponseEmpresaDelete = mercurio.api.empresa.TResponseEmpresaDelete;
  IResponseEmpresaPutLogotipo = mercurio.api.empresa.IResponseEmpresaPutLogotipo;
  TResponseEmpresaPutLogotipo = mercurio.api.empresa.TResponseEmpresaPutLogotipo;
  IResponseEmpresaPutCertificado = mercurio.api.empresa.IResponseEmpresaPutCertificado;
  TResponseEmpresaPutCertificado = mercurio.api.empresa.TResponseEmpresaPutCertificado;

  //MERCURIO.API.CLIENTE
  ICliente = mercurio.api.cliente.ICliente;
  TCliente = mercurio.api.cliente.TCliente;
  IClienteGet = mercurio.api.cliente.IClienteGet;
  TClienteGet = mercurio.api.cliente.TClienteGet;
  IClienteDocumentoGet = mercurio.api.cliente.IClienteDocumentoGet;
  TClienteDocumentoGet = mercurio.api.cliente.TClienteDocumentoGet;
  IClientePost = mercurio.api.cliente.IClientePost;
  TClientePost = mercurio.api.cliente.TClientePost;
  IClientePut = mercurio.api.cliente.IClientePut;
  TClientePut = mercurio.api.cliente.TClientePut;
  IClienteDelete = mercurio.api.cliente.IClienteDelete;
  TClienteDelete = mercurio.api.cliente.TClienteDelete;
  IResponseClienteGet = mercurio.api.cliente.IResponseClienteGet;
  TResponseClienteGet = mercurio.api.cliente.TResponseClienteGet;
  IResponseClienteGetDocumentoExiste = mercurio.api.cliente.IResponseClienteGetDocumentoExiste;
  TResponseClienteGetDocumentoExiste = mercurio.api.cliente.TResponseClienteGetDocumentoExiste;
  IResponseClientePost = mercurio.api.cliente.IResponseClientePost;
  TResponseClientePost = mercurio.api.cliente.TResponseClientePost;
  IResponseClientePut = mercurio.api.cliente.IResponseClientePut;
  TResponseClientePut = mercurio.api.cliente.TResponseClientePut;
  IResponseClienteDelete = mercurio.api.cliente.IResponseClienteDelete;
  TResponseClienteDelete = mercurio.api.cliente.TResponseClienteDelete;

  //MERCURIO.API.FORNECEDOR
  IFornecedor = mercurio.api.fornecedor.IFornecedor;
  TFornecedor = mercurio.api.fornecedor.TFornecedor;
  IFornecedorGet = mercurio.api.fornecedor.IFornecedorGet;
  TFornecedorGet = mercurio.api.fornecedor.TFornecedorGet;
  IFornecedorDocumentoGet = mercurio.api.fornecedor.IFornecedorDocumentoGet;
  TFornecedorDocumentoGet = mercurio.api.fornecedor.TFornecedorDocumentoGet;
  IFornecedorPost = mercurio.api.fornecedor.IFornecedorPost;
  TFornecedorPost = mercurio.api.fornecedor.TFornecedorPost;
  IFornecedorPut = mercurio.api.fornecedor.IFornecedorPut;
  TFornecedorPut = mercurio.api.fornecedor.TFornecedorPut;
  IFornecedorDelete = mercurio.api.fornecedor.IFornecedorDelete;
  TFornecedorDelete = mercurio.api.fornecedor.TFornecedorDelete;
  IResponseFornecedorGet = mercurio.api.fornecedor.IResponseFornecedorGet;
  TResponseFornecedorGet = mercurio.api.fornecedor.TResponseFornecedorGet;
  IResponseFornecedorGetDocumentoExiste = mercurio.api.fornecedor.IResponseFornecedorGetDocumentoExiste;
  TResponseFornecedorGetDocumentoExiste = mercurio.api.fornecedor.TResponseFornecedorGetDocumentoExiste;
  IResponseFornecedorPost = mercurio.api.fornecedor.IResponseFornecedorPost;
  TResponseFornecedorPost = mercurio.api.fornecedor.TResponseFornecedorPost;
  IResponseFornecedorPut = mercurio.api.fornecedor.IResponseFornecedorPut;
  TResponseFornecedorPut = mercurio.api.fornecedor.TResponseFornecedorPut;
  IResponseFornecedorDelete = mercurio.api.fornecedor.IResponseFornecedorDelete;
  TResponseFornecedorDelete = mercurio.api.fornecedor.TResponseFornecedorDelete;

  //MERCURIO.API.TRANSPORTADOR
  ITransportador = mercurio.api.transportador.ITransportador;
  TTransportador = mercurio.api.transportador.TTransportador;
  ITransportadorGet = mercurio.api.transportador.ITransportadorGet;
  TTransportadorGet = mercurio.api.transportador.TTransportadorGet;
  ITransportadorDocumentoGet = mercurio.api.transportador.ITransportadorDocumentoGet;
  TTransportadorDocumentoGet = mercurio.api.transportador.TTransportadorDocumentoGet;
  ITransportadorPost = mercurio.api.transportador.ITransportadorPost;
  TTransportadorPost = mercurio.api.transportador.TTransportadorPost;
  ITransportadorPut = mercurio.api.transportador.ITransportadorPut;
  TTransportadorPut = mercurio.api.transportador.TTransportadorPut;
  ITransportadorDelete = mercurio.api.transportador.ITransportadorDelete;
  TTransportadorDelete = mercurio.api.transportador.TTransportadorDelete;
  IResponseTransportadorGet = mercurio.api.transportador.IResponseTransportadorGet;
  TResponseTransportadorGet = mercurio.api.transportador.TResponseTransportadorGet;
  IResponseTransportadorGetDocumentoExiste = mercurio.api.transportador.IResponseTransportadorGetDocumentoExiste;
  TResponseTransportadorGetDocumentoExiste = mercurio.api.transportador.TResponseTransportadorGetDocumentoExiste;
  IResponseTransportadorPost = mercurio.api.transportador.IResponseTransportadorPost;
  TResponseTransportadorPost = mercurio.api.transportador.TResponseTransportadorPost;
  IResponseTransportadorPut = mercurio.api.transportador.IResponseTransportadorPut;
  TResponseTransportadorPut = mercurio.api.transportador.TResponseTransportadorPut;
  IResponseTransportadorDelete = mercurio.api.transportador.IResponseTransportadorDelete;
  TResponseTransportadorDelete = mercurio.api.transportador.TResponseTransportadorDelete;

  //MERCURIO.API.PRODUTO
  IProduto = mercurio.api.produto.IProduto;
  TProduto = mercurio.api.produto.TProduto;
  IProdutoGet = mercurio.api.produto.IProdutoGet;
  TProdutoGet = mercurio.api.produto.TProdutoGet;
  IProdutoPost = mercurio.api.produto.IProdutoPost;
  TProdutoPost = mercurio.api.produto.tprodutoPost;
  IProdutoPut = mercurio.api.produto.IProdutoPut;
  TProdutoPut = mercurio.api.produto.tprodutoPut;
  IProdutoDelete = mercurio.api.produto.IProdutoDelete;
  TProdutoDelete = mercurio.api.produto.TProdutoDelete;
  IResponseProdutoGet = mercurio.api.produto.IResponseProdutoGet;
  TResponseProdutoGet = mercurio.api.produto.TResponseProdutoGet;
  IResponseProdutoPost = mercurio.api.produto.IResponseProdutoPost;
  TResponseProdutoPost = mercurio.api.produto.TResponseProdutoPost;
  IResponseProdutoPut = mercurio.api.produto.IResponseProdutoPut;
  TResponseProdutoPut = mercurio.api.produto.TResponseProdutoPut;
  IResponseProdutoDelete = mercurio.api.produto.IResponseProdutoDelete;
  TResponseProdutoDelete = mercurio.api.produto.TResponseProdutoDelete;

  //MERCURIO.API.USUARIO
  IUsuarioRecuperarSenha = mercurio.api.usuario.IUsuarioRecuperarSenha;
  TUsuarioRecuperarSenha = mercurio.api.usuario.TUsuarioRecuperarSenha;
  IUsuarioGet = mercurio.api.usuario.IUsuarioGet;
  TUsuarioGet = mercurio.api.usuario.TUsuarioGet;
  IResponseUsuarioRecuperarSenha = mercurio.api.usuario.IResponseUsuarioRecuperarSenha;
  TResponseUsuarioRecuperarSenha = mercurio.api.usuario.TResponseUsuarioRecuperarSenha;
  IResponseUsuarioGet = mercurio.api.usuario.IResponseUsuarioGet;
  TResponseUsuarioGet = mercurio.api.usuario.TResponseUsuarioGet;
  IResponseTemplateUsuarioTipoGet = mercurio.api.usuario.IResponseTemplateUsuarioTipoGet;
  TIResponseTemplateUsuarioTipoGet = mercurio.api.usuario.TResponseTemplateUsuarioTipoGet;

  //MERCURIO.API.CLASSES
  TMercurioAmbiente = mercurio.api.classes.TMercurioAmbiente;
  IMercurioEmail = mercurio.api.classes.IMercurioEmail;
  TMercurioEmail = mercurio.api.classes.TMercurioEmail;
  IMercurioTelefone = mercurio.api.classes.IMercurioTelefone;
  TMercurioTelefone = mercurio.api.classes.TMercurioTelefone;
  IMercurioEndereco = mercurio.api.classes.IMercurioEndereco;
  TMercurioEndereco = mercurio.api.classes.TMercurioEndereco;
  IMercurioPessoaFoto = mercurio.api.classes.IMercurioPessoaFoto;
  TMercurioPessoaFoto = mercurio.api.classes.TMercurioPessoaFoto;
  IMercurioPessoa = mercurio.api.classes.IMercurioPessoa;
  TMercurioPessoa = mercurio.api.classes.TMercurioPessoa;

  //MERCURIO.API.ESTOQUE
  IEstoqueManual = mercurio.api.estoque.IEstoqueManual;
  TEstoqueManual = mercurio.api.estoque.TEstoqueManual;
  IEstoqueManualGet = mercurio.api.estoque.IEstoqueManualGet;
  TEstoqueManualGet = mercurio.api.estoque.TEstoqueManualGet;
  IEstoqueGet = mercurio.api.estoque.IEstoqueGet;
  TEstoqueGet = mercurio.api.estoque.TEstoqueGet;
  IEstoqueManualPost = mercurio.api.estoque.IEstoqueManualPost;
  TEstoqueManualPost = mercurio.api.estoque.TEstoqueManualPost;
  IResponseEstoqueGetManual = mercurio.api.estoque.IResponseEstoqueGetManual;
  TResponseEstoqueGetManual = mercurio.api.estoque.TResponseEstoqueGetManual;
  IResponseEstoquePostManual = mercurio.api.estoque.IResponseEstoquePostManual;
  TResponseEstoquePostManual = mercurio.api.estoque.TResponseEstoquePostManual;
  IResponseEstoqueGet = mercurio.api.estoque.IResponseEstoqueGet;
  TResponseEstoqueGet = mercurio.api.estoque.TResponseEstoqueGet;


  //MERCURIO.API.FORMA_PAGAMENTO
  IFormaPagamentoGet = mercurio.api.forma_pagamento.IFormaPagamentoGet;
  TFormaPagamentoGet = mercurio.api.forma_pagamento.TFormaPagamentoGet;
  IResponseFormaPagamentoGet = mercurio.api.forma_pagamento.IResponseFormaPagamentoGet;
  TResponseFormaPagamentoGet = mercurio.api.forma_pagamento.TResponseFormaPagamentoGet;

  //MERCURIO.API.FINANCEIRO_MOVIMENTO_PIX_INSTANTANEO
  IFinanceiroMovimentoPix = mercurio.api.financeiro_movimento_pix_instantaneo.IFinanceiroMovimentoPix;
  TFinanceiroMovimentoPix = mercurio.api.financeiro_movimento_pix_instantaneo.TFinanceiroMovimentoPix;
  IFinanceiroMovimentoPixInstantaneoGet = mercurio.api.financeiro_movimento_pix_instantaneo.IFinanceiroMovimentoPixInstantaneoGet;
  TFinanceiroMovimentoPixInstantaneoGet = mercurio.api.financeiro_movimento_pix_instantaneo.TFinanceiroMovimentoPixInstantaneoGet;
  IResponseFinanceiroMovimentoPixInstantaneoGet = mercurio.api.financeiro_movimento_pix_instantaneo.IResponseFinanceiroMovimentoPixInstantaneoGet;
  TResponseFinanceiroMovimentoPixInstantaneoGet = mercurio.api.financeiro_movimento_pix_instantaneo.TResponseFinanceiroMovimentoPixInstantaneoGet;
  IFinanceiroMovimentoPixInstantaneoPost = mercurio.api.financeiro_movimento_pix_instantaneo.IFinanceiroMovimentoPixInstantaneoPost;
  TFinanceiroMovimentoPixInstantaneoPost = mercurio.api.financeiro_movimento_pix_instantaneo.TFinanceiroMovimentoPixInstantaneoPost;
  IResponseFinanceiroMovimentoPixInstantaneoPost = mercurio.api.financeiro_movimento_pix_instantaneo.IResponseFinanceiroMovimentoPixInstantaneoPost;
  TResponseFinanceiroMovimentoPixInstantaneoPost = mercurio.api.financeiro_movimento_pix_instantaneo.TResponseFinanceiroMovimentoPixInstantaneoPost;
  IFinanceiroMovimentoPixInstantaneoDelete = mercurio.api.financeiro_movimento_pix_instantaneo.IFinanceiroMovimentoPixInstantaneoDelete;
  TFinanceiroMovimentoPixInstantaneoDelete = mercurio.api.financeiro_movimento_pix_instantaneo.TFinanceiroMovimentoPixInstantaneoDelete;
  IResponseFinanceiroMovimentoPixInstantaneoDelete = mercurio.api.financeiro_movimento_pix_instantaneo.IResponseFinanceiroMovimentoPixInstantaneoDelete;
  TResponseFinanceiroMovimentoPixInstantaneoDelete = mercurio.api.financeiro_movimento_pix_instantaneo.TResponseFinanceiroMovimentoPixInstantaneoDelete;
  IPixComprovantePagamentoPDF = mercurio.api.financeiro_movimento_pix_instantaneo.IPixComprovantePagamentoPDF;
  TPixComprovantePagamentoPDF = mercurio.api.financeiro_movimento_pix_instantaneo.TPixComprovantePagamentoPDF;
  IResponsePixComprovantePagamentoPDF = mercurio.api.financeiro_movimento_pix_instantaneo.IResponsePixComprovantePagamentoPDF;
  TResponsePixComprovantePagamentoPDF = mercurio.api.financeiro_movimento_pix_instantaneo.TResponsePixComprovantePagamentoPDF;

  //MERCURIO.API.FINANCEIRO_MOVIMENTO_BOLETO
  IBoleto = mercurio.api.financeiro_movimento_boleto.IBoleto;
  TBoleto = mercurio.api.financeiro_movimento_boleto.TBoleto;
  IFinanceiroMovimentoBoletoGet = mercurio.api.financeiro_movimento_boleto.IFinanceiroMovimentoBoletoGet;
  TFinanceiroMovimentoBoletoGet = mercurio.api.financeiro_movimento_boleto.TFinanceiroMovimentoBoletoGet;
  IResponseFinanceiroMovimentoBoletoGet = mercurio.api.financeiro_movimento_boleto.IResponseFinanceiroMovimentoBoletoGet;
  TResponseFinanceiroMovimentoBoletoGet = mercurio.api.financeiro_movimento_boleto.TResponseFinanceiroMovimentoBoletoGet;
  IFinanceiroMovimentoBoletoPost = mercurio.api.financeiro_movimento_boleto.IFinanceiroMovimentoBoletoPost;
  TFinanceiroMovimentoBoletoPost = mercurio.api.financeiro_movimento_boleto.TFinanceiroMovimentoBoletoPost;
  IResponseFinanceiroMovimentoBoletoPost = mercurio.api.financeiro_movimento_boleto.IResponseFinanceiroMovimentoBoletoPost;
  TResponseFinanceiroMovimentoBoletoPost = mercurio.api.financeiro_movimento_boleto.TResponseFinanceiroMovimentoBoletoPost;
  IFinanceiroMovimentoBoletoDelete = mercurio.api.financeiro_movimento_boleto.IFinanceiroMovimentoBoletoDelete;
  TFinanceiroMovimentoBoletoDelete = mercurio.api.financeiro_movimento_boleto.TFinanceiroMovimentoBoletoDelete;
  IResponseFinanceiroMovimentoBoletoDelete = mercurio.api.financeiro_movimento_boleto.IResponseFinanceiroMovimentoBoletoDelete;
  TResponseFinanceiroMovimentoBoletoDelete = mercurio.api.financeiro_movimento_boleto.TResponseFinanceiroMovimentoBoletoDelete;

  //MERCURIO.API.FINANCEIRO_MOVIMENTO
  IFinanceiroContaGet = mercurio.api.financeiro_conta.IFinanceiroContaGet;
  TFinanceiroContaGet = mercurio.api.financeiro_conta.TFinanceiroContaGet;
  IResponseFinanceiroContaGet = mercurio.api.financeiro_conta.IResponseFinanceiroContaGet;
  TResponseFinanceiroContaGet = mercurio.api.financeiro_conta.TResponseFinanceiroContaGet;

  //MERCURIO.API.USUARIO_EMPRESA_PUSH_NOTIFICATION
  IUsuarioEmpresaPushNotification = mercurio.api.usuario_empresa_push_notification.IUsuarioEmpresaPushNotification;
  TUsuarioEmpresaPushNotification = mercurio.api.usuario_empresa_push_notification.TUsuarioEmpresaPushNotification;
  IPushNotificationTokenGet = mercurio.api.usuario_empresa_push_notification.IPushNotificationTokenGet;
  TPushNotificationTokenGet = mercurio.api.usuario_empresa_push_notification.TPushNotificationTokenGet;
  IResponsePushNotificationTokenGet = mercurio.api.usuario_empresa_push_notification.IResponsePushNotificationTokenGet;
  TResponsePushNotificationTokenGet = mercurio.api.usuario_empresa_push_notification.TResponsePushNotificationTokenGet;
  IPushNotificationTokenPost = mercurio.api.usuario_empresa_push_notification.IPushNotificationTokenPost;
  TPushNotificationTokenPost = mercurio.api.usuario_empresa_push_notification.TPushNotificationTokenPost;
  IResponsePushNotificationTokenPost = mercurio.api.usuario_empresa_push_notification.IResponsePushNotificationTokenPost;
  TResponsePushNotificationTokenPost = mercurio.api.usuario_empresa_push_notification.TResponsePushNotificationTokenPost;
  IPushNotificationTokenDelete = mercurio.api.usuario_empresa_push_notification.IPushNotificationTokenDelete;
  TPushNotificationTokenDelete = mercurio.api.usuario_empresa_push_notification.TPushNotificationTokenDelete;
  IResponsePushNotificationTokenDelete = mercurio.api.usuario_empresa_push_notification.IResponsePushNotificationTokenDelete;
  TResponsePushNotificationTokenDelete = mercurio.api.usuario_empresa_push_notification.TResponsePushNotificationTokenDelete;



implementation

end.
