unit UPrincipal;

interface

uses
  mercurio.api, mercurio.api.types,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, Json,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.ListBox;

type
  TFrmPrincipal = class(TForm)
    tcPrincipal: TTabControl;
    TabItem1: TTabItem;
    tiEndpoints: TTabItem;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    txApi: TText;
    GroupBox1: TGroupBox;
    rbProducao: TRadioButton;
    rbHomologacao: TRadioButton;
    Layout3: TLayout;
    Layout4: TLayout;
    Text2: TText;
    edtEmail: TEdit;
    edtSenha: TEdit;
    Text3: TText;
    Button1: TButton;
    memLogin: TMemo;
    Text4: TText;
    edtSistema: TEdit;
    btnRenovar: TButton;
    btnLogof: TButton;
    tbErro: TTabItem;
    TabControl1: TTabControl;
    tiSistema: TTabItem;
    tiEmpresa: TTabItem;
    Text5: TText;
    edtSistemaUrl: TEdit;
    Text6: TText;
    edtSistemaIdpk: TEdit;
    Button2: TButton;
    memResponse: TMemo;
    Button3: TButton;
    Rectangle4: TRectangle;
    Text8: TText;
    D: TTabControl;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    Text7: TText;
    edtEmpresaPegarIdpk: TEdit;
    Text9: TText;
    edtEmpresaPegarFields: TEdit;
    Text10: TText;
    edtEmpresaPegarWhere: TEdit;
    Text11: TText;
    edtEmpresaPegarOrderBy: TEdit;
    Text12: TText;
    edtEmpresaPegarRegistroInicial: TEdit;
    Text13: TText;
    edtEmpresaPegarQtdeRegistros: TEdit;
    Text14: TText;
    edtEmpresaPegarTotalRegistros: TEdit;
    Button4: TButton;
    memErro: TMemo;
    Text15: TText;
    Button5: TButton;
    Text16: TText;
    edtEmpresaLogotipo: TEdit;
    Text17: TText;
    edtEmpresaLogotipoIdpk: TEdit;
    Button6: TButton;
    edtCertArquivo: TEdit;
    Text18: TText;
    edtCertEmpresaIdpk: TEdit;
    Text19: TText;
    Text20: TText;
    edtCertSenha: TEdit;
    Text21: TText;
    edtEmpExcCodigo: TEdit;
    Button7: TButton;
    TabItem7: TTabItem;
    edtEmpUsuario: TEdit;
    Text22: TText;
    Button8: TButton;
    edtEmpEmail: TEdit;
    Text23: TText;
    edtEmpSenha: TEdit;
    Text24: TText;
    Text25: TText;
    edtEmpSistemaIdpk: TEdit;
    Text26: TText;
    edtEmpRamoAtividadeIdpk: TEdit;
    Text27: TText;
    edtEmpChaveCadastro: TEdit;
    Text28: TText;
    cbEmpCaptacao: TComboBox;
    Text29: TText;
    memEmpPutPayload: TMemo;
    Text30: TText;
    edtEmpEmpresaIdpk: TEdit;
    Button9: TButton;
    TabItem8: TTabItem;
    TabControl3: TTabControl;
    TabItem9: TTabItem;
    Text31: TText;
    cliConEmpresaIdpk: TEdit;
    Text32: TText;
    cliConFields: TEdit;
    Text33: TText;
    cliConWhere: TEdit;
    Text34: TText;
    cliConFilialIdpk: TEdit;
    Text35: TText;
    cliConRegistroInicial: TEdit;
    Text36: TText;
    cliConQtdeRegistros: TEdit;
    Text37: TText;
    cliConTotalRegistros: TEdit;
    Button10: TButton;
    TabItem10: TTabItem;
    cliIncNome: TEdit;
    Text38: TText;
    Button11: TButton;
    cliIncDocumento: TEdit;
    Text39: TText;
    Text42: TText;
    cliIncEmail: TEdit;
    Text43: TText;
    cliIncFone: TEdit;
    TabItem11: TTabItem;
    Text45: TText;
    memCliPayloadPut: TMemo;
    Text46: TText;
    cliAltEmpresaIdpk: TEdit;
    Button12: TButton;
    TabItem12: TTabItem;
    Text47: TText;
    cliExcEmpresaIdpk: TEdit;
    Button13: TButton;
    Text48: TText;
    cliConOrderBy: TEdit;
    Text49: TText;
    cliConPesquisar: TEdit;
    Text50: TText;
    cliConNome: TEdit;
    Text51: TText;
    cliConEmpresaNome: TEdit;
    Text52: TText;
    cliConDocumento: TEdit;
    cliConCodigoAuxiliar: TEdit;
    Text53: TText;
    Text54: TText;
    cliConIdpk: TEdit;
    TabItem13: TTabItem;
    Text55: TText;
    cliCon2EmpresaIdpk: TEdit;
    Text56: TText;
    cliCon2FilialIdpk: TEdit;
    Button14: TButton;
    Text57: TText;
    cliCon2Documento: TEdit;
    Text40: TText;
    cliIncEndereco: TEdit;
    Text41: TText;
    cliIncEmpresaIdpk: TEdit;
    Text44: TText;
    cliIncFilialIdpk: TEdit;
    Text58: TText;
    cliExcFilialIdpk: TEdit;
    Text59: TText;
    cliExcIdpk: TEdit;
    Text60: TText;
    cliAltFilialIdpk: TEdit;
    cliAltIdpk: TEdit;
    Text61: TText;
    TabItem14: TTabItem;
    TabControl4: TTabControl;
    TabItem15: TTabItem;
    Text62: TText;
    forConEmpresaIdpk: TEdit;
    Text63: TText;
    forConFields: TEdit;
    Text64: TText;
    forConWhere: TEdit;
    Text65: TText;
    forConFilialIdpk: TEdit;
    Text66: TText;
    forConRegistroInicial: TEdit;
    Text67: TText;
    forConQtdeRegistros: TEdit;
    Text68: TText;
    forConTotalRegistros: TEdit;
    Button15: TButton;
    Text69: TText;
    forConOrderBy: TEdit;
    Text70: TText;
    forConPesquisar: TEdit;
    Text71: TText;
    forConNome: TEdit;
    Text73: TText;
    forConDocumento: TEdit;
    Text75: TText;
    forConIdpk: TEdit;
    TabItem16: TTabItem;
    Text76: TText;
    forCon2EmpresaIdpk: TEdit;
    Text77: TText;
    forCon2FilialIdpk: TEdit;
    Button16: TButton;
    Text78: TText;
    forCon2Documento: TEdit;
    TabItem17: TTabItem;
    forIncNome: TEdit;
    Text79: TText;
    Button17: TButton;
    forIncDocumento: TEdit;
    Text80: TText;
    Text81: TText;
    forIncEmail: TEdit;
    Text82: TText;
    forIncFone: TEdit;
    Text83: TText;
    forIncEndereco: TEdit;
    Text84: TText;
    forIncEmpresaIdpk: TEdit;
    Text85: TText;
    forIncFilialIdpk: TEdit;
    TabItem18: TTabItem;
    Text86: TText;
    memForPayloadPut: TMemo;
    Text87: TText;
    forAltEmpresaIdpk: TEdit;
    Button18: TButton;
    Text88: TText;
    forAltFilialIdpk: TEdit;
    forAltIdpk: TEdit;
    Text89: TText;
    TabItem19: TTabItem;
    Text90: TText;
    forExcEmpresaIdpk: TEdit;
    Button19: TButton;
    Text91: TText;
    forExcFilialIdpk: TEdit;
    Text92: TText;
    forExcIdpk: TEdit;
    TabItem20: TTabItem;
    TabControl5: TTabControl;
    TabItem21: TTabItem;
    Text72: TText;
    traConEmpresaIdpk: TEdit;
    Text74: TText;
    traConFields: TEdit;
    Text93: TText;
    traConWhere: TEdit;
    Text94: TText;
    traConFilialIdpk: TEdit;
    Text95: TText;
    traConRegistroInicial: TEdit;
    Text96: TText;
    traConQtdeRegistros: TEdit;
    Text97: TText;
    traConTotalRegistros: TEdit;
    Button20: TButton;
    Text98: TText;
    traConOrderBy: TEdit;
    Text99: TText;
    traConPesquisar: TEdit;
    Text100: TText;
    traConNome: TEdit;
    Text101: TText;
    traConDocumento: TEdit;
    Text102: TText;
    traConIdpk: TEdit;
    TabItem22: TTabItem;
    Text103: TText;
    traCon2EmpresaIdpk: TEdit;
    Text104: TText;
    traCon2FilialIdpk: TEdit;
    Button21: TButton;
    Text105: TText;
    traCon2Documento: TEdit;
    TabItem23: TTabItem;
    tranIncNome: TEdit;
    Text106: TText;
    Button22: TButton;
    tranIncDocumento: TEdit;
    Text107: TText;
    Text108: TText;
    tranIncEmail: TEdit;
    Text109: TText;
    tranIncFone: TEdit;
    Text110: TText;
    tranIncEndereco: TEdit;
    Text111: TText;
    tranIncEmpresaIdpk: TEdit;
    Text112: TText;
    tranIncFilialIdpk: TEdit;
    TabItem24: TTabItem;
    Text113: TText;
    traPayloadPut: TMemo;
    Text114: TText;
    traAltEmpresaIdpk: TEdit;
    Button23: TButton;
    Text115: TText;
    traAltFilialIdpk: TEdit;
    traAltIdpk: TEdit;
    Text116: TText;
    TabItem25: TTabItem;
    Text117: TText;
    traExcEmpresaIdpk: TEdit;
    Button24: TButton;
    Text118: TText;
    traExcFilialIdpk: TEdit;
    Text119: TText;
    traExcIdpk: TEdit;
    Layout5: TLayout;
    TabItem26: TTabItem;
    TabControl6: TTabControl;
    TabItem27: TTabItem;
    Text120: TText;
    proConEmpresaIdpk: TEdit;
    Text121: TText;
    proConFields: TEdit;
    Text122: TText;
    proConWhere: TEdit;
    Text124: TText;
    proConRegistroInicial: TEdit;
    Text125: TText;
    proConQtdeRegistros: TEdit;
    Text126: TText;
    proConTotalRegistros: TEdit;
    Button25: TButton;
    Text127: TText;
    proConOrderBy: TEdit;
    Text128: TText;
    proConNome: TEdit;
    Text129: TText;
    proConCodigoAuxiliar: TEdit;
    Text130: TText;
    proConCodigoInterno: TEdit;
    Text131: TText;
    proConIdpk: TEdit;
    TabItem29: TTabItem;
    proIncCodBarras: TEdit;
    Text135: TText;
    Button27: TButton;
    proIncPrecoVenda: TEdit;
    Text136: TText;
    Text137: TText;
    proIncCodigoInterno: TEdit;
    Text138: TText;
    proIncCodigoAuxiliar: TEdit;
    Text139: TText;
    proIncNome: TEdit;
    Text140: TText;
    proIncEmpresaIdpk: TEdit;
    TabItem30: TTabItem;
    Text142: TText;
    proPayloadPut: TMemo;
    Text143: TText;
    proAltEmpresaIdpk: TEdit;
    Button28: TButton;
    Text144: TText;
    proAltFilialIdpk: TEdit;
    proAltIdpk: TEdit;
    Text145: TText;
    TabItem31: TTabItem;
    Text146: TText;
    proExcEmpresaIdpk: TEdit;
    Button29: TButton;
    Text148: TText;
    proExcIdpk: TEdit;
    Text123: TText;
    proConCodbarras: TEdit;
    Text132: TText;
    proConEstoqueMenor: TEdit;
    Text133: TText;
    proConProdutoTipoCodigo: TEdit;
    TabItem28: TTabItem;
    TabControl7: TTabControl;
    TabItem32: TTabItem;
    Text134: TText;
    usuPegEmpresaIdpk: TEdit;
    Text141: TText;
    usuPegFields: TEdit;
    Text147: TText;
    usuPegWhere: TEdit;
    Text149: TText;
    usuPegRegistroInicial: TEdit;
    Text150: TText;
    usuPegQtdeRegistros: TEdit;
    Text151: TText;
    usuPegTotalRegistros: TEdit;
    Button26: TButton;
    Text152: TText;
    usuPegOrderBy: TEdit;
    Text155: TText;
    usuPegTipo: TEdit;
    Text156: TText;
    usuPegIdpk: TEdit;
    TabItem33: TTabItem;
    Button30: TButton;
    Text164: TText;
    usuRecEmail: TEdit;
    Text165: TText;
    usuRecSistemaIdpk: TEdit;
    Text153: TText;
    usuPegFilialIdpk: TEdit;
    TabItem34: TTabItem;
    TabControl8: TTabControl;
    TabItem35: TTabItem;
    Button31: TButton;
    TabItem36: TTabItem;
    Button32: TButton;
    TabItem37: TTabItem;
    Text154: TText;
    momConIdpk: TEdit;
    Text157: TText;
    momConFields: TEdit;
    Text170: TText;
    momConRegistroInicial: TEdit;
    Text171: TText;
    momConOrderBy: TEdit;
    momConFilialIdpk: TEdit;
    Text172: TText;
    momConEmpresaIdpk: TEdit;
    Text173: TText;
    momConTotalRegistros: TEdit;
    Text174: TText;
    momConQtdeRegistros: TEdit;
    Text175: TText;
    momConWhere: TEdit;
    Text176: TText;
    Text177: TText;
    momConOrigem: TEdit;
    momConOrigemIdpk: TEdit;
    Text178: TText;
    Text179: TText;
    momConMovimentoDe: TEdit;
    Text180: TText;
    momConMovimentoAte: TEdit;
    Text181: TText;
    momConProdutoIdpk: TEdit;
    Text182: TText;
    momConProdutoNome: TEdit;
    Text183: TText;
    momConMovimento: TEdit;
    Text158: TText;
    movConIdpk: TEdit;
    Text159: TText;
    movConFields: TEdit;
    Text160: TText;
    movConRegistroInicial: TEdit;
    movConEmpresaIdpk: TEdit;
    Text161: TText;
    movConFilialIdpk: TEdit;
    Text162: TText;
    Text163: TText;
    movConOrderBy: TEdit;
    Text166: TText;
    movConMovimentoAte: TEdit;
    movConMovimentoDe: TEdit;
    Text167: TText;
    movConProdutoNome: TEdit;
    Text168: TText;
    Text169: TText;
    movConMovimento: TEdit;
    movConProdutoIdpk: TEdit;
    Text184: TText;
    movConTotalRegistros: TEdit;
    Text185: TText;
    movConQtdeRegistros: TEdit;
    Text186: TText;
    movConWhere: TEdit;
    Text187: TText;
    Text188: TText;
    movConOrigem: TEdit;
    Text189: TText;
    movConOrigemIdpk: TEdit;
    Text190: TText;
    movConPosicaoEstoque: TEdit;
    Text191: TText;
    momIncEmpresaIdpk: TEdit;
    Text192: TText;
    momIncFilialIdpk: TEdit;
    Text193: TText;
    momIncProdutoIdpk: TEdit;
    Text194: TText;
    momIncMovimento: TEdit;
    Text195: TText;
    momIncQuantidade: TEdit;
    Text196: TText;
    momIncMovimentoData: TEdit;
    Text197: TText;
    momIncNome: TEdit;
    Text198: TText;
    momIncObservacao: TEdit;
    Button33: TButton;
    Text199: TText;
    momIncOrigem: TEdit;
    Text200: TText;
    momIncOrigemIdpk: TEdit;
    Text201: TText;
    momIncOrigemDocumento: TEdit;
    TabItem38: TTabItem;
    TabControl9: TTabControl;
    TabItem39: TTabItem;
    Text202: TText;
    fopConEmpresaIdpk: TEdit;
    Text203: TText;
    fopConFields: TEdit;
    Text204: TText;
    fopConWhere: TEdit;
    Text205: TText;
    fopConOrderBy: TEdit;
    Text206: TText;
    fopConRegistroInicial: TEdit;
    Text207: TText;
    fopConQtdeRegistros: TEdit;
    Text208: TText;
    fopConTotalRegistros: TEdit;
    Button34: TButton;
    Text209: TText;
    fopConClassificacao: TEdit;
    fopConDescricao: TEdit;
    Text210: TText;
    TabItem40: TTabItem;
    TabControl2: TTabControl;
    TabItem41: TTabItem;
    TabControl10: TTabControl;
    TabItem42: TTabItem;
    Button35: TButton;
    Text1: TText;
    edtPixIIdpk: TEdit;
    Text211: TText;
    edtPixIEmpresaIdpk: TEdit;
    Text212: TText;
    edtPixIFilialIdpk: TEdit;
    TabItem43: TTabItem;
    Text213: TText;
    edtPixIPEmpresaIdpk: TEdit;
    Text214: TText;
    edtPixIPFilialIdpk: TEdit;
    edtPixIPFinanceiroMovimentoIdpk: TEdit;
    Text215: TText;
    Button36: TButton;
    edtPixIPDescricao: TEdit;
    Text216: TText;
    edtPixIPValor: TEdit;
    Text217: TText;
    TabItem44: TTabItem;
    Button37: TButton;
    edtPixIDFilialIdpk: TEdit;
    Text218: TText;
    edtPixIDEmpresaIdpk: TEdit;
    Text219: TText;
    Text220: TText;
    edtPixIDFinanceiroMovimentoIdpk: TEdit;
    Text221: TText;
    edtPixIDIdpk: TEdit;
    TabItem45: TTabItem;
    TabControl11: TTabControl;
    TabItem46: TTabItem;
    Button38: TButton;
    Text222: TText;
    edtFCContaIdpk: TEdit;
    Text223: TText;
    edtFCEmpresaIdpk: TEdit;
    Text224: TText;
    edtFCFilialIdpk: TEdit;
    TabItem47: TTabItem;
    Text225: TText;
    Edit4: TEdit;
    Text226: TText;
    Edit5: TEdit;
    Edit6: TEdit;
    Text227: TText;
    Button39: TButton;
    Edit7: TEdit;
    Text228: TText;
    Edit8: TEdit;
    Text229: TText;
    TabItem48: TTabItem;
    Button40: TButton;
    Edit9: TEdit;
    Text230: TText;
    Edit10: TEdit;
    Text231: TText;
    Text232: TText;
    Edit11: TEdit;
    Text233: TText;
    Edit12: TEdit;
    TabItem49: TTabItem;
    TabControl12: TTabControl;
    TabItem50: TTabItem;
    Button41: TButton;
    Text234: TText;
    pntGetIdpk: TEdit;
    Text235: TText;
    pntGetEmpresaIdpk: TEdit;
    Text236: TText;
    pntGetFilialIdpk: TEdit;
    TabItem51: TTabItem;
    Text237: TText;
    pntPostEmpresaIdpk: TEdit;
    Text238: TText;
    pntPostFilialIdpk: TEdit;
    pntPostAplicativoIdpk: TEdit;
    Text239: TText;
    Button42: TButton;
    pntPostUsuarioEmpresaIdpk: TEdit;
    Text240: TText;
    pntPostToken: TEdit;
    Text241: TText;
    TabItem52: TTabItem;
    Button43: TButton;
    pntDeleteFilialIdpk: TEdit;
    Text242: TText;
    pntDeleteEmpresaIdpk: TEdit;
    Text243: TText;
    Text244: TText;
    pntDeleteToken: TEdit;
    Text245: TText;
    pntDeleteIdpk: TEdit;
    Text246: TText;
    pntDeleteAplicativoIdpk: TEdit;
    TabItem53: TTabItem;
    Button44: TButton;
    TabItem54: TTabItem;
    TabControl13: TTabControl;
    TabItem55: TTabItem;
    Button45: TButton;
    Text247: TText;
    edtBoletoIdpk: TEdit;
    Text248: TText;
    edtBoletoEmpresaIdpk: TEdit;
    Text249: TText;
    edtBoletoFilialIdpk: TEdit;
    TabItem56: TTabItem;
    Text250: TText;
    edtBPEmpresaIdpk: TEdit;
    edtBPFilialIdpk: TEdit;
    Text252: TText;
    Button46: TButton;
    TabItem57: TTabItem;
    Button47: TButton;
    edtBDFilialIdpk: TEdit;
    Text255: TText;
    edtBDEmpresaIdpk: TEdit;
    Text256: TText;
    Text257: TText;
    edtBDFinanceiroMovimentoIdpk: TEdit;
    Text258: TText;
    edtBDIdpk: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbHomologacaoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnRenovarClick(Sender: TObject);
    procedure btnLogofClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
  private
    procedure exibirMensagem(memo : TMemo; response : IResponse);

    procedure CommunicationError(const Response : IResponse; StatusCode : integer; StatusMessage : string);
    procedure InternalError(const Sender : TObject; Error : string);
  public
    sdk : TMercurioApi;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses mercurio.api.functions;

procedure TFrmPrincipal.btnRenovarClick(Sender: TObject);
var response : IResponseRenovar;
begin
  if (sdk.Login.Token = '') then
    btnRenovar.Enabled := false;

  response := sdk.Login.RenovarToken;
  exibirMensagem(memLogin, response);
end;

procedure TFrmPrincipal.Button10Click(Sender: TObject);
var response : IResponseClienteGet;
    payload : IClienteGet;
begin
  payload := TClienteGet.new;
  payload.setIdpk(cliConIdpk.Text);
  payload.setEmpresaIdpk(cliConEmpresaIdpk.Text);
  payload.setFilialIdpk(cliConFilialIdpk.Text);
  payload.setFields(cliConFields.Text);
  payload.setWhere(cliConWhere.Text);
  payload.setOrderBy(cliConOrderBy.Text);
  payload.setRegistroInicial(cliConRegistroInicial.Text);
  payload.setQtdeRegistros(cliConQtdeRegistros.Text);
  payload.setTotalRegistros(cliConTotalRegistros.Text = 'S');
  payload.setPesquisar(cliConPesquisar.Text);
  payload.setNome(cliConNome.Text);
  payload.setNomeEmpresa(cliConEmpresaNome.Text);
  payload.setDocumento(cliConDocumento.Text);
  payload.setCodigoAuxiliar(cliConCodigoAuxiliar.Text);

  response := sdk.Cliente.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button11Click(Sender: TObject);
var response : IResponseClientePost;
    payload : IClientePost;

    pessoa : IMercurioPessoa;
    cliente : ICliente;
begin
  pessoa := TMercurioPessoa.new;

  //Adiciona um e-mail
  pessoa.addEmail(TMercurioEmail.new
    .setEmail(cliIncEmail.Text)
    .setDescricao('Descrição do e-mail cadastrado.')
    .setGeral(true)
  );

  //Adiciona um fone para o cliente
  pessoa.addTelefone(TMercurioTelefone.new
    .setDescricao('Descrição do fone adicionado.')
    .setTelefone(cliIncFone.Text)
  );

  //Adiciona um endereço para o cliente
  pessoa.addEndereco(TMercurioEndereco.new
    .setDescricao('Descrição dos dados do endereço.')
    .setLogradouro(cliIncEndereco.Text)
  );

  pessoa.setNomeRazaoSocial(cliIncNome.Text);


  cliente := TCliente.new
    .setPessoa(pessoa)
//  .setCodigoIndividual()
//  .setIndicadorIE()
//  ...
    ;

  payload := TClientePost.new;
  payload.addCliente(cliente);
  payload.setEmpresaIdpk(cliIncEmpresaIdpk.Text);
  payload.setFilialIdpk(cliIncFilialIdpk.Text);
  //caso desejar montar teu payload baseado na documentação da api, pode utilizar
  //a função a baixo
  //payload.setPayload();


  response := sdk.Cliente.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button12Click(Sender: TObject);
var response : IResponseClientePut;
    payload : TJSONObject;
    payloadPut : IClientePut;
begin
  payload := TJSONObject(TJSONObject.ParseJSONValue(memCliPayloadPut.Lines.Text));
  if (payload = nil) then
    raise Exception.Create('Desculpe, payload montado é inválido.');

  payloadPut := TClientePut.new;
  payloadPut.setIdpk(cliAltIdpk.Text);
  payloadPut.setEmpresaIdpk(cliAltEmpresaIdpk.Text);
  payloadPut.setFilialIdpk(cliAltEmpresaIdpk.Text);
  payloadPut.setPayload(payload);

  response := sdk.Cliente.Put(payloadPut);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button13Click(Sender: TObject);
var response : IResponseClienteDelete;
    cliente : IClienteDelete;
begin
  cliente := TClienteDelete.new;
  cliente.setIdpk(cliExcIdpk.Text);
  cliente.setEmpresaIdpk(cliExcEmpresaIdpk.Text);
  cliente.setFilialIdpk(cliExcFilialIdpk.Text);

  response := sdk.Cliente.Delete(cliente);

  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button14Click(Sender: TObject);
var response : IResponseClienteGetDocumentoExiste;
    payload : IClienteDocumentoGet;
begin
  payload := TClienteDocumentoGet.new;
  payload.setEmpresaIdpk(cliCon2EmpresaIdpk.Text);
  payload.setFilialIdpk(cliCon2FilialIdpk.Text);
  payload.setDocumento(cliCon2Documento.Text);

  response := sdk.Cliente.GetDocumentoExiste(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button15Click(Sender: TObject);
var response : IResponseFornecedorGet;
    payload : IFornecedorGet;
begin
  payload := TFornecedorGet.new;
  payload.setIdpk(forConIdpk.Text);
  payload.setEmpresaIdpk(forConEmpresaIdpk.Text);
  payload.setFilialIdpk(forConFilialIdpk.Text);
  payload.setFields(forConFields.Text);
  payload.setWhere(forConWhere.Text);
  payload.setOrderBy(forConOrderBy.Text);
  payload.setRegistroInicial(forConRegistroInicial.Text);
  payload.setQtdeRegistros(forConQtdeRegistros.Text);
  payload.setTotalRegistros(forConTotalRegistros.Text = 'S');
  payload.setPesquisar(forConPesquisar.Text);
  payload.setNome(forConNome.Text);
  payload.setDocumento(forConDocumento.Text);

  response := sdk.Fornecedor.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button16Click(Sender: TObject);
var response : IResponseFornecedorGetDocumentoExiste;
    payload : IFornecedorDocumentoGet;
begin
  payload := TFornecedorDocumentoGet.new;
  payload.setEmpresaIdpk(forCon2EmpresaIdpk.Text);
  payload.setFilialIdpk(forCon2FilialIdpk.Text);
  payload.setDocumento(forCon2Documento.Text);

  response := sdk.Fornecedor.GetDocumentoExiste(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button17Click(Sender: TObject);
var response : IResponseFornecedorPost;
    payload : IFornecedorPost;

    pessoa : IMercurioPessoa;
    fornecedor : IFornecedor;
begin
  pessoa := TMercurioPessoa.new;

  //Adiciona um e-mail
  pessoa.addEmail(TMercurioEmail.new
    .setEmail(forIncEmail.Text)
    .setDescricao('Descrição do e-mail do fornecedor cadastrado.')
    .setGeral(true)
  );

  //Adiciona um fone para o cliente
  pessoa.addTelefone(TMercurioTelefone.new
    .setDescricao('Descrição do fone do fornecedor adicionado.')
    .setTelefone(forIncFone.Text)
  );

  //Adiciona um endereço para o cliente
  pessoa.addEndereco(TMercurioEndereco.new
    .setDescricao('Descrição dos dados do endereço do fornecedor cadastrado.')
    .setLogradouro(forIncEndereco.Text)
  );

  pessoa.setNomeRazaoSocial(forIncNome.Text);

  fornecedor := TFornecedor.new
    .setPessoa(pessoa);


  payload := TFornecedorPost.new
    .setEmpresaIdpk(forIncEmpresaIdpk.Text)
    .setFilialIdpk(forIncFilialIdpk.Text)
    .addFornecedor(fornecedor);

  response := sdk.Fornecedor.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button18Click(Sender: TObject);
var response : IResponseFornecedorPut;
    payload : TJSONObject;
    payloadPut : IFornecedorPut;
begin
  payload := TJSONObject(TJSONObject.ParseJSONValue(memForPayloadPut.Lines.Text));
  if (payload = nil) then
    raise Exception.Create('Desculpe, payload montado é inválido.');

  payloadPut := TFornecedorPut.new;
  payloadPut.setIdpk(forAltIdpk.Text);
  payloadPut.setEmpresaIdpk(forAltEmpresaIdpk.Text);
  payloadPut.setFilialIdpk(forAltEmpresaIdpk.Text);
  payloadPut.setPayload(payload);
  response := sdk.Fornecedor.Put(payloadPut);

  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button19Click(Sender: TObject);
var response : IResponseFornecedorDelete;
    fornecedor : IFornecedorDelete;
begin
  fornecedor := TFornecedorDelete.new;
  fornecedor.setIdpk(forExcIdpk.Text);
  fornecedor.setEmpresaIdpk(forExcEmpresaIdpk.Text);
  fornecedor.setFilialIdpk(forExcFilialIdpk.Text);

  response := sdk.Fornecedor.Delete(fornecedor);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var response : IResponseLogar;
    payload : ILogarParams;
begin
  payload := TLogarParams.new;
  payload.setSistemaIdpk(edtSistema.Text);
  payload.setEmail(edtEmail.Text);
  payload.setSenha(edtSenha.Text);

  response := sdk.Login.Logar(payload);

  if (sdk.Login.Token <> '') then //se tem token, então está autenticado
  begin
    btnRenovar.Enabled := true;
    btnLogof.Enabled := true;
  end;

  exibirMensagem(memLogin, response);
end;

procedure TFrmPrincipal.Button20Click(Sender: TObject);
var response : IResponseTransportadorGet;
    payload : ITransportadorGet;
begin
  payload := TTransportadorGet.new;
  payload.setIdpk(traConIdpk.Text);
  payload.setEmpresaIdpk(traConEmpresaIdpk.Text);
  payload.setFilialIdpk(traConFilialIdpk.Text);
  payload.setFields(traConFields.Text);
  payload.setWhere(traConWhere.Text);
  payload.setOrderBy(traConOrderBy.Text);
  payload.setRegistroInicial(traConRegistroInicial.Text);
  payload.setQtdeRegistros(traConQtdeRegistros.Text);
  payload.setTotalRegistros(traConTotalRegistros.Text = 'S');
  payload.setPesquisar(traConPesquisar.Text);
  payload.setNome(traConNome.Text);
  payload.setDocumento(traConDocumento.Text);

  response := sdk.Transportador.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button21Click(Sender: TObject);
var response : IResponseTransportadorGetDocumentoExiste;
    payload : ITransportadorDocumentoGet;
begin
  payload := TTransportadorDocumentoGet.new;
  payload.setEmpresaIdpk(traCon2EmpresaIdpk.Text);
  payload.setFilialIdpk(traCon2FilialIdpk.Text);
  payload.setDocumento(traCon2Documento.Text);

  response := sdk.Transportador.GetDocumentoExiste(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button22Click(Sender: TObject);
var response : IResponseTransportadorPost;
    payload : ITransportadorPost;

    pessoa : IMercurioPessoa;
    transportador : ITransportador;
begin
  pessoa := TMercurioPessoa.new;

  //Adiciona um e-mail
  pessoa.addEmail(TMercurioEmail.new
    .setEmail(tranIncEmail.Text)
    .setDescricao('Descrição do e-mail do fornecedor cadastrado.')
    .setGeral(true)
  );

  //Adiciona um fone para o cliente
  pessoa.addTelefone(TMercurioTelefone.new
    .setDescricao('Descrição do fone do fornecedor adicionado.')
    .setTelefone(tranIncFone.Text)
  );

  //Adiciona um endereço para o cliente
  pessoa.addEndereco(TMercurioEndereco.new
    .setDescricao('Descrição dos dados do endereço do fornecedor cadastrado.')
    .setLogradouro(tranIncEndereco.Text)
  );

  pessoa.setNomeRazaoSocial(tranIncNome.Text);

  transportador := TTransportador.new
    .setPessoa(pessoa);


  payload := TTransportadorPost.new;
  payload.setEmpresaIdpk(tranIncEmpresaIdpk.Text);
  payload.setFilialIdpk(tranIncFilialIdpk.Text);
  payload.addTransportador(transportador);

  response := sdk.Transportador.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button23Click(Sender: TObject);
var response : IResponseTransportadorPut;
    payload : TJSONObject;
    payloadPut : ITransportadorPut;
begin
  payload := TJSONObject(TJSONObject.ParseJSONValue(traPayloadPut.Lines.Text));
  if (payload = nil) then
    raise Exception.Create('Desculpe, payload montado é inválido.');

  payloadPut := TTransportadorPut.new;
  payloadPut.setIdpk(traAltIdpk.Text);
  payloadPut.setEmpresaIdpk(traAltEmpresaIdpk.Text);
  payloadPut.setFilialIdpk(traAltEmpresaIdpk.Text);
  payloadPut.setPayload(payload);
  response := sdk.Transportador.Put(payloadPut);

  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button24Click(Sender: TObject);
var response : IResponseTransportadorDelete;
    transportador : ITransportadorDelete;
begin
  transportador := TTransportadorDelete.new;
  transportador.setIdpk(traExcIdpk.Text);
  transportador.setEmpresaIdpk(traExcEmpresaIdpk.Text);
  transportador.setFilialIdpk(traExcFilialIdpk.Text);

  response := sdk.Transportador.Delete(transportador);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button25Click(Sender: TObject);
var response : IResponseProdutoGet;
    payload : IProdutoGet;
begin
  payload := TProdutoGet.new;
  payload.setIdpk(proConIdpk.Text);
  payload.setEmpresaIdpk(proConEmpresaIdpk.Text);
  payload.setFields(proConFields.Text);
  payload.setWhere(proConWhere.Text);
  payload.setOrderBy(proConOrderBy.Text);
  payload.setRegistroInicial(proConRegistroInicial.Text);
  payload.setQtdeRegistros(proConQtdeRegistros.Text);
  payload.setTotalRegistros(proConTotalRegistros.Text = 'S');
  payload.setNome(proConNome.Text);
  payload.setCodigoInterno(proConCodigoInterno.Text);
  payload.setCodigoAuxiliar(proConCodigoAuxiliar.Text);
  payload.setCodBarras(proConCodbarras.Text);
  payload.setProdutoTipoCodigo(proConProdutoTipoCodigo.Text);
  if (strToFloatDef(proConEstoqueMenor.Text, 0) <> 0) then
    payload.setEstoqueMenor(strToFloatDef(proConEstoqueMenor.Text, 0));

  response := sdk.Produto.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button26Click(Sender: TObject);
var response : IResponseUsuarioGet;
    payload : IUsuarioGet;
begin
  payload := TUsuarioGet.new;
  payload.setIdpk(usuPegIdpk.Text);
  payload.setEmpresaIdpk(usuPegEmpresaIdpk.Text);
  payload.setFilialIdpk(usuPegFilialIdpk.Text);
  payload.setFields(usuPegFields.Text);
  payload.setWhere(usuPegWhere.Text);
  payload.setOrderBy(usuPegOrderBy.Text);
  payload.setRegistroInicial(usuPegRegistroInicial.Text);
  payload.setQtdeRegistros(usuPegQtdeRegistros.Text);
  payload.setTotalRegistros(usuPegTotalRegistros.Text = 'S');
  payload.setTipo(usuPegTipo.Text);

  response := sdk.Usuario.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button27Click(Sender: TObject);
var response : IResponseProdutoPost;
    payload : IProdutoPost;
    produto : IProduto;
begin
  produto := TProduto.new;
  produto.setEmpresaIdpk(proIncEmpresaIdpk.Text);
  produto.setDescricao(proIncNome.Text);
  produto.setCodBarras(proIncCodBarras.Text);
  produto.setCodigoInterno(strToIntDef(proIncCodigoInterno.Text, 0));
  produto.setCodigoAuxiliar(proIncCodigoAuxiliar.Text);
  produto.setPrecoVenda(strToFloatDef(proIncPrecoVenda.Text, 0));

  payload := TProdutoPost.new;
  payload.setEmpresaIdpk(proIncEmpresaIdpk.Text);
  payload.addProduto(produto);

  response := sdk.Produto.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button28Click(Sender: TObject);
var response : IResponseProdutoPut;
    payload : TJSONObject;
    payloadPut : IProdutoPut;
begin
  payload := TJSONObject(TJSONObject.ParseJSONValue(proPayloadPut.Lines.Text));
  if (payload = nil) then
    raise Exception.Create('Desculpe, payload montado é inválido.');

  payloadPut := TProdutoPut.new;
  payloadPut.setIdpk(proAltIdpk.Text);
  payloadPut.setEmpresaIdpk(proAltEmpresaIdpk.Text);
  payloadPut.setFilialIdpk(proAltEmpresaIdpk.Text);
  payloadPut.setPayload(payload);

  response := sdk.Produto.Put(payloadPut);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button29Click(Sender: TObject);
var response : IResponseProdutoDelete;
    produto : IProdutoDelete;
begin
  produto := TProdutoDelete.new;
  produto.setIdpk(proExcIdpk.Text);
  produto.setEmpresaIdpk(proExcEmpresaIdpk.Text);

  response := sdk.Produto.Delete(produto);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var response : IResponseSistemaGet;
    payloadGet : ISistemaGet;
begin
  payloadGet := TSistemaGet.new;
  payloadGet.setUrl(edtSistemaUrl.Text);

  response := sdk.Sistema.Get(payloadGet);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button30Click(Sender: TObject);
var response : IResponseUsuarioRecuperarSenha;
    payload : IUsuarioRecuperarSenha;
begin
  payload := TUsuarioRecuperarSenha.new
    .setSistemaIdpk(usuRecSistemaIdpk.Text)
    .setEmail(usuRecEmail.Text);

  response := sdk.Usuario.RecuperarSenha(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button31Click(Sender: TObject);
var response : IResponseEstoqueGetManual;
    payload : IEstoqueManualGet;
begin
  payload := TEstoqueManualGet.new;
  payload.setIdpk(momConIdpk.Text);
  payload.setEmpresaIdpk(momConEmpresaIdpk.Text);
  payload.setFields(momConFields.Text);
  payload.setWhere(momConWhere.Text);
  payload.setOrderBy(momConOrderBy.Text);
  payload.setRegistroInicial(momConRegistroInicial.Text);
  payload.setQtdeRegistros(momConQtdeRegistros.Text);
  payload.setTotalRegistros(momConTotalRegistros.Text = 'S');

  payload.setDataMovimento(StrToDateDef(momConMovimentoDe.Text, 0), StrToDateDef(momConMovimentoAte.Text, 0));
  payload.setMovimento(momConMovimento.Text);
  payload.setOrigem(momConOrigem.Text);
  payload.setOrigemIdpk(momConOrigemIdpk.Text);
  payload.setProdutoIdpk(momConProdutoIdpk.Text);
  payload.setProdutoNome(momConProdutoNome.Text);

  response := sdk.Estoque.GetMovimentoManual(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button32Click(Sender: TObject);
var response : IResponseEstoqueGet;
    payload : IEstoqueGet;
begin
  payload := TEstoqueGet.new;
  payload.setIdpk(movConIdpk.Text);
  payload.setEmpresaIdpk(movConEmpresaIdpk.Text);
  payload.setFields(movConFields.Text);
  payload.setWhere(movConWhere.Text);
  payload.setOrderBy(movConOrderBy.Text);
  payload.setRegistroInicial(movConRegistroInicial.Text);
  payload.setQtdeRegistros(movConQtdeRegistros.Text);
  payload.setTotalRegistros(movConTotalRegistros.Text = 'S');

  payload.setDataMovimento(StrToDateDef(movConMovimentoDe.Text, 0), StrToDateDef(movConMovimentoAte.Text, 0));
  payload.setMovimento(movConMovimento.Text);
  payload.setOrigem(movConOrigem.Text);
  payload.setOrigemIdpk(movConOrigemIdpk.Text);
  payload.setProdutoIdpk(movConProdutoIdpk.Text);
  payload.setProdutoNome(movConProdutoNome.Text);
  payload.setPosicaoEstoquePeriodo(movConMovimento.Text = 'S');

  response := sdk.Estoque.GetMovimento(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button33Click(Sender: TObject);
var response : IResponseEstoquePostManual;
    payloadPost : IEstoqueManualPost;
begin
  payloadPost := TEstoqueManualPost.new;
  payloadPost.setEmpresaIdpk(momIncEmpresaIdpk.Text);
  payloadPost.setFilialIdpk(momIncFilialIdpk.Text);
  payloadPost.addMovimentoManual(TEstoqueManual.new
    .setQtde(strToFloatDef(momIncQuantidade.Text, 0))
    .setMovimento(momIncMovimento.Text)
    .setProdutoIdpk(momIncProdutoIdpk.Text)
    .setObservacao(momIncObservacao.Text)
    .setDataMovimento(StrToDateDef(momIncMovimentoData.Text, 0))
    .setNome(momIncNome.Text)
    .setOrigem(momIncOrigem.Text)
    .setOrigemIdpk(momIncOrigemIdpk.Text)
    .setOrigemDocumento(momIncOrigemDocumento.Text)
  );

  response := sdk.Estoque.PostMovimentoManual(payloadPost);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button34Click(Sender: TObject);
var response : IResponseFormaPagamentoGet;
    payload : IFormaPagamentoGet;
begin
  payload := TFormaPagamentoGet.new;
  payload.setEmpresaIdpk(fopConEmpresaIdpk.Text);
  payload.setFields(fopConFields.Text);
  payload.setWhere(fopConWhere.Text);
  payload.setOrderBy(fopConOrderBy.Text);
  payload.setRegistroInicial(fopConRegistroInicial.Text);
  payload.setQtdeRegistros(fopConQtdeRegistros.Text);
  payload.setTotalRegistros(fopConTotalRegistros.Text = 'S');
  payload.setClassificacao(fopConClassificacao.Text);
  payload.setDescricao(fopConDescricao.Text);

  response := sdk.FormaPagamento.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button35Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoPixInstantaneoGet;
    payload : IFinanceiroMovimentoPixInstantaneoGet;
begin
  payload := TFinanceiroMovimentoPixInstantaneoGet.new;
  payload.setIdpk(edtPixIIdpk.Text);
  payload.setEmpresaIdpk(edtPixIEmpresaIdpk.Text);
  payload.setFilialIdpk(edtPixIFilialIdpk.Text);
  payload.setFields('');
  payload.setWhere('');
  payload.setOrderBy('');
  payload.setRegistroInicial('');
  payload.setQtdeRegistros('');
  payload.setTotalRegistros(true);
  payload.setFinanceiroMovimentoIdpk('');
  payload.setFinanceiroContaIdpk('');
  payload.setStatus('');
  payload.setUsuarioIdpk('');
  payload.setDescricao('');
  payload.setPagamento('', '');
  payload.setDataCriacao('', '');

  response := sdk.FinanceiroMovimento.Pix.get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button36Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoPixInstantaneoPost;
    payload : IFinanceiroMovimentoPixInstantaneoPost;
    pix : IFinanceiroMovimentoPix;
begin
  pix := TFinanceiroMovimentoPix.new;
  pix.setDescricao(edtPixIPDescricao.Text);
  pix.setValor(strToFloatDef(edtPixIPValor.Text, 0));

  payload := TFinanceiroMovimentoPixInstantaneoPost.new;
  payload.setEmpresaIdpk(edtPixIPEmpresaIdpk.Text);
  payload.setFilialIdpk(edtPixIPFilialIdpk.Text);
  payload.setFinanceiroMovimentoIdpk(edtPixIPFinanceiroMovimentoIdpk.Text);
  payload.addFinanceiroMovimentoPix(pix);

  response := sdk.FinanceiroMovimento.Pix.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button37Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoPixInstantaneoDelete;
    pix : IFinanceiroMovimentoPixInstantaneoDelete;
begin
  pix := TFinanceiroMovimentoPixInstantaneoDelete.new;
  pix.setIdpk(edtPixIDIdpk.Text);
  pix.setEmpresaIdpk(edtPixIDEmpresaIdpk.Text);
  pix.setFilialIdpk(edtPixIDFilialIdpk.Text);
  pix.setFinanceiroMovimentoIdpk(edtPixIDFinanceiroMovimentoIdpk.Text);

  response := sdk.FinanceiroMovimento.Pix.Delete(pix);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button38Click(Sender: TObject);
var response : IResponseFinanceiroContaGet;
    payload : IFinanceiroContaGet;
begin
  payload := TFinanceiroContaGet.new;
  payload.setIdpk(edtFCContaIdpk.Text);
  payload.setEmpresaIdpk(edtFCEmpresaIdpk.Text);
  payload.setFilialIdpk(edtFCFilialIdpk.Text);
  payload.setFields('');
  payload.setWhere('');
  payload.setOrderBy('');
  payload.setRegistroInicial('');
  payload.setQtdeRegistros('');
  payload.setTotalRegistros(true);
  payload.setContaPadrao(false);
  payload.setTipoConta('');
  
  response := sdk.FinanceiroConta.get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var response : IResponseSistemaGet;
    payloadGet : ISistemaGet;
begin
  payloadGet := TSistemaGet.new;
  payloadGet.setIdpk(edtSistemaIdpk.Text);

  response := sdk.Sistema.Get(payloadGet);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button41Click(Sender: TObject);
var response : IResponsePushNotificationTokenGet;
    payload : IPushNotificationTokenGet;
begin
  payload := TPushNotificationTokenGet.new;
  payload.setIdpk(pntGetIdpk.Text);
  payload.setEmpresaIdpk(pntGetEmpresaIdpk.Text);
  payload.setFilialIdpk(pntGetFilialIdpk.Text);
  payload.setFields('');
  payload.setWhere('');
  payload.setOrderBy('');
  payload.setRegistroInicial('');
  payload.setQtdeRegistros('');
  payload.setTotalRegistros(true);
  payload.setUsuarioEmpresaIdpk('');
  payload.setAplicativoIdpk('');
  payload.setAplicativoPackage('');
  payload.setToken('');

  response := sdk.PushNotificationToken.get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button42Click(Sender: TObject);
var response : IResponsePushNotificationTokenPost;
    payload : IPushNotificationTokenPost;
    token : IUsuarioEmpresaPushNotification;
begin
  token := TUsuarioEmpresaPushNotification.new;
  token.setUsuarioEmpresaIdpk(pntPostUsuarioEmpresaIdpk.Text);
  token.setAplicativoIdpk(pntPostAplicativoIdpk.Text);
  token.setToken(pntPostToken.Text);

  payload := TPushNotificationTokenPost.new;
  payload.setEmpresaIdpk(pntPostEmpresaIdpk.Text);
  payload.setFilialIdpk(pntPostFilialIdpk.Text);
  payload.addPushNotificationToken(token);

  response := sdk.PushNotificationToken.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button43Click(Sender: TObject);
var response : IResponsePushNotificationTokenDelete;
    payload : IPushNotificationTokenDelete;
begin
  payload := TPushNotificationTokenDelete.new;
  payload.setIdpk(pntDeleteIdpk.Text);
  payload.setEmpresaIdpk(pntDeleteEmpresaIdpk.Text);
  payload.setFilialIdpk(pntDeleteFilialIdpk.Text);
  payload.setToken(pntDeleteToken.Text);
  payload.setAplicativoIdpk(pntDeleteAplicativoIdpk.Text);

  response := sdk.PushNotificationToken.Delete(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button44Click(Sender: TObject);
var response : IResponseTemplateUsuarioTipoGet;
begin
  response := sdk.Usuario.Tipos;
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button45Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoBoletoGet;
    payload : IFinanceiroMovimentoBoletoGet;
begin
  payload := TFinanceiroMovimentoBoletoGet.new;
  payload.setIdpk(edtBoletoIdpk.Text);
  payload.setEmpresaIdpk(edtBoletoEmpresaIdpk.Text);
  payload.setFilialIdpk(edtBoletoFilialIdpk.Text);
  payload.setFields('');
  payload.setWhere('');
  payload.setOrderBy('');
  payload.setRegistroInicial('');
  payload.setQtdeRegistros('');
  payload.setTotalRegistros(true);
  payload.setFinanceiroMovimentoIdpk('');
  payload.setFinanceiroContaIdpk('');
  payload.setStatus('');
  payload.setUsuarioIdpk('');
  payload.setDescricao('');
  payload.setPagamento('', '');
  payload.setDataCriacao('', '');

  response := sdk.FinanceiroMovimento.Boleto.get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button46Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoBoletoPost;
    payload : IFinanceiroMovimentoBoletoPost;
    boleto : IBoleto;
begin
  boleto := TBoleto.new;
  boleto.setEmpresaIdpk(edtBPEmpresaIdpk.Text);
  boleto.setFilialIdpk(edtBPFilialIdpk.Text);
  boleto.setDescricao('Descrição do boleto');

  //Sacado
  boleto.setSacadoNome('Cliente teste');
  boleto.setSacadoCnpjCpf('454.258.600-64');
  boleto.setSacadoEndereco('Rua teste');
  boleto.setSacadoEnderecoNumero('123');
  boleto.setSacadoBairro('Centro');
  boleto.setSacadoCep('95980000');
  boleto.setSacadoCidade('Anta Gorda');
  boleto.setSacadoUf('RS');

  //Informações ref a cobrança
  boleto.setVencimento(IncMonth(date, 1));
  boleto.setValor(15);
  boleto.setJurosMensal(1);
  boleto.setMulta(5);


  payload := TFinanceiroMovimentoBoletoPost.new;
  payload.setEmpresaIdpk(edtBPEmpresaIdpk.Text);
  payload.setFilialIdpk(edtBPFilialIdpk.Text);
  payload.setFinanceiroMovimentoIdpk(edtPixIPFinanceiroMovimentoIdpk.Text);
  payload.addFinanceiroMovimentoBoleto(boleto);

  response := sdk.FinanceiroMovimento.Boleto.Post(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button47Click(Sender: TObject);
var response : IResponseFinanceiroMovimentoBoletoDelete;
    boleto : IFinanceiroMovimentoBoletoDelete;
begin
  boleto := TFinanceiroMovimentoBoletoDelete.new;
  boleto.setIdpk(edtBDIdpk.Text);
  boleto.setEmpresaIdpk(edtBDEmpresaIdpk.Text);
  boleto.setFilialIdpk(edtBDFilialIdpk.Text);
  boleto.setFinanceiroMovimentoIdpk(edtBDFinanceiroMovimentoIdpk.Text);

  response := sdk.FinanceiroMovimento.Boleto.Delete(boleto);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var response : IResponseEmpresaGet;
    payload : IEmpresaGet;
begin
  payload := TEmpresaGet.new;
  payload.setEmpresaIdpk(edtEmpresaPegarIdpk.Text)
    .setFields(edtEmpresaPegarFields.Text)
    .setWhere(edtEmpresaPegarWhere.Text)
    .setOrderBy(edtEmpresaPegarOrderBy.Text)
    .setRegistroInicial(edtEmpresaPegarRegistroInicial.Text)
    .setQtdeRegistros(edtEmpresaPegarQtdeRegistros.Text)
    .setTotalRegistros(edtEmpresaPegarTotalRegistros.Text = 'S');

  response := sdk.Empresa.Get(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
var response : IResponseEmpresaPutLogotipo;
    payload : IEmpresaLogotipo;
begin
  payload := TEmpresaLogotipo.new;
  payload.setEmpresaIdpk(edtEmpresaLogotipoIdpk.Text);
  payload.setIdpk(edtEmpresaLogotipoIdpk.Text);
  payload.setImagem(edtEmpresaLogotipo.Text);

  response := sdk.Empresa.PutLogotipo(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
var response : IResponseEmpresaPutCertificado;
    payload : IEmpresaCertificado;
begin
  payload := TEmpresaCertificado.new;
  payload.setIdpk(edtCertEmpresaIdpk.Text);
  payload.setEmpresaIdpk(edtCertEmpresaIdpk.Text);
  payload.setCertificado(edtCertArquivo.Text);
  payload.setCertificadoSenha(edtCertSenha.Text);

  response := sdk.Empresa.PutCertificado(payload);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
var response : IResponseEmpresaDelete;
begin
  response := sdk.Empresa.Delete(edtEmpExcCodigo.Text);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
var response : IResponseEmpresaPost;
    payloadPost : IEmpresaPost;
begin
  payloadPost := TEmpresaPost.new;
  payloadPost.setSistemaIdpk(edtEmpSistemaIdpk.Text);
  payloadPost.setRamoAtividadeIdpk(edtEmpRamoAtividadeIdpk.Text);
  payloadPost.setCaptacao(cbEmpCaptacao.Items[cbEmpCaptacao.ItemIndex]);
  payloadPost.setChaveCadastro(edtEmpChaveCadastro.Text);
  payloadPost.AddUsuario(TEmpresaUsuario.new
    .setNome(edtEmpUsuario.Text)
    .setEmail(edtEmpEmail.Text)
    .setSenha(edtEmpSenha.Text)
  );

  response := sdk.Empresa.Post(payloadPost);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.Button9Click(Sender: TObject);
var response : IResponseEmpresaPut;
    payload : TJSONObject;
    payloadPut : IEmpresaPut;
begin
  payload := TJSONObject(TJSONObject.ParseJSONValue(memEmpPutPayload.Lines.Text));
  if (payload = nil) then
    raise Exception.Create('Desculpe, payload montado é inválido.');

  payloadPut := TEmpresaPut.new;
  payloadPut.setEmpresaIdpk(edtEmpEmpresaIdpk.Text);
  payloadPut.setPayload(payload);

  response := sdk.Empresa.Put(payloadPut);
  exibirMensagem(memResponse, response);
end;

procedure TFrmPrincipal.CommunicationError(const Response: IResponse; StatusCode: integer; StatusMessage: string);
begin
  memErro.Lines.Text := StatusCode.ToString +' - '+ StatusMessage;
  if (assigned(response)) then
    memErro.Lines.Text := memErro.Lines.Text +sLineBreak+sLineBreak+ response.GetResponseData;

  tcPrincipal.ActiveTab := tbErro;
end;

procedure TFrmPrincipal.btnLogofClick(Sender: TObject);
var response : IResponseLogof;
begin
  if (sdk.Login.Token = '') then
    btnRenovar.Enabled := false;

  response := sdk.Login.Logof;
  exibirMensagem(memLogin, response);
end;

procedure TFrmPrincipal.exibirMensagem(memo: TMemo; response: IResponse);
var obj : TJSONObject;
    arr : TJSONArray;
    status : string;
begin
  if (memo = nil) then
    exit;

  memo.Lines.Clear;
  if (response = nil) then
  begin
    memo.Lines.Text := 'Retorno da API não recebido.';
    exit;
  end;

  status := '';
  if (response.GetResponse <> nil) then
    status := response.GetResponse.StatusCode.ToString +' - '+ response.GetResponse.StatusText +
      sLineBreak+sLineBreak;

  if (copy(response.GetResponseData, 1, 1) = '{') then
  begin
    obj := TJSONObject(TJSONObject.ParseJSONValue(response.GetResponseData));
    if (obj <> nil) then
    begin
      memo.Lines.Text := status + obj.Format();
      MyFreeAndNil(obj);
    end;
  end
  else
  begin
    arr := TJSONArray(TJSONObject.ParseJSONValue(response.GetResponseData));
    if (arr <> nil) then
    begin
      memo.Lines.Text := status + arr.Format();
      MyFreeAndNil(arr);
    end;
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MyFreeAndNil(sdk);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  sdk := TMercurioApi.Create(TMercurioAmbiente.amProducao);
  sdk.OnResponseError := CommunicationError;
  sdk.OnInternalError := InternalError;

  txApi.Text := 'API  ->  VERSION SDK ('+ sdk.VersionSDK +')';
end;

procedure TFrmPrincipal.InternalError(const Sender: TObject; Error: string);
begin
  if (Error = 'Para utilizar este recurso você precisa estar autenticado na API.') then
  begin
    tcPrincipal.ActiveTab := TabItem1;
    showMessage(Error);
    exit;
  end;

  memErro.Lines.Text := Error;
  tcPrincipal.ActiveTab := tbErro;
end;

procedure TFrmPrincipal.rbHomologacaoChange(Sender: TObject);
var x : integer;
begin
  if (rbHomologacao.IsChecked) then
  begin
    sdk.Ambiente := TMercurioAmbiente.amSandbox;

    self.Caption := 'API (SANDBOX)';
    self.Fill.Color := TAlphaColorRec.Red;
    for x := 0 to FrmPrincipal.ComponentCount - 1 do
    begin
      if (FrmPrincipal.Components[x] is TText) then
        TText(FrmPrincipal.Components[x]).TextSettings.FontColor := TAlphaColorRec.red
      else if (FrmPrincipal.Components[x] is TGroupBox) then
        TGroupBox(FrmPrincipal.Components[x]).TextSettings.FontColor := TAlphaColorRec.red;
    end;
  end
  else
  begin
    sdk.Ambiente := TMercurioAmbiente.amProducao;

    self.Caption := 'API (PRODUÇÃO)';
    self.Fill.Color := $FF00ACFA;
    for x := 0 to FrmPrincipal.ComponentCount - 1 do
    begin
      if (FrmPrincipal.Components[x] is TText) then
        TText(FrmPrincipal.Components[x]).TextSettings.FontColor := $FF00ACFA
      else if (FrmPrincipal.Components[x] is TGroupBox) then
        TGroupBox(FrmPrincipal.Components[x]).TextSettings.FontColor := $FF00ACFA;
    end;
  end;
end;

end.
