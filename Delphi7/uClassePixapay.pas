unit uClassePixapay;

interface

uses
  Classes, IdHTTP, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, uLkJSON, ZConnection, ZDataset, StrUtils, StdCtrls, DB,
  MemDS, VirtualTable, Variants, Dialogs, inifiles, Forms, SysUtils, Windows, Messages, Graphics, Controls, Buttons,
  ExtCtrls;

type
  TMeuRetorno = record
    Lista   : string;
    Retorno : string;
  end;

  IRetornaPix = interface
    ['{C28CBE07-E877-4F4C-A258-6D1127CA945E}']
    procedure SetPixTipo(const    Value: string);
    procedure SetIdpk(const       Value: string);
    procedure SetLinkQrCode(const Value: string);
    procedure SetHash(const       Value: string);
    procedure SetDescricao(const  Value: string);
    procedure SetChave(const      Value: string);
    procedure SetStatus(const     Value: string);
    procedure SetSacadoNome(const Value: string);
    procedure SetValor(const      Value: string);
    procedure SetPgtoData(const   Value: string);

    function getPixTipo    : string;
    function getIdpk       : string;
    function getLinkQrCode : string;
    function getHash       : string;
    function getDescricao  : string;
    function getChave      : string;
    function getStatus     : string;
    function getSacadoNome : string;
    function getValor      : string;
    function getPgtoData   : string;
  end;

  TRetornaPix = class(TInterfacedObject, IRetornaPix)
  private
    FChave      : string;
    FIdpk       : string;
    FDescricao  : string;
    FLinkQrCode : string;
    FHash       : string;
    FPixTipo    : string;
    FStatus     : string;
    FValor      : string;
    FSacadoNome : string;
    FPgtoData   : string;

    procedure SetChave(const      Value: string);
    procedure SetDescricao(const  Value: string);
    procedure SetHash(const       Value: string);
    procedure SetIdpk(const       Value: string);
    procedure SetLinkQrCode(const Value: string);
    procedure SetPixTipo(const    Value: string);
    procedure SetStatus(const     Value: string);
    procedure SetSacadoNome(const Value: string);
    procedure SetValor(const      Value: string);
    procedure SetPgtoData(const   Value: string);

  public
    class function new: IRetornaPix;
    constructor Create;
    destructor Destroy; override;

    property Idpk       : string read FIdpk       write SetIdpk;
    property PixTipo    : string read FPixTipo    write SetPixTipo;
    property LinkQrCode : string read FLinkQrCode write SetLinkQrCode;
    property Hash       : string read FHash       write SetHash;
    property Descricao  : string read FDescricao  write SetDescricao;
    property Chave      : string read FChave      write SetChave;
    property Status     : string read FStatus     write SetStatus;
    property SacadoNome : string read FSacadoNome write SetSacadoNome;
    property Valor      : string read FValor      write SetValor;
    property PgtoData   : string read FPgtoData   write SetPgtoData;

    function getPixTipo    : string;
    function getIdpk       : string;
    function getLinkQrCode : string;
    function getHash       : string;
    function getDescricao  : string;
    function getChave      : string;
    function getStatus     : string;
    function getSacadoNome : string;
    function getValor      : string;
    function getPgtoData   : string;
  end;

  IRetornaPixList = interface
    ['{D486D008-B747-49BA-8C11-0159866728F6}']
    function Adicionar(value: TRetornaPix): IRetornaPixList;
    function getList: TList;
  end;

  TRetornaPixList = class(TInterfacedObject, IRetornaPixList)
  private
    FPixList: TList;
  public
    class function new: IRetornaPixList;
    constructor Create;
    destructor Destroy; override;

    function Adicionar(value: TRetornaPix): IRetornaPixList;
    function getList: TList;
  end;

  IRetornoBoleto = interface
    ['{95B3E7C4-8A93-44DF-864A-B1E83248CB28}']
    procedure SetChave(const      Value: string);
    procedure SetIdpk(const       Value: string);
    procedure SetPDF(const        Value: string);
    procedure SetStatus(const     Value: string);
    procedure SetSacadoNome(const Value: string);
    procedure SetValor(const      Value: string);
    procedure SetPgtoData(const   Value: string);

    function getIdpk       : string;
    function getPdf        : string;
    function getChave      : string;
    function getStatus     : string;
    function getSacadoNome : string;
    function getValor      : string;
    function getPgtoData   : string;
  end;

  TRetornoBoleto = class(TInterfacedObject, IRetornoBoleto)
  private
    FChave      : string;
    FPDF        : string;
    FIdpk       : string;
    FStatus     : string;
    FValor      : string;
    FSacadoNome : string;
    FPgtoData   : string;

    procedure SetChave(const      Value: string);
    procedure SetIdpk(const       Value: string);
    procedure SetPDF(const        Value: string);
    procedure SetStatus(const     Value: string);
    procedure SetSacadoNome(const Value: string);
    procedure SetValor(const      Value: string);
    procedure SetPgtoData(const   Value: string);
  public
    class function new: IRetornoBoleto;
    constructor Create;
    destructor Destroy; override;

    property Idpk       : string read FIdpk       write SetIdpk;
    property PDF        : string read FPDF        write SetPDF;
    property Chave      : string read FChave      write SetChave;
    property Status     : string read FStatus     write SetStatus;
    property SacadoNome : string read FSacadoNome write SetSacadoNome;
    property Valor      : string read FValor      write SetValor;
    property PgtoData   : string read FPgtoData   write SetPgtoData;

    function getIdpk       : string;
    function getPdf        : string;
    function getChave      : string;
    function getStatus     : string;
    function getSacadoNome : string;
    function getValor      : string;
    function getPgtoData   : string;
  end;

  IRetornaBoletoList = interface
    ['{476E4692-17D8-46F4-B0EF-19767AA3ED6F}']
    function Adicionar(value: TRetornoBoleto): IRetornaBoletoList;
    function getList: TList;
  end;

  TRetornaBoletoList = class(TInterfacedObject, IRetornaBoletoList)
  private
    FBoletoList: TList;
  public
    class function new: IRetornaBoletoList;
    constructor Create;
    destructor Destroy; override;
    function Adicionar(value: TRetornoBoleto): IRetornaBoletoList;
    function getList: TList;
  end;

  TPixapay = class
  private
    FUsuario     : string;
    FsistemaIdpk : string;
    FSenha       : string;
    procedure SetSenha(const       Value : string);
    procedure SetsistemaIdpk(const Value : string);
    procedure SetUsuario(const     Value : string);
  public
    constructor Create(usuario, senha, sistemaIdpk: string);
    property sistemaIdpk : string read FsistemaIdpk write SetsistemaIdpk;
    property Usuario     : string read FUsuario     write SetUsuario;
    property Senha       : string read FSenha       write SetSenha;

    function fazerLogin(tipoUrl:integer): string;
    function validaToken(tipoUrl:integer): Boolean;
    function getBoletos(tipoUrl, empresaIdpk, filialIdpk: integer;gravaData:Boolean): IRetornaBoletoList;
    function deletarBoleto(tipoUrl, idpk, empresaIdpk, filialIdpk: integer): string;
    function postBoletos(tipoUrl, empresaIdpk, filialIdpk: integer; sacado_nome, sacado_cnpj_cpf, sacado_endereco,
      sacado_endereco_numero, sacado_endereco_complemento, sacado_bairro, sacado_cep, sacado_cidade, sacado_uf,
      sacado_pais, numero_documento: string; valor: Double; vencimento, referencia, instrucao, desconto_tipo: string; desconto_valor,
      juros_mensal, multa_mensal: Double): IRetornoBoleto;
    function getPixCobranca(tipoUrl, empresaIdpk, filialIdpk: integer; gravaData: Boolean): IRetornaPixList;
    function deletarPixCobranca(tipoUrl, idpk, empresaIdpk, filialIdpk: integer): string;
    function postPixCobranca(tipoUrl, empresaIdpk, filialIdpk: integer; sacado_nome, sacado_cnpj_cpf, sacado_endereco,
      sacado_endereco_numero, sacado_endereco_complemento, sacado_bairro, sacado_cep, sacado_cidade, sacado_uf,
      sacado_pais: string; valor: double; vencimento, referencia, instrucao, desconto_tipo: string; desconto_valor,
      juros_mensal, multa_mensal: Double): IRetornaPix;

  end;

function DeleteHttp(pUrl, pToken: WideString): WideString; stdcall; external 'metodosHttp.dll';
function SoNumeros(fField: String; numeroNegativo: Boolean = false): String;


var
  AUrlAutentica: string;
  JsonUsuario, TokenAutoriza: string;

const
  baseURLProducao: string = 'https://back.mercurioapp.com.br';
  baseURLSandbox: string = 'http://sandbox.mercurioapp.com.br:7779';
  login: string = '/api/v1/Login/Logar';



implementation

uses
  IdAuthentication, IdGlobal, IdMultipartFormData, TypInfo, principal;

{ TPixapay }

//------------------Pegar Pix Cobrança ---------------------------------------------------------------------------------

function TPixapay.getPixCobranca(tipoUrl, empresaIdpk, filialIdpk: integer;gravaData:Boolean): IRetornaPixList;
var
  IdHTTP                       : TIdHTTP;
  jsonObj, responseObj         : TlkJSONobject;
  jsonArray, Arr               : TlkJSONlist;
  s, retorno, url, urlCompleta : string;
  lStream                      : TStringStream;
  i                            : integer;
  registroInicial              : integer;
  totalRegistros               : integer;
  LHandler                     : TIdSSLIOHandlerSocket;
  pix                          : TRetornaPix;
  Arquivo                      : TIniFile;
  Data, dataDe, dataAte        : TDateTime;
const paginacao = 96;
begin
  validaToken(tipoUrl);
  url := '/api/v1/FinanceiroMovimento/PixCobranca?empresa_idpk=' + IntToStr(empresaIdpk);
  if filialIdpk <> 0 then
    url := url + '&filial_idpk=' + IntToStr(filialIdpk);

  url := url + '&status=Liquidado';

  Arquivo := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

  if Arquivo.ValueExists('CONFIG','PIX_DATADE') then
    dataDe := Arquivo.ReadDateTime('CONFIG','PIX_DATADE',Date)
  else
    dataDe := 0;

  dataAte := now;

  url := url + '&pagamento_de='+ stringReplace(FormatDateTime('DD-MM-YYYY HH:MM:SS', dataDe), ' ', '%20', [rfReplaceAll]);
  url := url + '&pagamento_ate='+ stringReplace(FormatDateTime('DD-MM-YYYY HH:MM:SS', dataAte), ' ', '%20', [rfReplaceAll]);

  IdHTTP                     := TIdHTTP.Create(nil);
  LHandler                   := TIdSSLIOHandlerSocket.Create(nil);
  LHandler.SSLOptions.Method := sslvSSLv23;
  LHandler.SSLOptions.Mode   := sslmClient;
  IdHTTP.IOHandler           := LHandler;
  try

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.Accept                  := '';
    IdHTTP.Request.UserAgent               := '';
    IdHTTP.Request.ContentType             := 'application/json';
    IdHTTP.Response.ResponseText           := 'UTF-8';
    IdHTTP.Request.CustomHeaders.FoldLines := False;

    try
      IdHTTP.Request.CustomHeaders.Add('Authorization:Bearer ' + TokenAutoriza);
      lStream          := TStringStream.Create(retorno);

      result := TRetornaPixList.new;
      registroInicial := 0;
      while (true) do
      begin
        if tipoUrl = 0 then
          urlCompleta := baseURLSandbox + url
        else
          urlCompleta := baseURLProducao + url;



        if (registroInicial = 0) then
        begin
          if tipoUrl = 0 then
            urlCompleta := baseURLSandbox + url +'&total_registros=S'
          else
            urlCompleta := baseURLProducao + url +'&total_registros=S';
        end;


        urlCompleta := urlCompleta + '&registro_inicial='+ intToStr(registroInicial) +
          '&qtde_registros='+ intToStr(paginacao);


        IdHTTP.Get(urlCompleta, lStream);


        lStream.Position := 0;
        retorno          := lStream.ReadString(lStream.Size);
        responseObj      := TlkJSONobject(TlkJSON.ParseText(retorno));

        if (registroInicial = 0) then
          totalRegistros := strToInt(responseObj.Field['total_registros'].Value);


        jsonArray        := TlkJSONlist(responseObj.Field['registros']);

        if Assigned(jsonArray) then
        begin
          for i := 0 to jsonArray.Count - 1 do
          begin
            jsonObj := TlkJSONobject(jsonArray.Child[i]);
            if (jsonObj = nil) then
              continue;

            pix := TRetornaPix.Create;
            pix.SetIdpk(jsonObj.Field['fmp_idpk'].Value);
            pix.SetSacadoNome(jsonObj.Field['fmp_sacado_nome'].Value);
            pix.SetValor(jsonObj.Field['fmp_valor'].Value);
            pix.SetStatus(jsonObj.Field['fmp_status'].Value);

            responseObj:= TlkJSONobject(jsonObj.Field['pagamento']);
            pix.SetPgtoData(responseObj.Field['fmp_pagamento_data'].Value);
            result.Adicionar(Pix);
          end;
        end;

        registroInicial := registroInicial + paginacao;

        //Valida se já puxou até o último registro, se puxou sai do loop
        if (registroInicial + paginacao > totalRegistros) then
          break;
      end;

      if gravaData then
        Arquivo.WriteDateTime('CONFIG', 'PIX_DATADE', Now);
    finally
      FreeAndNil(IdHTTP);
      FreeAndNil(responseObj);
      FreeAndNil(LHandler);
      Arquivo.Free;
    end;

  except
    on E: EIdHTTPProtocolException do
    begin
      IdHTTP.Disconnect;
      //Se o json conter algum erro
      case IdHTTP.ResponseCode of
        400:
          begin
            retorno := '400: ' + e.ErrorMessage;
          end;
        //Se o token não for enviado ou for inválido
        401:
          begin
            retorno := '401: ' + e.ErrorMessage;
          end;
        //Se o token informado for inválido 403
        403:
          begin
            retorno := '403: ' + e.ErrorMessage;
          end;
        //Se não encontrar o que foi requisitado
        404:
          begin
            retorno := '404: ' + e.ErrorMessage;
          end;
        //Caso contrário
      else
        retorno := IdHTTP.ResponseText + ': ' + e.ErrorMessage;

      end;

    end;

  end;

end;

//-------------------Deletar Pix Cobranca-----------------------------------------------------------------------------------

function TPixapay.deletarPixCobranca(tipoUrl, idpk, empresaIdpk, filialIdpk: integer):string;
var
  retorno, JSon, url        : string;
  JsonToSend, retornoStream : TStringStream;
  jsonObj, responseObj      : TlkJSONobject;
  jsonArray                 : TlkJSONlist;
begin
  validaToken(tipoUrl);

  url := '/api/v1/FinanceiroMovimento/Pix/' + IntToStr(idpk) + '?empresa_idpk=' + IntToStr(empresaIdpk);
  if filialIdpk <> 0 then
    url := url + '&filial_idpk=' + IntToStr(filialIdpk);

  try
    retornoStream := TStringStream.Create('');
    if tipoUrl = 0 then
      Result := DeleteHttp(baseURLSandbox + url, TokenAutoriza)
    else
      Result := DeleteHttp(baseURLProducao + url, TokenAutoriza);


  finally

  end;

end;

//------------------Post Pix Cobranca-----------------------------------------------------------------------------------

function TPixapay.postPixCobranca(tipoUrl, empresaIdpk, filialIdpk: integer; sacado_nome, sacado_cnpj_cpf, sacado_endereco,
  sacado_endereco_numero, sacado_endereco_complemento, sacado_bairro, sacado_cep, sacado_cidade, sacado_uf, sacado_pais:
  string; valor: double; vencimento, referencia, instrucao, desconto_tipo: string; desconto_valor, juros_mensal,
  multa_mensal: Double): IRetornaPix;
var
  IdHTTP                    : TIdHTTP;
  retorno, JSon, url        : string;
  JsonToSend, retornoStream : TStringStream;
  jsonObj, responseObj      : TlkJSONobject;
  jsonArray                 : TlkJSONlist;
  LHandler                  : TIdSSLIOHandlerSocket;
begin
  validaToken(tipoUrl);
  url := '/api/v1/FinanceiroMovimento/PixCobranca?empresa_idpk=' + IntToStr(empresaIdpk) + '&gerar_pdf=S';
  if filialIdpk <> 0 then
    url := url + '&filial_idpk=' + IntToStr(filialIdpk);

  //Montando o JSon
  Json := '{"fmp_sacado_nome": "'             + sacado_nome +
    '", "fmp_sacado_cnpj_cpf": "'             + SoNumeros(sacado_cnpj_cpf) +
    '", "fmp_sacado_endereco": "'             + sacado_endereco +
    '", "fmp_sacado_endereco_numero": "'      + sacado_endereco_numero +
    '", "fmp_sacado_endereco_complemento": "' + sacado_endereco_complemento +
    '", "fmp_sacado_bairro": "'               + sacado_bairro +
    '", "fmp_sacado_cep": "'                  + SoNumeros(sacado_cep) +
    '", "fmp_sacado_cidade": "'               + sacado_cidade +
    '", "fmp_sacado_uf": "'                   + sacado_uf +
    '", "fmp_sacado_pais": "'                 + sacado_pais +
    '", "fmp_valor": '                        + stringReplace(FloatToStr(valor), ',', '.', [rfReplaceAll]) +
    ', "fmp_vencimento": "'                   + vencimento +
    '", "fmp_referencia": "'                  + referencia +
    '", "fmp_instrucao": "'                   + instrucao +
    '", "fmp_desconto_tipo": "'               + desconto_tipo +
    '", "fmp_desconto_valor": '               + stringReplace(FloatToStr(desconto_valor), ',', '.', [rfReplaceAll]) +
    ', "fmp_juros_mensal": '                  + stringReplace(FloatToStr(juros_mensal), ',', '.', [rfReplaceAll]) +
    ', "fmp_multa": '                         + stringReplace(FloatToStr(multa_mensal), ',', '.', [rfReplaceAll]) + '}';

  JsonToSend := TStringStream.Create(AnsiToUtf8(Json));

  try

    IdHTTP                     := TIdHTTP.Create(nil);
    LHandler                   := TIdSSLIOHandlerSocket.Create(nil);
    LHandler.SSLOptions.Method := sslvSSLv23;
    LHandler.SSLOptions.Mode   := sslmClient;
    IdHTTP.IOHandler           := LHandler;

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;

    IdHTTP.Request.Accept         := 'application/json';
    IdHTTP.Request.AcceptEncoding := 'UTF-8';
    IdHTTP.Request.UserAgent      := '';

    IdHTTP.Request.ContentType             := 'application/json';
    IdHTTP.Response.ResponseText           := 'UTF-8';
    IdHTTP.Request.CustomHeaders.FoldLines := False;
    IdHTTP.Request.CustomHeaders.Add('Authorization:Bearer ' + TokenAutoriza);

    retornoStream := TStringStream.Create('');
    try
      if tipoUrl = 0 then
        IdHTTP.Post(baseURLSandbox + url, JSonToSend, retornoStream)
      else
        IdHTTP.Post(baseURLProducao + url, JSonToSend, retornoStream);


      retornoStream.Position := 0;
      retorno                := retornoStream.ReadString(retornoStream.Size);
      responseObj            := TlkJSONobject(TlkJSON.ParseText(retorno));
      jsonArray              := TlkJSONlist(responseObj.Field['registros']);


      if Assigned(jsonArray) then
      begin
        jsonObj := TlkJSONobject(jsonArray.Child[0]);
        if (jsonObj = nil) then
          Exit;
        if jsonObj.Field['status'].Value = 'sucesso' then
        begin
          result := TRetornaPix.new;
          result.SetIdpk(jsonObj.Field['fmp_idpk'].Value);
          result.SetPixTipo(jsonObj.Field['fmp_pix_tipo'].Value);
          result.SetLinkQrCode(jsonObj.Field['fmp_link_url'].Value);
          result.SetHash(jsonObj.Field['fmp_hash'].Value);
          result.SetDescricao(jsonObj.Field['fmp_descricao'].Value);
          result.SetChave(jsonObj.Field['fmp_chave'].Value);
        end
        else
        begin
          responseObj:= TlkJSONobject(jsonObj.Field['mensagem']);

          result := TRetornaPix.New;
          result.SetStatus(responseObj.Field['message'].Value);
        end;
      end;

      retorno := IdHTTP.ResponseText;
    except
      on E: EIdHTTPProtocolException do
      begin
        IdHTTP.Disconnect;
        //Se o json conter algum erro
        case IdHTTP.ResponseCode of
          400:
            begin
              retorno := '400: ' + e.ErrorMessage;
            end;
          //Se o token não for enviado ou for inválido
          401:
            begin
              retorno := '401: ' + e.ErrorMessage;
            end;
          //Se o token informado for inválido 403
          403:
            begin
              retorno := '403: ' + e.ErrorMessage;
            end;
          //Se não encontrar o que foi requisitado
          404:
            begin
              retorno := '404: ' + e.ErrorMessage;
            end;
          //Caso contrário
        else
          retorno := IdHTTP.ResponseText + ': ' + e.ErrorMessage;

        end;

      end;

    end;

  finally
    FreeAndNil(IdHTTP);
    FreeAndNil(LHandler);

  end;
end;

//------------------Pegar boletos --------------------------------------------------------------------------------------

function TPixapay.getBoletos(tipoUrl, empresaIdpk, filialIdpk: integer;gravaData:Boolean): IRetornaBoletoList;
var
  IdHTTP                               : TIdHTTP;
  jsonObj, responseObj                 : TlkJSONobject;
  jsonArray                            : TlkJSONlist;
  s, retorno, url, status, urlCompleta : string;
  lStream                              : TStringStream;
  i                                    : integer;
  registroInicial                      : integer;
  totalRegistros                       : integer;
  LHandler                             : TIdSSLIOHandlerSocket;
  Arquivo                              : TIniFile;
  Data, dataDe, dataAte                : TDateTime;
  boleto                               : TRetornoBoleto;
  const paginacao = 96;
begin
  validaToken(tipoUrl);

  url := '/api/v1/FinanceiroMovimento/Boleto?empresa_idpk=' + IntToStr(empresaIdpk);
  if filialIdpk <> 0 then
    url := url + '&filial_idpk=' + IntToStr(filialIdpk);

//  url := url + '&status=["Liquidado","Liquidado%20Pix"]';
  url := url + '&status%3D%5B%22Liquidado%22%2C%22Liquidado%20Pix%22%5D';

  Arquivo := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

  if Arquivo.ValueExists('CONFIG','BOLETO_DATADE') then
    dataDe := Arquivo.ReadDateTime('CONFIG','BOLETO_DATADE',Date)
  else
    dataDe := 0;

  dataAte := now;


  url := url + '&pagamento_de='+ stringReplace(FormatDateTime('DD-MM-YYYY HH:MM:SS', dataDe), ' ', '%20', [rfReplaceAll]);
  url := url + '&pagamento_ate='+ stringReplace(FormatDateTime('DD-MM-YYYY HH:MM:SS', dataAte), ' ', '%20', [rfReplaceAll]);

  IdHTTP                     := TIdHTTP.Create(nil);
  LHandler                   := TIdSSLIOHandlerSocket.Create(nil);
  LHandler.SSLOptions.Method := sslvSSLv23;
  LHandler.SSLOptions.Mode   := sslmClient;
  IdHTTP.IOHandler           := LHandler;
  try

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.Accept := '';
    IdHTTP.Request.UserAgent := '';
    IdHTTP.Request.ContentType := 'application/json';
    IdHTTP.Response.ResponseText := 'UTF-8';
    IdHTTP.Request.CustomHeaders.FoldLines := False;

    try
      IdHTTP.Request.CustomHeaders.Add('Authorization:Bearer ' + TokenAutoriza);
      lStream := TStringStream.Create(retorno);

      result := TRetornaBoletoList.new;
      registroInicial := 0;
      while (True) do
      begin
        if tipoUrl = 0 then
          urlCompleta := baseURLSandbox + url
        else
          urlCompleta := baseURLProducao + url;



        if (registroInicial = 0) then
        begin
          if tipoUrl = 0 then
            urlCompleta := baseURLSandbox + url +'&total_registros=S'
          else
            urlCompleta := baseURLProducao + url +'&total_registros=S';
        end;

        urlCompleta := urlCompleta + '&registro_inicial='+ intToStr(registroInicial) +
          '&qtde_registros='+ intToStr(paginacao);

        IdHTTP.Get(urlCompleta, lStream);
        lStream.Position := 0;
        retorno := lStream.ReadString(lStream.Size);
        responseObj := TlkJSONobject(TlkJSON.ParseText(retorno));

        if (registroInicial = 0) then
          totalRegistros := strToInt(responseObj.Field['total_registros'].Value);

        jsonArray := TlkJSONlist(responseObj.Field['registros']);

        if Assigned(jsonArray) then
        begin


          for i := 0 to jsonArray.Count - 1 do
          begin
            jsonObj := TlkJSONobject(jsonArray.Child[i]);
            if (jsonObj = nil) or (jsonObj.Field['fmb_cobranca_data_pagamento'].Value = Null)  then
              continue;

            boleto := TRetornoBoleto.Create;
            boleto.SetIdpk(jsonObj.Field['fmb_idpk'].Value);
            boleto.SetSacadoNome(jsonObj.Field['fmb_sacado_nome'].Value);
            boleto.SetValor(jsonObj.Field['fmb_valor'].Value);
            boleto.SetStatus(jsonObj.Field['fmb_status'].Value);
            boleto.SetPgtoData(jsonObj.Field['fmb_cobranca_data_pagamento'].Value);
            result.Adicionar(boleto);
          end;
        end;
        registroInicial := registroInicial + paginacao;

        //Valida se já puxou até o último registro, se puxou sai do loop
        if (registroInicial + paginacao > totalRegistros) then
          break;
      end;

      
      if gravaData then
        Arquivo.WriteDateTime('CONFIG', 'BOLETO_DATADE', Now);

    finally
      FreeAndNil(IdHTTP);
      FreeAndNil(responseObj);
      FreeAndNil(LHandler);
      Arquivo.Free;
    end;

    //salvar no ini
    //dataAte

  except
    on E: EIdHTTPProtocolException do
    begin
      IdHTTP.Disconnect;
      //Se o json conter algum erro
      case IdHTTP.ResponseCode of
        400:
          begin
            retorno := '400: ' + e.ErrorMessage;
          end;
        //Se o token não for enviado ou for inválido
        401:
          begin
            retorno := '401: ' + e.ErrorMessage;
          end;
        //Se o token informado for inválido 403
        403:
          begin
            retorno := '403: ' + e.ErrorMessage;
          end;
        //Se não encontrar o que foi requisitado
        404:
          begin
            retorno := '404: ' + e.ErrorMessage;
          end;
        //Caso contrário
      else
        retorno := IdHTTP.ResponseText + ': ' + e.ErrorMessage;

      end;

    end;

  end;

end;

function TPixapay.deletarBoleto(tipoUrl, idpk, empresaIdpk, filialIdpk: integer): string;
var
  JSon, url: string;
  jsonObj, responseObj      : TlkJSONobject;
begin
  validaToken(tipoUrl);

  url := '/api/v1/FinanceiroMovimento/Boleto/' + IntToStr(idpk) + '?empresa_idpk=' + IntToStr(empresaIdpk);
  if filialIdpk <> 0 then
    url := url + '&filial_idpk=' + IntToStr(filialIdpk);

  try
    if tipoUrl = 0 then
      Result := DeleteHttp(baseURLSandbox + url, TokenAutoriza)
    else
      Result := DeleteHttp(baseURLProducao + url, TokenAutoriza);


//    exit;

  finally

  end;
end;

function TPixapay.postBoletos(tipoUrl, empresaIdpk, filialIdpk: integer; sacado_nome, sacado_cnpj_cpf, sacado_endereco,
  sacado_endereco_numero, sacado_endereco_complemento, sacado_bairro, sacado_cep, sacado_cidade, sacado_uf, sacado_pais, numero_documento:
  string; valor: Double; vencimento, referencia, instrucao, desconto_tipo: string; desconto_valor, juros_mensal,
  multa_mensal: Double): IRetornoBoleto;
var
  IdHTTP                    : TIdHTTP;
  retorno, JSon, url        : string;
  JsonToSend, retornoStream : TStringStream;
  jsonObj, responseObj      : TlkJSONobject;
  jsonArray                 : TlkJSONlist;
  LHandler                  : TIdSSLIOHandlerSocket;
begin
  validaToken(tipoUrl);
  url := '/api/v1/FinanceiroMovimento/Boleto?empresa_idpk='+IntToStr(empresaIdpk);

  if filialIdpk <> 0 then
    url := url + '&filial_idpk='+ IntToStr(filialIdpk);
    

  //Montando o JSon
  Json :=  '{"fmb_sacado_nome": "'                   + sacado_nome +
           '", "fmb_sacado_cnpj_cpf": "'             + sacado_cnpj_cpf +
           '", "fmb_sacado_endereco": "'             + sacado_endereco +
           '", "fmb_sacado_endereco_numero": "'      + sacado_endereco_numero +
           '", "fmb_sacado_endereco_complemento": "' + sacado_endereco_complemento +
           '", "fmb_sacado_bairro": "'               + sacado_bairro +
           '", "fmb_sacado_cep": "'                  + sacado_cep +
           '", "fmb_sacado_cidade": "'               + sacado_cidade +
           '", "fmb_sacado_uf": "'                   + sacado_uf +
           '", "fmb_sacado_pais": "'                 + sacado_pais +
           '", "fmb_valor": '                        + stringReplace(FloatToStr(valor), ',', '.', [rfReplaceAll]) +
           ', "fmb_vencimento": "'                   + vencimento +
           '", "fmb_referencia": "'                  + referencia +
           '", "fmb_instrucao": "'                   + instrucao +
           '", "fmb_desconto_tipo": "'               + desconto_tipo +
           '", "fmb_numero_documento": "'            + numero_documento +
           '", "fmb_desconto_valor": '               + stringReplace(FloatToStr(desconto_valor), ',', '.', [rfReplaceAll]) +
           ', "fmb_juros_mensal": '                  + stringReplace(FloatToStr(juros_mensal), ',', '.', [rfReplaceAll]) +
           ', "fmb_multa": '                         + stringReplace(FloatToStr(multa_mensal), ',', '.', [rfReplaceAll]) + '}';

  JsonToSend  := TStringStream.Create(AnsiToUtf8(Json));

  try
    IdHTTP                     := TIdHTTP.Create(nil);
    LHandler                   := TIdSSLIOHandlerSocket.Create(nil);
    LHandler.SSLOptions.Method := sslvSSLv23;
    LHandler.SSLOptions.Mode   := sslmClient;
    IdHTTP.IOHandler           := LHandler;

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;

    IdHTTP.Request.Accept         := 'application/json';
    IdHTTP.Request.AcceptEncoding := 'UTF-8';
    IdHTTP.Request.UserAgent      := '';

    IdHTTP.Request.ContentType             := 'application/json';
    IdHTTP.Response.ResponseText           := 'UTF-8';
    IdHTTP.Request.CustomHeaders.FoldLines := False;
    IdHTTP.Request.CustomHeaders.Add('Authorization:Bearer ' + TokenAutoriza);

    retornoStream := TStringStream.Create('');
    try
      if tipoUrl = 0 then
        IdHTTP.Post(baseURLSandbox + url, JSonToSend, retornoStream)
      else
        IdHTTP.Post(baseURLProducao + url, JSonToSend, retornoStream);

      retornoStream.Position := 0;
      retorno                := retornoStream.ReadString(retornoStream.Size);
      responseObj            := TlkJSONobject(TlkJSON.ParseText(retorno));
      jsonArray              := TlkJSONlist(responseObj.Field['registros']);


      if Assigned(jsonArray) then
      begin
        jsonObj := TlkJSONobject(jsonArray.Child[0]);
        if (jsonObj = nil) then
          Exit;

        if jsonObj.Field['status'].Value = 'sucesso' then
        begin
          result := TRetornoBoleto.new;
          result.SetIdpk(jsonObj.Field['fmb_idpk'].Value);
          result.SetPDF(jsonObj.Field['fmb_link_url'].Value);
          result.SetChave(jsonObj.Field['fmb_chave'].Value);
        end
        else
        begin
          result := TRetornoBoleto.New;
          result.SetStatus(jsonObj.Field['message'].Value);
        end;

      end;

      retorno := IdHTTP.ResponseText;
    except
      on E: EIdHTTPProtocolException do
      begin
        IdHTTP.Disconnect;
        //Se o json conter algum erro
        case IdHTTP.ResponseCode of
          400:
            begin
              retorno := '400: ' + e.ErrorMessage;
            end;
          //Se o token não for enviado ou for inválido
          401:
            begin
              retorno := '401: ' + e.ErrorMessage;
            end;
          //Se o token informado for inválido 403
          403:
            begin
              retorno := '403: ' + e.ErrorMessage;
            end;
          //Se não encontrar o que foi requisitado
          404:
            begin
              retorno := '404: ' + e.ErrorMessage;
            end;
          //Caso contrário
        else
          retorno := IdHTTP.ResponseText + ': ' + e.ErrorMessage;

        end;
      end;
    end;

  finally
    FreeAndNil(IdHTTP);
    FreeAndNil(LHandler);
  end;
end;

//------------------Valida Token----------------------------------------------------------------------------------------

function TPixapay.validaToken(tipoUrl:integer): Boolean;
var
  Arquivo: TIniFile;
  Data: TDateTime;
begin
  if not FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
    ShowMessage('O arquivo de configuração não foi localizado ou não existe!')
  else
  begin
    Arquivo := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
    try
      if Arquivo.SectionExists('CONFIG') then
      begin
        Data := Arquivo.ReadDate('CONFIG', 'CRIACAO', Date);
        if Data <> Date then
          fazerLogin(tipoUrl);

        TokenAutoriza := Arquivo.ReadString('CONFIG', 'TOKEN', TokenAutoriza);
      end
      else
        fazerLogin(tipoUrl);

    finally
      Arquivo.Free;
    end;
  end;

end;

//------------------Fazer Login ----------------------------------------------------------------------------------------

function TPixapay.fazerLogin(tipoUrl:integer): string;
var
  Resposta   : string;
  Params     : TStringList;
  IdHTTP     : TIdHTTP;
  JsonToSend : TStringStream;
  LHandler   : TIdSSLIOHandlerSocket;
  js         : TlkJSONobject;

  function RetornaToken(JSON: string): string;
  var
    js      : TlkJSONobject;
    Arquivo : TIniFile;
    Data    : TDateTime;
  begin
    try
      js            := TlkJSON.ParseText(JSON) as TlkJSONobject;
      Result        := js.getString('token');
      TokenAutoriza := Result;

      Arquivo := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

      try
        Data := Date;

        Arquivo.WriteDateTime('CONFIG', 'CRIACAO', Data);
        Arquivo.WriteString('CONFIG', 'TOKEN', TokenAutoriza);

      finally
        Arquivo.Free;
      end;

    except
      Result := '';
    end;
  end;

begin

  JsonUsuario  := '{"sistema_idpk":"' + FSistemaIdpk + '", "email": "' + Fusuario + '", "senha": "' + FSenha + '"}';
  JsonToSend := TStringStream.Create(UTF8Encode(JsonUsuario));
  IdHTTP     := TIdHTTP.Create(nil);
  LHandler   := TIdSSLIOHandlerSocket.Create(nil);
  Params     := TStringList.create;

  LHandler.SSLOptions.Method := sslvSSLv23;
  LHandler.SSLOptions.Mode   := sslmClient;
  IdHTTP.IOHandler           := LHandler;
  IdHTTP.Request.CustomHeaders.Clear;
  IdHTTP.Request.Clear;

  IdHTTP.Request.Accept                  := '';
  IdHTTP.Request.UserAgent               := '';
  IdHTTP.Request.ContentType             := 'application/json';
  IdHTTP.Response.ResponseText           := 'UTF-8';
  IdHTTP.Request.CustomHeaders.FoldLines := False;
  try
    if tipoUrl = 0 then
      Resposta := IdHTTP.Post(baseURLSandbox + login, JsonToSend)
    else
      Resposta := IdHTTP.Post(baseURLProducao + login, JsonToSend);

    Result := RetornaToken(Resposta);
  finally
    FreeAndNil(IdHTTP);
    FreeAndNil(Params);
    freeandnil(LHandler);
  end;

end;

{ TRetornoBoleto }

constructor TRetornoBoleto.Create;
begin

end;

destructor TRetornoBoleto.Destroy;
begin

  inherited;
end;

function TRetornoBoleto.getChave: string;
begin
  result := FChave;
end;

function TRetornoBoleto.getIdpk: string;
begin
  result := FIdpk;
end;

function TRetornoBoleto.getPdf: string;
begin
  result := FPDF;
end;

function TRetornoBoleto.getPgtoData: string;
begin
  result := FPgtoData;
end;

function TRetornoBoleto.getSacadoNome: string;
begin
  result := FSacadoNome;
end;

function TRetornoBoleto.getStatus: string;
begin
  Result := FStatus;
end;

function TRetornoBoleto.getValor: string;
begin
  result := FValor;
end;

class function TRetornoBoleto.new: IRetornoBoleto;
begin
  result := TRetornoBoleto.Create;
end;

procedure TRetornoBoleto.SetChave(const Value: string);
begin
  FChave := Value;
end;

procedure TRetornoBoleto.SetIdpk(const Value: string);
begin
  FIdpk := Value;
end;

procedure TRetornoBoleto.SetPDF(const Value: string);
begin
  FPDF := Value;
end;

procedure TRetornoBoleto.SetPgtoData(const Value: string);
begin
  FPgtoData := Value;
end;

procedure TRetornoBoleto.SetSacadoNome(const Value: string);
begin
  FSacadoNome := Value;
end;

procedure TRetornoBoleto.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TRetornoBoleto.SetValor(const Value: string);
begin
  FValor := Value;
end;

{ TRetornaPix }

constructor TRetornaPix.Create;
begin

end;

destructor TRetornaPix.Destroy;
begin

  inherited;
end;

function TRetornaPix.getChave: string;
begin
  Result := FChave;
end;

function TRetornaPix.getDescricao: string;
begin
  Result := FDescricao;
end;

function TRetornaPix.getHash: string;
begin
  Result := FHash;
end;

function TRetornaPix.getIdpk: string;
begin
  Result := FIdpk;
end;

function TRetornaPix.getLinkQrCode: string;
begin
  Result := FLinkQrCode;
end;

function TRetornaPix.getPgtoData: string;
begin
  Result := FPgtoData;
end;

function TRetornaPix.getPixTipo: string;
begin
  Result := FPixTipo;
end;

function TRetornaPix.getSacadoNome: string;
begin
  Result := FSacadoNome;
end;

function TRetornaPix.getStatus: string;
begin
  Result := FStatus;
end;

function TRetornaPix.getValor: string;
begin
  Result := FValor;
end;

class function TRetornaPix.new: IRetornaPix;
begin
  Result := TRetornaPix.Create;
end;

procedure TRetornaPix.SetChave(const Value: string);
begin
  FChave := Value;
end;

procedure TRetornaPix.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TRetornaPix.SetHash(const Value: string);
begin
  FHash := Value;
end;

procedure TRetornaPix.SetIdpk(const Value: string);
begin
  FIdpk := Value;
end;

procedure TRetornaPix.SetLinkQrCode(const Value: string);
begin
  FLinkQrCode := Value;
end;

procedure TRetornaPix.SetPgtoData(const Value: string);
begin
  FPgtoData := Value;
end;

procedure TRetornaPix.SetPixTipo(const Value: string);
begin
  FPixTipo := Value;
end;

procedure TRetornaPix.SetSacadoNome(const Value: string);
begin
  FSacadoNome := Value;
end;

procedure TRetornaPix.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TRetornaPix.SetValor(const Value: string);
begin
  FValor := Value;
end;

constructor TPixapay.Create(usuario, senha, sistemaIdpk: string);
begin
  FSistemaIdpk := sistemaIdpk;
  FUsuario := usuario;
  FSenha := senha;
end;

procedure TPixapay.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TPixapay.SetsistemaIdpk(const Value: string);
begin
  FsistemaIdpk := Value;
end;

procedure TPixapay.SetUsuario(const Value: string);
begin
  FUsuario := Value;
end;

{ TRetornaPixList }

function TRetornaPixList.Adicionar(value: TRetornaPix): IRetornaPixList;
begin
  FPixList.add(value);
end;

constructor TRetornaPixList.Create;
begin
  FPixList := TList.Create;
end;

destructor TRetornaPixList.Destroy;
var x : integer;
begin
  for x := FPixList.Count - 1 downto 0 do
  begin
    TRetornaPix(FPixList.Items[x]).Free;
    FPixList.delete(x);
  end;

  FPixList.Free;
  inherited;
end;

function TRetornaPixList.getList: TList;
begin
  result := FPixList;
end;

class function TRetornaPixList.new: IRetornaPixList;
begin
  result := TRetornaPixList.Create;
end;

{ TRetornaBoletoList }

function TRetornaBoletoList.Adicionar( value: TRetornoBoleto): IRetornaBoletoList;
begin
  FBoletoList.add(value);
end;

constructor TRetornaBoletoList.Create;
begin
  FBoletoList := TList.Create;
end;

destructor TRetornaBoletoList.Destroy;
var x : integer;
begin
  for x := FBoletoList.Count - 1 downto 0 do
  begin
    TRetornoBoleto(FBoletoList.Items[x]).Free;
    FBoletoList.delete(x);
  end;

  FBoletoList.Free;
  inherited;

end;

function TRetornaBoletoList.getList: TList;
begin
  result := FBoletoList;
end;

class function TRetornaBoletoList.new: IRetornaBoletoList;
begin
  result := TRetornaBoletoList.Create;
end;

function SoNumeros(fField: String; numeroNegativo: Boolean = false): String;
var I : Byte;
begin
  Result := '';
  if numeroNegativo then
  begin
    for I := 1 To Length(fField) do
      if (fField [I] In ['0'..'9']) or ( (i=1) and (fField[i] = '-') ) Then
        Result := Result + fField [I];
  end else begin
    for I := 1 To Length(fField) do
      if fField [I] In ['0'..'9'] Then
        Result := Result + fField [I];
  end;
end;

end.
