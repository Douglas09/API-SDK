unit mercurio.api.classes;

interface

uses json, mercurio.api.communication, mercurio.api.functions;

type
  /// <summary> Indica o tipo de ambiente que está sendo utilizado </summary>
  TMercurioAmbiente = (amProducao, amSandbox);

  /// <summary> Caso de algum erro durante a comucaniçaõ com a api da JUNO, este evento é disparado </summary>
  TOnCommunicationError = procedure(const Response : IResponse; StatusCode : integer; StatusMessage : string) of object;
  /// <summary> Caso de algum erro internamente nas classes, este evento é disparado </summary>
  TOnInternalError = procedure(const Sender : TObject; Error : string) of object;

  /// <summary> Email </summary>
  IMercurioEmail = interface
    ['{54F693D2-B9E4-493F-B4B3-D5B53716A12B}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Email cadastrado </summary>
    function setEmail(const value : string) : IMercurioEmail;
    /// <summary> Email cadastrado </summary>
    function getEmail : string;
    /// <summary> Descrição do email cadastrado </summary>
    function setDescricao(const value : string) : IMercurioEmail;
    /// <summary> Descrição do email cadastrado </summary>
    function getDescricao : string;
    /// <summary> Caso este email for o principal </summary>
    function setGeral(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email for o principal </summary>
    function getGeral : boolean;
    /// <summary> Caso este email for comercial </summary>
    function setComercial(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email for comercial </summary>
    function getComercial : boolean;
    /// <summary> Caso este email será utilizado para envio de documentos financeiros </summary>
    function setFinanceiro(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email será utilizado para envio de documentos financeiros </summary>
    function getFinanceiro : boolean;
    /// <summary> Caso este email será utilizado para envio dos documentos fiscais </summary>
    function setDocumentoFiscal(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email será utilizado para envio dos documentos fiscais </summary>
    function getDocumentoFiscal : boolean;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Email </summary>
  TMercurioEmail = class(TInterfacedObject, IMercurioEmail)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FEmail : string;
    FDescricao : string;
    FGeral : boolean;
    FComercial : boolean;
    FFinanceiro : boolean;
    FDocumentoFiscal : boolean;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IMercurioEmail;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioEmail;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Email cadastrado </summary>
    function setEmail(const value : string) : IMercurioEmail;
    /// <summary> Email cadastrado </summary>
    function getEmail : string;
    /// <summary> Descrição do email cadastrado </summary>
    function setDescricao(const value : string) : IMercurioEmail;
    /// <summary> Descrição do email cadastrado </summary>
    function getDescricao : string;
    /// <summary> Caso este email for o principal </summary>
    function setGeral(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email for o principal </summary>
    function getGeral : boolean;
    /// <summary> Caso este email for comercial </summary>
    function setComercial(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email for comercial </summary>
    function getComercial : boolean;
    /// <summary> Caso este email será utilizado para envio de documentos financeiros </summary>
    function setFinanceiro(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email será utilizado para envio de documentos financeiros </summary>
    function getFinanceiro : boolean;
    /// <summary> Caso este email será utilizado para envio dos documentos fiscais </summary>
    function setDocumentoFiscal(const value : boolean) : IMercurioEmail;
    /// <summary> Caso este email será utilizado para envio dos documentos fiscais </summary>
    function getDocumentoFiscal : boolean;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Telefone </summary>
  IMercurioTelefone = interface
    ['{4DE57912-613F-4354-99E8-A615DAB9FA00}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Descrição do telefone cadastrado </summary>
    function setDescricao(const value : string) : IMercurioTelefone;
    /// <summary> Descrição do telefone cadastrado </summary>
    function getDescricao : string;
    /// <summary> Telefone cadastrado </summary>
    function setTelefone(const value : string) : IMercurioTelefone;
    /// <summary> Telefone cadastrado </summary>
    function getTelefone : string;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Telefone </summary>
  TMercurioTelefone = class(TInterfacedObject, IMercurioTelefone)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FDescricao : string;
    FTelefone : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IMercurioTelefone;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioTelefone;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Descrição do telefone cadastrado </summary>
    function setDescricao(const value : string) : IMercurioTelefone;
    /// <summary> Descrição do telefone cadastrado </summary>
    function getDescricao : string;
    /// <summary> Telefone cadastrado </summary>
    function setTelefone(const value : string) : IMercurioTelefone;
    /// <summary> Telefone cadastrado </summary>
    function getTelefone : string;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Endereço </summary>
  IMercurioEndereco = interface
    ['{6348F879-BB73-4308-BA6A-C8DF3024969D}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setCidadeIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getCidadeIdpk : string;
    /// <summary> Descrição do endereço </summary>
    function setDescricao(const value : string) : IMercurioEndereco;
    /// <summary> Descrição do endereço </summary>
    function getDescricao : string;
    /// <summary> endereço </summary>
    function setLogradouro(const value : string) : IMercurioEndereco;
    /// <summary> endereço </summary>
    function getLogradouro : string;
    /// <summary> Número do endereço </summary>
    function setNumero(const value : string) : IMercurioEndereco;
    /// <summary> Número do endereço </summary>
    function getNumero : string;
    /// <summary> Número do endereço </summary>
    function setComplemento(const value : string) : IMercurioEndereco;
    /// <summary> Complemento do endereço </summary>
    function getComplemento : string;
    /// <summary> Bairro </summary>
    function setBairro(const value : string) : IMercurioEndereco;
    /// <summary> Bairro </summary>
    function getBairro : string;
    /// <summary> CEP do endereço </summary>
    function setCEP(const value : string) : IMercurioEndereco;
    /// <summary> CEP do endereço </summary>
    function getCEP : string;
    /// <summary> Informa se é o endereço principal (1 = sim / 2 = não) </summary>
    function setTipoGeral(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se é o endereço principal (1 = sim / 2 = não) </summary>
    function getTipoGeral : boolean;
    /// <summary> Informa se este endereço é utilizado para entrega ou não </summary>
    function setTipoEntrega(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se este endereço é utilizado para entrega ou não </summary>
    function getTipoEntrega : boolean;
    /// <summary> Informa se este endereço é utilizado para correspondência </summary>
    function setTipoCorrespondencia(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se este endereço é utilizado para correspondência </summary>
    function getTipoCorrespondencia : boolean;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Endereço </summary>
  TMercurioEndereco = class(TInterfacedObject, IMercurioEndereco)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FCidadeIdpk : string;
    FDescricao : string;
    FLogradouro : string;
    FNumero : string;
    FComplemento : string;
    FBairro : string;
    FCEP : string;
    FTipoGeral : boolean;
    FTipoEntrega : boolean;
    FTipoCorrespondencia : boolean;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IMercurioEndereco;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function setCidadeIdpk(const value : string) : IMercurioEndereco;
    /// <summary> Código idpk do cadastro da pessoa </summary>
    function getCidadeIdpk : string;
    /// <summary> Descrição do endereço </summary>
    function setDescricao(const value : string) : IMercurioEndereco;
    /// <summary> Descrição do endereço </summary>
    function getDescricao : string;
    /// <summary> endereço </summary>
    function setLogradouro(const value : string) : IMercurioEndereco;
    /// <summary> endereço </summary>
    function getLogradouro : string;
    /// <summary> Número do endereço </summary>
    function setNumero(const value : string) : IMercurioEndereco;
    /// <summary> Número do endereço </summary>
    function getNumero : string;
    /// <summary> Número do endereço </summary>
    function setComplemento(const value : string) : IMercurioEndereco;
    /// <summary> Complemento do endereço </summary>
    function getComplemento : string;
    /// <summary> Bairro </summary>
    function setBairro(const value : string) : IMercurioEndereco;
    /// <summary> Bairro </summary>
    function getBairro : string;
    /// <summary> CEP do endereço </summary>
    function setCEP(const value : string) : IMercurioEndereco;
    /// <summary> CEP do endereço </summary>
    function getCEP : string;
    /// <summary> Informa se é o endereço principal (1 = sim / 2 = não) </summary>
    function setTipoGeral(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se é o endereço principal (1 = sim / 2 = não) </summary>
    function getTipoGeral : boolean;
    /// <summary> Informa se este endereço é utilizado para entrega ou não </summary>
    function setTipoEntrega(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se este endereço é utilizado para entrega ou não </summary>
    function getTipoEntrega : boolean;
    /// <summary> Informa se este endereço é utilizado para correspondência </summary>
    function setTipoCorrespondencia(const value : boolean) : IMercurioEndereco;
    /// <summary> Informa se este endereço é utilizado para correspondência </summary>
    function getTipoCorrespondencia : boolean;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Pessoa Foto </summary>
  IMercurioPessoaFoto = interface
    ['{CEDAB6A5-1DE4-4061-8B77-70FC7FE4247E}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Caminho URL da imagem </summary>
    function setFotoPath(const value : string) : IMercurioPessoaFoto;
    /// <summary> Caminho URL da imagem </summary>
    function getFotoPath : string;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Pessoa Foto </summary>
  TMercurioPessoaFoto = class(TInterfacedObject, IMercurioPessoaFoto)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FPessoaIdpk : string;
    FFotoPath : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IMercurioPessoaFoto;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Código único do cadastro da pessoa </summary>
    function setPessoaIdpk(const value : string) : IMercurioPessoaFoto;
    /// <summary> Código único do cadastro da pessoa </summary>
    function getPessoaIdpk : string;
    /// <summary> Caminho URL da imagem </summary>
    function setFotoPath(const value : string) : IMercurioPessoaFoto;
    /// <summary> Caminho URL da imagem </summary>
    function getFotoPath : string;
    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Pessoa </summary>
  IMercurioPessoa = interface
    ['{18D894BF-1A96-4260-B38E-63F6047A3B58}']
    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Tipo de pessoa (F / J) </summary>
    function setTipoPessoa(const value : string) : IMercurioPessoa;
    /// <summary> Tipo de pessoa (F / J) </summary>
    function getTipoPessoa : string;
    /// <summary> Nome da pessoa / Razão Social </summary>
    function setNomeRazaoSocial(const value : string) : IMercurioPessoa;
    /// <summary> Nome da pessoa / Razão Social </summary>
    function getNomeRazaoSocial : string;
    /// <summary> Apelido / Fantasia </summary>
    function setNomeFantasia(const value : string) : IMercurioPessoa;
    /// <summary> Apelido / Fantasia </summary>
    function getNomeFantasia : string;
    /// <summary> Documento CPF/ CNPJ </summary>
    function setCnpjCpf(const value : string) : IMercurioPessoa;
    /// <summary> Documento CPF/ CNPJ </summary>
    function getCnpjCpf : string;
    /// <summary> Documento IE / RG </summary>
    function setIeRg(const value : string) : IMercurioPessoa;
    /// <summary> Documento IE / RG </summary>
    function getIeRg : string;
    /// <summary> Documento IM = Inscrição municipal </summary>
    function setIM(const value : string) : IMercurioPessoa;
    /// <summary> Documento IM = Inscrição municipal </summary>
    function getIM : string;
    /// <summary> Órgão emissor do RG </summary>
    function setRGOrgao(const value : string) : IMercurioPessoa;
    /// <summary> Órgão emissor do RG </summary>
    function getRGOrgao : string;
    /// <summary> UF de emissão do RG </summary>
    function setRGEstado(const value : string) : IMercurioPessoa;
    /// <summary> UF de emissão do RG </summary>
    function getRGEstado : string;
    /// <summary> Data de emissão do RG </summary>
    function setRGEmissao(const value : TDate) : IMercurioPessoa;
    /// <summary> Data de emissão do RG </summary>
    function getRGEmissao : TDate;
    /// <summary> Código CNAE </summary>
    function setCNAE(const value : string) : IMercurioPessoa;
    /// <summary> Código CNAE </summary>
    function getCNAE : string;
    /// <summary> Pessoa responsável pela empresa (caso for CNPJ) </summary>
    function setResponsavel(const value : string) : IMercurioPessoa;
    /// <summary> Pessoa responsável pela empresa (caso for CNPJ) </summary>
    function getResponsavel : string;
    /// <summary> Carteira nacional de habilitação </summary>
    function setCNH(const value : string) : IMercurioPessoa;
    /// <summary> Carteira nacional de habilitação </summary>
    function getCNH : string;
    /// <summary> Validade da carteira nacional de habilitação </summary>
    function setCNHValidade(const value : TDate) : IMercurioPessoa;
    /// <summary> Validade da carteira nacional de habilitação </summary>
    function getCNHValidade : TDate;
    /// <summary> CPF = Data de nascimento / CNPJ = Data de abertura da empresa </summary>
    function setNascimentoAbertura(const value : TDate) : IMercurioPessoa;
    /// <summary> CPF = Data de nascimento / CNPJ = Data de abertura da empresa </summary>
    function getNascimentoAbertura : TDate;
    /// <summary> Documento estrangeiro </summary>
    function setDocumentoEstrangeiro(const value : string) : IMercurioPessoa;
    /// <summary> Documento estrangeiro </summary>
    function getDocumentoEstrangeiro : string;
    /// <summary> Informa o nome da mae/pai para pessoa física </summary>
    function setFiliacao(const value : string) : IMercurioPessoa;
    /// <summary> Informa o nome da mae/pai para pessoa física </summary>
    function getFiliacao : string;
    /// <summary> Estado civil em caso de pessoa física </summary>
    function setEstadoCivil(const value : string) : IMercurioPessoa;
    /// <summary> Estado civil em caso de pessoa física </summary>
    function getEstadoCivil : string;
    /// <summary> Nome do marido/esposa para pessoa física </summary>
    function setConjuge(const value : string) : IMercurioPessoa;
    /// <summary> Nome do marido/esposa para pessoa física </summary>
    function getConjuge : string;
    /// <summary> Tipo do Sexo: | M = Masculino | F = Feminino | O = Outro | </summary>
    function setSexo(const value : string) : IMercurioPessoa;
    /// <summary> Tipo do Sexo: | M = Masculino | F = Feminino | O = Outro | </summary>
    function getSexo : string;
    /// <summary> Observações do cadastro </summary>
    function setObservacao(const value : string) : IMercurioPessoa;
    /// <summary> Observações do cadastro </summary>
    function getObservacao : string;
    /// <summary> Adiciona um novo e-mail </summary>
    function addEmail(const value : IMercurioEmail) : IMercurioPessoa;
    /// <summary> Lista todos e-mails adicionados </summary>
    function getEmails : TJSONArray;
    /// <summary> Adiciona um novo endereço </summary>
    function addEndereco(const value : IMercurioEndereco) : IMercurioPessoa;
    /// <summary> Lista todos endereços adicionados </summary>
    function getEnderecos : TJSONArray;
    /// <summary> Adiciona um novo telefone </summary>
    function addTelefone(const value : IMercurioTelefone) : IMercurioPessoa;
    /// <summary> Lista todos telefones adicionados </summary>
    function getTelefones : TJSONArray;
    /// <summary> Adiciona uma nova foto </summary>
    function addFoto(const value : IMercurioPessoaFoto) : IMercurioPessoa;
    /// <summary> Lista todas as fotos adicionadas </summary>
    function getFotos : TJSONArray;

    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  /// <summary> Pessoa </summary>
  TMercurioPessoa = class(TInterfacedObject, IMercurioPessoa)
  private
    FIdpk : string;
    FEmpresaIdpk : string;
    FFilialIdpk : string;
    FTipoPessoa : string;
    FNomeRazaoSocial : string;
    FNomeFantasia : string;
    FCnpjCpf : string;
    FIeRg : string;
    FIM : string;
    FRGOrgao : string;
    FRGEstado : string;
    FRGEmissao : TDate;
    FCNAE : string;
    FResponsavel : string;
    FCNH : string;
    FCNHValidade : TDate;
    FNascimentoAbertura : TDate;
    FDocumentoEstrangeiro : string;
    FFiliacao : string;
    FEstadoCivil : string;
    FConjuge : string;
    FSexo : string;
    FObservacao : string;
    FEndereco : TJSONArray;
    FTelefone : TJSONArray;
    FEmail : TJSONArray;
    FFoto : TJSONArray;
  public
    constructor Create;
    destructor Destroy; override;
    class function new : IMercurioPessoa;

    /// <summary> Código único do registro </summary>
    function setIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único do registro </summary>
    function getIdpk : string;
    /// <summary> Código único da empresa </summary>
    function setEmpresaIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único da empresa </summary>
    function getEmpresaIdpk : string;
    /// <summary> Código único da filial </summary>
    function setFilialIdpk(const value : string) : IMercurioPessoa;
    /// <summary> Código único da filial </summary>
    function getFilialIdpk : string;
    /// <summary> Tipo de pessoa (F / J) </summary>
    function setTipoPessoa(const value : string) : IMercurioPessoa;
    /// <summary> Tipo de pessoa (F / J) </summary>
    function getTipoPessoa : string;
    /// <summary> Nome da pessoa / Razão Social </summary>
    function setNomeRazaoSocial(const value : string) : IMercurioPessoa;
    /// <summary> Nome da pessoa / Razão Social </summary>
    function getNomeRazaoSocial : string;
    /// <summary> Apelido / Fantasia </summary>
    function setNomeFantasia(const value : string) : IMercurioPessoa;
    /// <summary> Apelido / Fantasia </summary>
    function getNomeFantasia : string;
    /// <summary> Documento CPF/ CNPJ </summary>
    function setCnpjCpf(const value : string) : IMercurioPessoa;
    /// <summary> Documento CPF/ CNPJ </summary>
    function getCnpjCpf : string;
    /// <summary> Documento IE / RG </summary>
    function setIeRg(const value : string) : IMercurioPessoa;
    /// <summary> Documento IE / RG </summary>
    function getIeRg : string;
    /// <summary> Documento IM = Inscrição municipal </summary>
    function setIM(const value : string) : IMercurioPessoa;
    /// <summary> Documento IM = Inscrição municipal </summary>
    function getIM : string;
    /// <summary> Órgão emissor do RG </summary>
    function setRGOrgao(const value : string) : IMercurioPessoa;
    /// <summary> Órgão emissor do RG </summary>
    function getRGOrgao : string;
    /// <summary> UF de emissão do RG </summary>
    function setRGEstado(const value : string) : IMercurioPessoa;
    /// <summary> UF de emissão do RG </summary>
    function getRGEstado : string;
    /// <summary> Data de emissão do RG </summary>
    function setRGEmissao(const value : TDate) : IMercurioPessoa;
    /// <summary> Data de emissão do RG </summary>
    function getRGEmissao : TDate;
    /// <summary> Código CNAE </summary>
    function setCNAE(const value : string) : IMercurioPessoa;
    /// <summary> Código CNAE </summary>
    function getCNAE : string;
    /// <summary> Pessoa responsável pela empresa (caso for CNPJ) </summary>
    function setResponsavel(const value : string) : IMercurioPessoa;
    /// <summary> Pessoa responsável pela empresa (caso for CNPJ) </summary>
    function getResponsavel : string;
    /// <summary> Carteira nacional de habilitação </summary>
    function setCNH(const value : string) : IMercurioPessoa;
    /// <summary> Carteira nacional de habilitação </summary>
    function getCNH : string;
    /// <summary> Validade da carteira nacional de habilitação </summary>
    function setCNHValidade(const value : TDate) : IMercurioPessoa;
    /// <summary> Validade da carteira nacional de habilitação </summary>
    function getCNHValidade : TDate;
    /// <summary> CPF = Data de nascimento / CNPJ = Data de abertura da empresa </summary>
    function setNascimentoAbertura(const value : TDate) : IMercurioPessoa;
    /// <summary> CPF = Data de nascimento / CNPJ = Data de abertura da empresa </summary>
    function getNascimentoAbertura : TDate;
    /// <summary> Documento estrangeiro </summary>
    function setDocumentoEstrangeiro(const value : string) : IMercurioPessoa;
    /// <summary> Documento estrangeiro </summary>
    function getDocumentoEstrangeiro : string;
    /// <summary> Informa o nome da mae/pai para pessoa física </summary>
    function setFiliacao(const value : string) : IMercurioPessoa;
    /// <summary> Informa o nome da mae/pai para pessoa física </summary>
    function getFiliacao : string;
    /// <summary> Estado civil em caso de pessoa física </summary>
    function setEstadoCivil(const value : string) : IMercurioPessoa;
    /// <summary> Estado civil em caso de pessoa física </summary>
    function getEstadoCivil : string;
    /// <summary> Nome do marido/esposa para pessoa física </summary>
    function setConjuge(const value : string) : IMercurioPessoa;
    /// <summary> Nome do marido/esposa para pessoa física </summary>
    function getConjuge : string;
    /// <summary> Tipo do Sexo: | M = Masculino | F = Feminino | O = Outro | </summary>
    function setSexo(const value : string) : IMercurioPessoa;
    /// <summary> Tipo do Sexo: | M = Masculino | F = Feminino | O = Outro | </summary>
    function getSexo : string;
    /// <summary> Observações do cadastro </summary>
    function setObservacao(const value : string) : IMercurioPessoa;
    /// <summary> Observações do cadastro </summary>
    function getObservacao : string;
    /// <summary> Adiciona um novo e-mail </summary>
    function addEmail(const value : IMercurioEmail) : IMercurioPessoa;
    /// <summary> Lista todos e-mails adicionados </summary>
    function getEmails : TJSONArray;
    /// <summary> Adiciona um novo endereço </summary>
    function addEndereco(const value : IMercurioEndereco) : IMercurioPessoa;
    /// <summary> Lista todos endereços adicionados </summary>
    function getEnderecos : TJSONArray;
    /// <summary> Adiciona um novo telefone </summary>
    function addTelefone(const value : IMercurioTelefone) : IMercurioPessoa;
    /// <summary> Lista todos telefones adicionados </summary>
    function getTelefones : TJSONArray;
    /// <summary> Adiciona uma nova foto </summary>
    function addFoto(const value : IMercurioPessoaFoto) : IMercurioPessoa;
    /// <summary> Lista todas as fotos adicionadas </summary>
    function getFotos : TJSONArray;


    /// <summary> Monta o payload </summary>
    function ToJson : TJSONObject;
  end;
  
implementation

uses
  System.SysUtils;

{ TMercurioEmail }

constructor TMercurioEmail.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FPessoaIdpk := '';
  FEmail := '';
  FDescricao := '';
  FGeral := false;
  FComercial := false;
  FFinanceiro := false;
  FDocumentoFiscal := false;
end;

destructor TMercurioEmail.Destroy;
begin

  inherited;
end;

function TMercurioEmail.getComercial: boolean;
begin
  result := FComercial;
end;

function TMercurioEmail.getDescricao: string;
begin
  result := FDescricao;
end;

function TMercurioEmail.getDocumentoFiscal: boolean;
begin
  result := FDocumentoFiscal;
end;

function TMercurioEmail.getEmail: string;
begin
  result := FEmail;
end;

function TMercurioEmail.setEmpresaIdpk(const value: string): IMercurioEmail;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TMercurioEmail.setFilialIdpk(const value: string): IMercurioEmail;
begin
  result := self;
  FFilialIdpk := value;
end;

function TMercurioEmail.getFinanceiro: boolean;
begin
  result := FFinanceiro;
end;

function TMercurioEmail.getGeral: boolean;
begin
  result := FGeral;
end;

function TMercurioEmail.getIdpk: string;
begin
  result := FIdpk;
end;

function TMercurioEmail.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

class function TMercurioEmail.new: IMercurioEmail;
begin
  result := TMercurioEmail.Create;
end;

function TMercurioEmail.setComercial(const value: boolean): IMercurioEmail;
begin
  result := self;
  FComercial := value;
end;

function TMercurioEmail.setDescricao(const value: string): IMercurioEmail;
begin
  result := self;
  FDescricao := value;
end;

function TMercurioEmail.setDocumentoFiscal(const value: boolean): IMercurioEmail;
begin
  result := self;
  FDocumentoFiscal := value;
end;

function TMercurioEmail.setEmail(const value: string): IMercurioEmail;
begin
  result := self;
  FEmail := value;
end;

function TMercurioEmail.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TMercurioEmail.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TMercurioEmail.setFinanceiro(const value: boolean): IMercurioEmail;
begin
  result := self;
  FFinanceiro := value;
end;

function TMercurioEmail.setGeral(const value: boolean): IMercurioEmail;
begin
  result := self;
  FGeral := value;
end;

function TMercurioEmail.setIdpk(const value: string): IMercurioEmail;
begin
  result := self;
  FIdpk := value;
end;

function TMercurioEmail.setPessoaIdpk(const value: string): IMercurioEmail;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TMercurioEmail.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('ema_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('ema_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('ema_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('ema_pessoa_idpk', FPessoaIdpk);
  if (FDescricao <> '') then
    result.AddPair('ema_descricao', FDescricao);
  if (FEmail <> '') then
    result.AddPair('ema_email', FEmail);
  result.AddPair('ema_geral', TJSONNumber.Create(integer(FGeral)));
  result.AddPair('ema_comercial', TJSONNumber.Create(integer(FComercial)));
  result.AddPair('ema_financeiro', TJSONNumber.Create(integer(FFinanceiro)));
  result.AddPair('ema_documentos_fiscais', TJSONNumber.Create(integer(FDocumentoFiscal)));
end;

{ TMercurioTelefone }

constructor TMercurioTelefone.Create;
begin

end;

destructor TMercurioTelefone.Destroy;
begin

  inherited;
end;

function TMercurioTelefone.getDescricao: string;
begin
  result := FDescricao;
end;

function TMercurioTelefone.setEmpresaIdpk(const value: string): IMercurioTelefone;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TMercurioTelefone.setFilialIdpk(const value: string): IMercurioTelefone;
begin
  result := self;
  FFilialIdpk := value;
end;

function TMercurioTelefone.getIdpk: string;
begin
  result := FIdpk;
end;

function TMercurioTelefone.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TMercurioTelefone.getTelefone: string;
begin
  result := FTelefone;
end;

class function TMercurioTelefone.new: IMercurioTelefone;
begin
  result := TMercurioTelefone.Create;
end;

function TMercurioTelefone.setDescricao(const value: string): IMercurioTelefone;
begin
  result := self;
  FDescricao := value;
end;

function TMercurioTelefone.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TMercurioTelefone.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TMercurioTelefone.setIdpk(const value: string): IMercurioTelefone;
begin
  result := self;
  FIdpk := value;
end;

function TMercurioTelefone.setPessoaIdpk(const value: string): IMercurioTelefone;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TMercurioTelefone.setTelefone(const value: string): IMercurioTelefone;
begin
  result := self;
  FTelefone := value;
end;

function TMercurioTelefone.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;
  if (FEmpresaIdpk <> '') then
    result.AddPair('tel_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('tel_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('tel_pessoa_idpk', FPessoaIdpk);
  if (FDescricao <> '') then
    result.AddPair('tel_descricao', FDescricao);
  if (FTelefone <> '') then
    result.AddPair('tel_telefone', FTelefone);
end;

{ TMercurioEndereco }

constructor TMercurioEndereco.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FPessoaIdpk := '';
  FCidadeIdpk := '';
  FDescricao := '';
  FLogradouro := '';
  FNumero := '';
  FComplemento := '';
  FBairro := '';
  FCEP := '';
  FTipoGeral := false;
  FTipoEntrega := false;
  FTipoCorrespondencia := false;
end;

destructor TMercurioEndereco.Destroy;
begin

  inherited;
end;

function TMercurioEndereco.getBairro: string;
begin
  result := FBairro;
end;

function TMercurioEndereco.getCEP: string;
begin
  result := FCEP;
end;

function TMercurioEndereco.getCidadeIdpk: string;
begin
  result := FCidadeIdpk;
end;

function TMercurioEndereco.getComplemento: string;
begin
  result := FComplemento;
end;

function TMercurioEndereco.getDescricao: string;
begin
  result := FDescricao;
end;

function TMercurioEndereco.getEmpresaIdpk(const value: string): IMercurioEndereco;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TMercurioEndereco.getFilialIdpk(const value: string): IMercurioEndereco;
begin
  result := self;
  FFilialIdpk := value;
end;

function TMercurioEndereco.getIdpk: string;
begin
  result := FIdpk;
end;

function TMercurioEndereco.getLogradouro: string;
begin
  result := FLogradouro;
end;

function TMercurioEndereco.getNumero: string;
begin
  result := FNumero;
end;

function TMercurioEndereco.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TMercurioEndereco.getTipoCorrespondencia: boolean;
begin
  result := FTipoCorrespondencia;
end;

function TMercurioEndereco.getTipoEntrega: boolean;
begin
  result := FTipoEntrega;
end;

function TMercurioEndereco.getTipoGeral: boolean;
begin
  result := FTipoGeral;
end;

class function TMercurioEndereco.new: IMercurioEndereco;
begin
  result := TMercurioEndereco.Create;
end;

function TMercurioEndereco.setBairro(const value: string): IMercurioEndereco;
begin
  result := self;
  FBairro := value;
end;

function TMercurioEndereco.setCEP(const value: string): IMercurioEndereco;
begin
  result := self;
  FCEP := value;
end;

function TMercurioEndereco.setCidadeIdpk(const value: string): IMercurioEndereco;
begin
  result := self;
  FCidadeIdpk := value;
end;

function TMercurioEndereco.setComplemento(const value: string): IMercurioEndereco;
begin
  result := self;
  FComplemento := value;
end;

function TMercurioEndereco.setDescricao(const value: string): IMercurioEndereco;
begin
  result := self;
  FDescricao := value;
end;

function TMercurioEndereco.setEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TMercurioEndereco.setFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TMercurioEndereco.setIdpk(const value: string): IMercurioEndereco;
begin
  result := self;
  FIdpk := value;
end;

function TMercurioEndereco.setLogradouro(const value: string): IMercurioEndereco;
begin
  result := self;
  FLogradouro := value;
end;

function TMercurioEndereco.setNumero(const value: string): IMercurioEndereco;
begin
  result := self;
  FNumero := value;
end;

function TMercurioEndereco.setPessoaIdpk(const value: string): IMercurioEndereco;
begin
  result := self;
  FPessoaIdpk := value;
end;

function TMercurioEndereco.setTipoCorrespondencia(const value: boolean): IMercurioEndereco;
begin
  result := self;
  FTipoCorrespondencia := value;
end;

function TMercurioEndereco.setTipoEntrega(const value: boolean): IMercurioEndereco;
begin
  result := self;
  FTipoEntrega := value;
end;

function TMercurioEndereco.setTipoGeral(const value: boolean): IMercurioEndereco;
begin
  result := self;
  FTipoGeral := value;
end;

function TMercurioEndereco.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('end_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('end_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('end_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('end_pessoa_idpk', FPessoaIdpk);
  if (FCidadeIdpk <> '') then
    result.AddPair('end_cidade_idpk', FCidadeIdpk);
  if (FDescricao <> '') then
    result.AddPair('end_descricao', FDescricao);
  if (FLogradouro <> '') then
    result.AddPair('end_logradouro', FLogradouro);
  if (FNumero <> '') then
    result.AddPair('end_numero', FNumero);
  if (FComplemento <> '') then
    result.AddPair('end_complemento', FComplemento);
  if (FBairro <> '') then
    result.AddPair('end_bairro', FBairro);
  if (FCEP <> '') then
    result.AddPair('end_cep', FCEP);
  result.AddPair('end_tipogeral', TJSONNumber.Create(integer(FTipoGeral)));
  result.AddPair('end_tipoentrega', TJSONNumber.Create(integer(FTipoEntrega)));
  result.AddPair('end_tipocorrespondencia', TJSONNumber.Create(integer(FTipoCorrespondencia)));
end;

{ TMercurioPessoaFoto }

constructor TMercurioPessoaFoto.Create;
begin

end;

destructor TMercurioPessoaFoto.Destroy;
begin

  inherited;
end;

function TMercurioPessoaFoto.setEmpresaIdpk(const value: string): IMercurioPessoaFoto;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TMercurioPessoaFoto.setFilialIdpk(const value: string): IMercurioPessoaFoto;
begin
  result := self;
  FFilialIdpk := value;
end;

function TMercurioPessoaFoto.setFotoPath(const value: string): IMercurioPessoaFoto;
begin
  result := self;
  FFotoPath := value;
end;

function TMercurioPessoaFoto.getIdpk: string;
begin
  result := FIdpk;
end;

function TMercurioPessoaFoto.setPessoaIdpk(const value: string): IMercurioPessoaFoto;
begin
  result := self;
  FPessoaIdpk := value;
end;

class function TMercurioPessoaFoto.new: IMercurioPessoaFoto;
begin
  result := TMercurioPessoaFoto.Create;
end;

function TMercurioPessoaFoto.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TMercurioPessoaFoto.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TMercurioPessoaFoto.getFotoPath: string;
begin
  result := FFotoPath;
end;

function TMercurioPessoaFoto.setIdpk(const value: string): IMercurioPessoaFoto;
begin
  result := self;
  FIdpk := value;
end;

function TMercurioPessoaFoto.getPessoaIdpk: string;
begin
  result := FPessoaIdpk;
end;

function TMercurioPessoaFoto.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('pfo_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('pfo_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('pfo_filial_idpk', FFilialIdpk);
  if (FPessoaIdpk <> '') then
    result.AddPair('pfo_pessoa_idpk', FPessoaIdpk);
  if (FFotoPath <> '') then
    result.AddPair('pfo_foto_path', FFotoPath);
end;

{ TMercurioPessoa }

function TMercurioPessoa.addEmail(const value: IMercurioEmail): IMercurioPessoa;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  FEmail.Add(value.ToJson);
end;

function TMercurioPessoa.addEndereco(const value : IMercurioEndereco) : IMercurioPessoa;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  FEndereco.Add(value.ToJson);
end;

function TMercurioPessoa.addFoto(const value: IMercurioPessoaFoto): IMercurioPessoa;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  FFoto.Add(value.ToJson);
end;

function TMercurioPessoa.addTelefone(const value: IMercurioTelefone): IMercurioPessoa;
begin
  result := self;
  if not (assigned(value)) then
    exit;

  FTelefone.Add(value.ToJson);
end;

constructor TMercurioPessoa.Create;
begin
  FIdpk := '';
  FEmpresaIdpk := '';
  FFilialIdpk := '';
  FTipoPessoa := '';
  FNomeRazaoSocial := '';
  FNomeFantasia := '';
  FCnpjCpf := '';
  FIeRg := '';
  FIM := '';
  FRGOrgao := '';
  FRGEstado := '';
  FCNAE := '';
  FResponsavel := '';
  FCNH := '';
  FDocumentoEstrangeiro := '';
  FFiliacao := '';
  FEstadoCivil := '';
  FConjuge := '';
  FSexo := '';
  FObservacao := '';
  FRGEmissao := 0;
  FCNHValidade := 0;
  FNascimentoAbertura := 0;

  FEndereco := TJSONArray.Create;
  FTelefone := TJSONArray.Create;
  FEmail := TJSONArray.Create;
  FFoto := TJSONArray.Create;
end;

destructor TMercurioPessoa.Destroy;
begin
  MyFreeAndNil(FEndereco);
  MyFreeAndNil(FTelefone);
  MyFreeAndNil(FEmail);
  MyFreeAndNil(FFoto);

  inherited;
end;

function TMercurioPessoa.setCNAE(const value: string): IMercurioPessoa;
begin
  result := self;
  FCNAE := value;
end;

function TMercurioPessoa.setCNH(const value: string): IMercurioPessoa;
begin
  result := self;
  FCNH := value;
end;

function TMercurioPessoa.setCNHValidade(const value: TDate): IMercurioPessoa;
begin
  result := self;
  FCNHValidade := value;
end;

function TMercurioPessoa.setCnpjCpf(const value: string): IMercurioPessoa;
begin
  result := self;
  FCnpjCpf := value;
end;

function TMercurioPessoa.setConjuge(const value: string): IMercurioPessoa;
begin
  result := self;
  FConjuge := value;
end;

function TMercurioPessoa.setDocumentoEstrangeiro(const value: string): IMercurioPessoa;
begin
  result := self;
  FDocumentoEstrangeiro := value;
end;

function TMercurioPessoa.setEmpresaIdpk(const value: string): IMercurioPessoa;
begin
  result := self;
  FEmpresaIdpk := value;
end;

function TMercurioPessoa.getEnderecos: TJSONArray;
begin
  result := FEndereco;
end;

function TMercurioPessoa.setEstadoCivil(const value: string): IMercurioPessoa;
begin
  result := self;
  FEstadoCivil := value;
end;

function TMercurioPessoa.setFiliacao(const value: string): IMercurioPessoa;
begin
  result := self;
  FFiliacao := value;
end;

function TMercurioPessoa.setFilialIdpk(const value: string): IMercurioPessoa;
begin
  result := self;
  FFilialIdpk := value;
end;

function TMercurioPessoa.getFotos: TJSONArray;
begin
  result := FFoto;
end;

function TMercurioPessoa.getIdpk: string;
begin
  result := FIdpk;
end;

function TMercurioPessoa.setIeRg(const value: string): IMercurioPessoa;
begin
  result := self;
  FIeRg := value;
end;

function TMercurioPessoa.setIM(const value: string): IMercurioPessoa;
begin
  result := self;
  FIM := value;
end;

function TMercurioPessoa.setNascimentoAbertura(const value: TDate): IMercurioPessoa;
begin
  result := self;
  FNascimentoAbertura := value;
end;

function TMercurioPessoa.setNomeFantasia(const value: string): IMercurioPessoa;
begin
  result := self;
  FNomeFantasia := value;
end;

function TMercurioPessoa.setNomeRazaoSocial(const value: string): IMercurioPessoa;
begin
  result := self;
  FNomeRazaoSocial := value;
end;

function TMercurioPessoa.setObservacao(const value: string): IMercurioPessoa;
begin
  result := self;
  FObservacao := value;
end;

function TMercurioPessoa.setResponsavel(const value: string): IMercurioPessoa;
begin
  result := self;
  FResponsavel := value;
end;

function TMercurioPessoa.setRGEmissao(const value: TDate): IMercurioPessoa;
begin
  result := self;
  FRGEmissao := value;
end;

function TMercurioPessoa.setRGEstado(const value: string): IMercurioPessoa;
begin
  result := self;
  FRGEstado := value;
end;

function TMercurioPessoa.setRGOrgao(const value: string): IMercurioPessoa;
begin
  result := self;
  FRGOrgao := value;
end;

function TMercurioPessoa.setSexo(const value: string): IMercurioPessoa;
begin
  result := self;
  FSexo := value;
end;

function TMercurioPessoa.getTelefones: TJSONArray;
begin
  result := FTelefone;
end;

function TMercurioPessoa.setTipoPessoa(const value: string): IMercurioPessoa;
begin
  result := self;
  FTipoPessoa := value;
end;

class function TMercurioPessoa.new: IMercurioPessoa;
begin
  result := TMercurioPessoa.Create;
end;

function TMercurioPessoa.getCNAE: string;
begin
  result := FCNAE;
end;

function TMercurioPessoa.getCNH: string;
begin
  result := FCNH;
end;

function TMercurioPessoa.getCNHValidade: TDate;
begin
  result := FCNHValidade;
end;

function TMercurioPessoa.getCnpjCpf: string;
begin
  result := FCnpjCpf;
end;

function TMercurioPessoa.getConjuge: string;
begin
  result := FConjuge;
end;

function TMercurioPessoa.getDocumentoEstrangeiro: string;
begin
  result := FDocumentoEstrangeiro;
end;

function TMercurioPessoa.getEmails: TJSONArray;
begin
  result := FEmail;
end;

function TMercurioPessoa.getEmpresaIdpk: string;
begin
  result := FEmpresaIdpk;
end;

function TMercurioPessoa.getEstadoCivil: string;
begin
  result := FEstadoCivil;
end;

function TMercurioPessoa.getFiliacao: string;
begin
  result := FFiliacao;
end;

function TMercurioPessoa.getFilialIdpk: string;
begin
  result := FFilialIdpk;
end;

function TMercurioPessoa.setIdpk(const value: string): IMercurioPessoa;
begin
  result := Self;
  FIdpk := value;
end;

function TMercurioPessoa.getIeRg: string;
begin
  result := FIeRg;
end;

function TMercurioPessoa.getIM: string;
begin
  result := FIM;
end;

function TMercurioPessoa.getNascimentoAbertura: TDate;
begin
  result := FNascimentoAbertura;
end;

function TMercurioPessoa.getNomeFantasia: string;
begin
  result := FNomeFantasia;
end;

function TMercurioPessoa.getNomeRazaoSocial: string;
begin
  result := FNomeRazaoSocial;
end;

function TMercurioPessoa.getObservacao: string;
begin
  result := FObservacao;
end;

function TMercurioPessoa.getResponsavel: string;
begin
  result := FResponsavel;
end;

function TMercurioPessoa.getRGEmissao: TDate;
begin
  result := FRGEmissao;
end;

function TMercurioPessoa.getRGEstado: string;
begin
  result := FRGEstado;
end;

function TMercurioPessoa.getRGOrgao: string;
begin
  result := FRGOrgao;
end;

function TMercurioPessoa.getSexo: string;
begin
  result := FSexo;
end;

function TMercurioPessoa.getTipoPessoa: string;
begin
  result := FTipoPessoa;
end;

function TMercurioPessoa.ToJson: TJSONObject;
begin
  result := TJSONObject.Create;

  if (FIdpk <> '') then
    result.AddPair('pes_idpk', FIdpk);
  if (FEmpresaIdpk <> '') then
    result.AddPair('pes_empresa_idpk', FEmpresaIdpk);
  if (FFilialIdpk <> '') then
    result.AddPair('pes_filial_idpk', FFilialIdpk);
  if (FTipoPessoa <> '') then
    result.AddPair('pes_tipo_pessoa', FTipoPessoa);
  if (FNomeRazaoSocial <> '') then
    result.AddPair('pes_nome_razaosocial', FNomeRazaoSocial);
  if (FNomeFantasia <> '') then
    result.AddPair('pes_nome_fantasia', FNomeFantasia);
  if (FCnpjCpf <> '') then
    result.AddPair('pes_cnpj_cpf', FCnpjCpf);
  if (FIeRg <> '') then
    result.AddPair('pes_ie_rg', FIeRg);
  if (FIM <> '') then
    result.AddPair('pes_im', FIM);
  if (FRGOrgao <> '') then
    result.AddPair('pes_rg_orgao', FRGOrgao);
  if (FRGEstado <> '') then
    result.AddPair('pes_rg_estado', FRGEstado);
  if (FRGEmissao <> 0) then
    result.AddPair('pes_rg_emissao', DateToStr(FRGEmissao));
  if (FResponsavel <> '') then
    result.AddPair('pes_responsavel', FResponsavel);
  if (FCNH <> '') then
    result.AddPair('pes_cnh', FCNH);
  if (FCNHValidade <> 0) then
    result.AddPair('pes_cnh_validade', DateToStr(FCNHValidade));
  if (FNascimentoAbertura <> 0) then
    result.AddPair('pes_data_nascimento_abertura', DateToStr(FNascimentoAbertura));
  if (FDocumentoEstrangeiro <> '') then
    result.AddPair('pes_doc_estrangeiro', FDocumentoEstrangeiro);
  if (FFiliacao <> '') then
    result.AddPair('pes_filiacao', FFiliacao);
  if (FEstadoCivil <> '') then
    result.AddPair('pes_estado_civil', FEstadoCivil);
  if (FConjuge <> '') then
    result.AddPair('pes_conjuge', FConjuge);
  if (FSexo <> '') then
    result.AddPair('pes_sexo', FSexo);
  if (FObservacao <> '') then
    result.AddPair('pes_observacoes', FObservacao);
  if (FCNAE <> '') then
    result.AddPair('pes_cnae', FCNAE);

  if (FEndereco.Count > 0) then
    result.AddPair('endereco', TJSONObject(FEndereco.Clone));
  if (FTelefone.Count > 0) then
    result.AddPair('telefone', TJSONObject(FTelefone.Clone));
  if (FEmail.Count > 0) then
    result.AddPair('email', TJSONObject(FEmail.Clone));
  if (FFoto.Count > 0) then
    result.AddPair('pessoa_foto', TJSONObject(FFoto.Clone));
end;

end.

