unit mercurio.response.empresa.put;

interface

uses mercurio.api.functions, Json;

type
  TResponseClassEmpresaPut = class
  private
    [Coluna('emp_idpk')]
    FEmp_idpk: string;
    [Coluna('status')]
    FStatus: string;
  public
    constructor Create;
    destructor Destroy; override;

    constructor CreateWithJson(const value : TJSonObject);
    constructor CreateWithJsonString(const value : string);
    property Emp_idpk: string read FEmp_idpk write FEmp_idpk;
    property Status: string read FStatus write FStatus;
  end;

implementation

uses System.SysUtils;

{ TResponseClassEmpresaPut }

constructor TResponseClassEmpresaPut.Create;
begin
end;

destructor TResponseClassEmpresaPut.Destroy;
begin

  inherited;
end;

constructor TResponseClassEmpresaPut.CreateWithJson(const value : TJSonObject);
begin
  self.Create;
  if (value = nil) then
    exit;

  try value.TryGetValue<string>('emp_idpk', self.FEmp_idpk); except end;
  try value.TryGetValue<string>('status', self.FStatus); except end;
end;

constructor TResponseClassEmpresaPut.CreateWithJsonString(const value : string);
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
