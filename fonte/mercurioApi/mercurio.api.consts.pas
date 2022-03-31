unit mercurio.api.consts;

interface

uses mercurio.api.classes;

const
  //Version 1.0
  urlAplicativo = '/api/v1/Aplicativo/Aplicativo';
  urlLogar = '/api/v1/Login/Logar';
  urlRenovarToken = '/api/v1/Login/RenovarToken';
  urlLogof = '/api/v1/Login/Logof';
  urlSistema = '/api/v1/Sistema/Sistema';
  urlEmpresa = '/api/v1/Empresa/Empresa';
  urlEmpresaLogotipo = '/api/v1/Empresa/Logotipo';
  urlEmpresaCertificado = '/api/v1/Empresa/Certificado';
  urlCliente = '/api/v1/Cliente/Cliente';
  urlClienteExiste = '/api/v1/Cliente/DocumentoExiste';
  urlFornecedor = '/api/v1/Fornecedor/Fornecedor';
  urlFornecedorExiste = '/api/v1/Fornecedor/DocumentoExiste';
  urlTransportador = '/api/v1/Transportador/Transportador';
  urlTransportadorExiste = '/api/v1/Transportador/DocumentoExiste';
  urlProduto = '/api/v1/Produto/Produto';
  urlUsuario = '/api/v1/Usuario/Usuario';
  urlUsuarioRecuperarSenha = '/api/v1/Usuario/RenovarSenha';
  urlTemplateUsuarioTipo = '/api/v1/Usuario/Tipo';
  urlMovimentoEstoque = '/api/v1/Estoque/Movimento';
  urlMovimentoEstoqueManual = '/api/v1/Estoque/MovimentoManual';
  urlFormaPagamento = '/api/v1/FormaPagamento/FormaPagamento';
  urlFinanceiroConta = '/api/v1/FinanceiroConta/FinanceiroConta';
  urlPix = '/api/v1/FinanceiroMovimento/Pix';
  urlPixInstantaneo = '/api/v1/FinanceiroMovimento/PixInstantaneo';
  urlPixComprovantePagamento = '/api/v1/FinanceiroMovimento/PixPagamentoGerarPDF';
  urlBoleto = '/api/v1/FinanceiroMovimento/Boleto';
  urlPushNotificationTokenBuscar = '/api/v1/PushNotificationToken/Buscar';
  urlPushNotificationTokenRemover = '/api/v1/PushNotificationToken/Remover';
  urlPushNotificationTokenAdicionar = '/api/v1/PushNotificationToken/Adicionar';

/// <summary> Gera a url do endpoint com esta função + uma constante deste arquivo </summary>
function getUrl(Ambiente : TMercurioAmbiente; Endpoint : string = '') : string;

implementation

function getUrl(Ambiente : TMercurioAmbiente; Endpoint : string = '') : string;
begin
  if (Ambiente = amProducao) then
    result := 'https://api.tecno.mobi' + Endpoint
  else
    result := 'https://sandbox.tecno.mobi' + Endpoint;
end;

end.

