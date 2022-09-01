program BackendSdk;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in '..\fonte\UPrincipal.pas' {FrmPrincipal},
  mercurio.api.aplicativo in '..\fonte\mercurioApi\mercurio.api.aplicativo.pas',
  mercurio.api.base64 in '..\fonte\mercurioApi\mercurio.api.base64.pas',
  mercurio.api.classes in '..\fonte\mercurioApi\mercurio.api.classes.pas',
  mercurio.api.cliente in '..\fonte\mercurioApi\mercurio.api.cliente.pas',
  mercurio.api.communication in '..\fonte\mercurioApi\mercurio.api.communication.pas',
  mercurio.api.consts in '..\fonte\mercurioApi\mercurio.api.consts.pas',
  mercurio.api.empresa in '..\fonte\mercurioApi\mercurio.api.empresa.pas',
  mercurio.api.estoque in '..\fonte\mercurioApi\mercurio.api.estoque.pas',
  mercurio.api.financeiro_conta in '..\fonte\mercurioApi\mercurio.api.financeiro_conta.pas',
  mercurio.api.financeiro_movimento in '..\fonte\mercurioApi\mercurio.api.financeiro_movimento.pas',
  mercurio.api.financeiro_movimento_boleto.Liquidar in '..\fonte\mercurioApi\mercurio.api.financeiro_movimento_boleto.Liquidar.pas',
  mercurio.api.financeiro_movimento_boleto in '..\fonte\mercurioApi\mercurio.api.financeiro_movimento_boleto.pas',
  mercurio.api.financeiro_movimento_pix_instantaneo in '..\fonte\mercurioApi\mercurio.api.financeiro_movimento_pix_instantaneo.pas',
  mercurio.api.forma_pagamento in '..\fonte\mercurioApi\mercurio.api.forma_pagamento.pas',
  mercurio.api.fornecedor in '..\fonte\mercurioApi\mercurio.api.fornecedor.pas',
  mercurio.api.functions in '..\fonte\mercurioApi\mercurio.api.functions.pas',
  mercurio.api.login in '..\fonte\mercurioApi\mercurio.api.login.pas',
  mercurio.api.parent in '..\fonte\mercurioApi\mercurio.api.parent.pas',
  mercurio.api in '..\fonte\mercurioApi\mercurio.api.pas',
  mercurio.api.produto in '..\fonte\mercurioApi\mercurio.api.produto.pas',
  mercurio.api.sistema in '..\fonte\mercurioApi\mercurio.api.sistema.pas',
  mercurio.api.transportador in '..\fonte\mercurioApi\mercurio.api.transportador.pas',
  mercurio.api.types in '..\fonte\mercurioApi\mercurio.api.types.pas',
  mercurio.api.usuario in '..\fonte\mercurioApi\mercurio.api.usuario.pas',
  mercurio.api.usuario_empresa_push_notification in '..\fonte\mercurioApi\mercurio.api.usuario_empresa_push_notification.pas',
  mercurio.api.financeiro_movimento_boleto.delete in '..\fonte\mercurioApi\response\mercurio.api.financeiro_movimento_boleto.delete.pas',
  mercurio.api.financeiro_movimento_boleto.get in '..\fonte\mercurioApi\response\mercurio.api.financeiro_movimento_boleto.get.pas',
  mercurio.api.financeiro_movimento_boleto.post in '..\fonte\mercurioApi\response\mercurio.api.financeiro_movimento_boleto.post.pas',
  mercurio.response.aplicativo.get in '..\fonte\mercurioApi\response\mercurio.response.aplicativo.get.pas',
  mercurio.response.cliente.delete in '..\fonte\mercurioApi\response\mercurio.response.cliente.delete.pas',
  mercurio.response.cliente.get in '..\fonte\mercurioApi\response\mercurio.response.cliente.get.pas',
  mercurio.response.cliente.getDocumentoExiste in '..\fonte\mercurioApi\response\mercurio.response.cliente.getDocumentoExiste.pas',
  mercurio.response.cliente.post in '..\fonte\mercurioApi\response\mercurio.response.cliente.post.pas',
  mercurio.response.cliente.put in '..\fonte\mercurioApi\response\mercurio.response.cliente.put.pas',
  mercurio.response.empresa.delete in '..\fonte\mercurioApi\response\mercurio.response.empresa.delete.pas',
  mercurio.response.empresa.get in '..\fonte\mercurioApi\response\mercurio.response.empresa.get.pas',
  mercurio.response.empresa.post in '..\fonte\mercurioApi\response\mercurio.response.empresa.post.pas',
  mercurio.response.empresa.put in '..\fonte\mercurioApi\response\mercurio.response.empresa.put.pas',
  mercurio.response.empresa.putCertificado in '..\fonte\mercurioApi\response\mercurio.response.empresa.putCertificado.pas',
  mercurio.response.empresa.putLogotipo in '..\fonte\mercurioApi\response\mercurio.response.empresa.putLogotipo.pas',
  mercurio.response.estoque.get in '..\fonte\mercurioApi\response\mercurio.response.estoque.get.pas',
  mercurio.response.estoque.getManual in '..\fonte\mercurioApi\response\mercurio.response.estoque.getManual.pas',
  mercurio.response.estoque.post in '..\fonte\mercurioApi\response\mercurio.response.estoque.post.pas',
  mercurio.response.estoque.postManual in '..\fonte\mercurioApi\response\mercurio.response.estoque.postManual.pas',
  mercurio.response.financeiroConta.get in '..\fonte\mercurioApi\response\mercurio.response.financeiroConta.get.pas',
  mercurio.response.financeiroMovimentoPix.getComprovantePagamentoPDF in '..\fonte\mercurioApi\response\mercurio.response.financeiroMovimentoPix.getComprovantePagamentoPDF.pas',
  mercurio.response.financeiroMovimentoPixInstantaneo.delete in '..\fonte\mercurioApi\response\mercurio.response.financeiroMovimentoPixInstantaneo.delete.pas',
  mercurio.response.financeiroMovimentoPixInstantaneo.get in '..\fonte\mercurioApi\response\mercurio.response.financeiroMovimentoPixInstantaneo.get.pas',
  mercurio.response.financeiroMovimentoPixInstantaneo.post in '..\fonte\mercurioApi\response\mercurio.response.financeiroMovimentoPixInstantaneo.post.pas',
  mercurio.response.formaPagamento.get in '..\fonte\mercurioApi\response\mercurio.response.formaPagamento.get.pas',
  mercurio.response.fornecedor.delete in '..\fonte\mercurioApi\response\mercurio.response.fornecedor.delete.pas',
  mercurio.response.fornecedor.get in '..\fonte\mercurioApi\response\mercurio.response.fornecedor.get.pas',
  mercurio.response.fornecedor.getDocumentoExiste in '..\fonte\mercurioApi\response\mercurio.response.fornecedor.getDocumentoExiste.pas',
  mercurio.response.fornecedor.post in '..\fonte\mercurioApi\response\mercurio.response.fornecedor.post.pas',
  mercurio.response.fornecedor.put in '..\fonte\mercurioApi\response\mercurio.response.fornecedor.put.pas',
  mercurio.response.login.logar in '..\fonte\mercurioApi\response\mercurio.response.login.logar.pas',
  mercurio.response.login.logof in '..\fonte\mercurioApi\response\mercurio.response.login.logof.pas',
  mercurio.response.login.renovar in '..\fonte\mercurioApi\response\mercurio.response.login.renovar.pas',
  mercurio.response.produto.delete in '..\fonte\mercurioApi\response\mercurio.response.produto.delete.pas',
  mercurio.response.produto.get in '..\fonte\mercurioApi\response\mercurio.response.produto.get.pas',
  mercurio.response.produto.post in '..\fonte\mercurioApi\response\mercurio.response.produto.post.pas',
  mercurio.response.produto.put in '..\fonte\mercurioApi\response\mercurio.response.produto.put.pas',
  mercurio.response.sistema.get in '..\fonte\mercurioApi\response\mercurio.response.sistema.get.pas',
  mercurio.response.templateUsuarioTipo.get in '..\fonte\mercurioApi\response\mercurio.response.templateUsuarioTipo.get.pas',
  mercurio.response.transportador.delete in '..\fonte\mercurioApi\response\mercurio.response.transportador.delete.pas',
  mercurio.response.transportador.get in '..\fonte\mercurioApi\response\mercurio.response.transportador.get.pas',
  mercurio.response.transportador.getDocumentoExiste in '..\fonte\mercurioApi\response\mercurio.response.transportador.getDocumentoExiste.pas',
  mercurio.response.transportador.post in '..\fonte\mercurioApi\response\mercurio.response.transportador.post.pas',
  mercurio.response.transportador.put in '..\fonte\mercurioApi\response\mercurio.response.transportador.put.pas',
  mercurio.response.usuario.get in '..\fonte\mercurioApi\response\mercurio.response.usuario.get.pas',
  mercurio.response.usuario.recuperarSenha in '..\fonte\mercurioApi\response\mercurio.response.usuario.recuperarSenha.pas',
  mercurio.response.usuarioEmpresaPushNotificationDelete in '..\fonte\mercurioApi\response\mercurio.response.usuarioEmpresaPushNotificationDelete.pas',
  mercurio.response.usuarioEmpresaPushNotificationGet in '..\fonte\mercurioApi\response\mercurio.response.usuarioEmpresaPushNotificationGet.pas',
  mercurio.response.usuarioEmpresaPushNotificationPost in '..\fonte\mercurioApi\response\mercurio.response.usuarioEmpresaPushNotificationPost.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
