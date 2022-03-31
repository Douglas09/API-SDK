unit mercurio.response.empresa.putLogotipo;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassEmpresaPutLogotipo = class
  private
    [Coluna('emp_idpk')]
    FEmp_idpk: string;
    [Coluna('emp_logotipo_foto')]
    FEmp_logotipo_foto: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Emp_idpk: string read FEmp_idpk write FEmp_idpk;
    property Emp_logotipo_foto: string read FEmp_logotipo_foto write FEmp_logotipo_foto;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassEmpresaPutLogotipo }

constructor TResponseClassEmpresaPutLogotipo.Create;
begin
end;

destructor TResponseClassEmpresaPutLogotipo.Destroy;
begin

  inherited;
end;

constructor TResponseClassEmpresaPutLogotipo.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('emp_idpk', self.FEmp_idpk); except end;
  try value.TryGetValue<string>('emp_logotipo_foto', self.FEmp_logotipo_foto); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassEmpresaPutLogotipo.CreateWithJsonString(const value : string);
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
