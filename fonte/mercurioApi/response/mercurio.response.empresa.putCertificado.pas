unit mercurio.response.empresa.putCertificado;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassEmpresaPutCertificado = class
  private
    [Coluna('emp_idpk')]
    FEmp_idpk: string;
    [Coluna('emp_certificado')]
    FEmp_certificado: string;
    [Coluna('emp_certificado_validade')]
    FEmp_certificado_validade: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Emp_idpk: string read FEmp_idpk write FEmp_idpk;
    property Emp_certificado: string read FEmp_certificado write FEmp_certificado;
    property Emp_certificado_validade: string read FEmp_certificado_validade write FEmp_certificado_validade;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassEmpresaPutCertificado }

constructor TResponseClassEmpresaPutCertificado.Create;
begin
end;

destructor TResponseClassEmpresaPutCertificado.Destroy;
begin

  inherited;
end;

constructor TResponseClassEmpresaPutCertificado.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('emp_idpk', self.FEmp_idpk); except end;
  try value.TryGetValue<string>('emp_certificado', self.FEmp_certificado); except end;
  try value.TryGetValue<string>('emp_certificado_validade', self.FEmp_certificado_validade); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassEmpresaPutCertificado.CreateWithJsonString(const value : string);
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
