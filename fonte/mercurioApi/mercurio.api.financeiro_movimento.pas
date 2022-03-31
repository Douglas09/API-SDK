unit mercurio.api.financeiro_movimento;

interface

uses mercurio.api.parent, json, mercurio.api.classes, mercurio.api.login,
     mercurio.api.financeiro_movimento_pix_instantaneo,
     mercurio.api.financeiro_movimento_boleto;

type
  TMercurioFinanceiroMovimento = class(TMercurioPai)
  private
    FPix : TMercurioFinanceiroMovimentoPix;
    FAmbiente: TMercurioAmbiente;
    FOnInternalError: TOnInternalError;
    FBoleto: TFinanceiroMovimentoBoleto;
    procedure SetAmbiente(const Value: TMercurioAmbiente);
    procedure SetOnInternalError(const Value: TOnInternalError);
    procedure SetBoleto(const Value: TFinanceiroMovimentoBoleto);
  public
    /// <summary> Ambiente da API | PRODU��O | HOMOLOGA��O | </summary>
    property Ambiente : TMercurioAmbiente read FAmbiente write SetAmbiente;

    constructor Create(var Auth : TMercurioLogin);
    destructor Destroy; override;

    /// <summary> Rotinas referente as rotinas de pix (Instant�neo / Cobran�a) </summary>
    property Pix : TMercurioFinanceiroMovimentoPix read FPix;
    /// <summary> Rotinas referente as rotinas de boleto/bolepix </summary>
    property Boleto : TFinanceiroMovimentoBoleto read FBoleto;

    /// <summary> Evento que � disparado ao gerar erro interno na implementa��o </summary>
    property OnInternalError : TOnInternalError read FOnInternalError write SetOnInternalError;
  end;

implementation

{ TMercurioFinanceiroMovimento }

uses mercurio.api.functions;

constructor TMercurioFinanceiroMovimento.Create(var Auth: TMercurioLogin);
begin
  inherited Create(Auth);
  FPix := TMercurioFinanceiroMovimentoPix.Create(Auth);
  FBoleto := TFinanceiroMovimentoBoleto.Create(Auth);
end;

destructor TMercurioFinanceiroMovimento.Destroy;
begin
  MyFreeAndNil(FPix);
  MyFreeAndNil(FBoleto);
  inherited;
end;

procedure TMercurioFinanceiroMovimento.SetAmbiente(const Value: TMercurioAmbiente);
begin
  FAmbiente := Value;
  FPix.Ambiente := Value;
  FBoleto.Ambiente := Value;
end;

procedure TMercurioFinanceiroMovimento.SetBoleto(const Value: TFinanceiroMovimentoBoleto);
begin
  FBoleto := Value;
end;

procedure TMercurioFinanceiroMovimento.SetOnInternalError(const Value: TOnInternalError);
begin
  FOnInternalError := Value;
  FPix.OnInternalError := Value;
  FBoleto.OnInternalError := Value;
end;

end.
