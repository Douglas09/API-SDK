{** Douglas Colombo
  * Classe de conversão de arquivos em texto
  * e de Texto em Arquivos, BASE64
**}

unit mercurio.api.base64;

interface

uses Classes, netEncoding, SysUtils, IOUtils, FMX.Graphics;

procedure Base64ToFile(Arquivo, caminhoSalvar : String);
function Base64ToStream(imagem : String) : TMemoryStream;
function FileToBase64(Arquivo : String) : String;
function StreamToBase64(STream : TMemoryStream) : String;
function BitmapToBase64(imagem : TBitmap) : String;
function StringToBase64(value : String) : String;
function Base64ToString(value : String) : String;

implementation

uses EncdDecd, mercurio.api.functions;

function ReadFile(filePath : String) : String;
var t : TStringList;
begin
  result := '';
  if not (FileExists(filePath)) then
    exit;

  t := TStringList.Create;
  try
    t.LoadFromFile(filePath);
    result := t.Text;
  finally
    MyFreeAndNil(T);
  end;
end;

procedure Base64ToFile(Arquivo, caminhoSalvar : String);
var sTream : TMemoryStream;
begin
  sTream := nil;
  try
    if (Trim(Arquivo) = '') then
      exit;
    if not (DirectoryExists(ExtractFilePath(caminhoSalvar))) then
      ForceDirectories(ExtractFilePath(caminhoSalvar));

    sTream := Base64ToStream(Arquivo);
    sTream.SaveToFile(caminhoSalvar);
  finally
    MyFreeAndNil(sTream);
  end;
end;

function Base64ToStream(imagem: String): TMemoryStream;
var base64 : TBase64Encoding;
    bytes : tBytes;
begin
  base64 := TBase64Encoding.Create;
  try
    bytes  := base64.DecodeStringToBytes(imagem);
    result := TBytesStream.Create(bytes);
    result.Position := 0; {ANDROID 64 BITS}
  finally
    MyFreeAndNil(base64);
    SetLength(bytes, 0);
  End;
end;

function FileToBase64(Arquivo : String): String;
var sTream : tMemoryStream;
begin
  if (Trim(Arquivo) <> '') then
  begin
    sTream := TMemoryStream.Create;
    try
      sTream.LoadFromFile(Arquivo);
      result := StreamToBase64(sTream);
    finally
      MyFreeAndNil(Stream);
    end;
  end
  else
    result := '';
end;

function StreamToBase64(STream: TMemoryStream): String;
var base64 : tBase64Encoding;
begin
  base64 := TBase64Encoding.Create;
  try
    stream.Position := 0; {ANDROID 64 BITS}
    result := base64.EncodeBytesToString(sTream.Memory, sTream.Size);
  finally
    MyFreeAndNil(base64);
  end;
end;

function BitmapToBase64(imagem: TBitmap): String;
var sTream : TMemoryStream;
begin
  result := '';

  if (imagem.IsEmpty) then
    exit;

  sTream := TMemoryStream.Create;
  try
    imagem.SaveToStream(sTream);
    result := StreamToBase64(sTream);
  except
  end;
  MyFreeAndNil(sTream);
end;

function StringToBase64(value : String) : String;
var input, output : TStringStream;
begin
  input := TStringStream.Create(value, TEncoding.UTF8);
  Output := TStringStream.Create('', TEncoding.UTF8);
  try
    EncodeStream(Input, Output);
    result := Output.DataString;
  finally
    MyFreeAndNil(Output);
    MyFreeAndNil(Input);
  end;
end;

function Base64ToString(value : String) : String;
var input, output: TStringStream;
begin
  Input := TStringStream.Create(value, TEncoding.UTF8);
  Output := TStringStream.Create('', TEncoding.UTF8);
  try
    DecodeStream(Input, Output);
    result := Output.DataString;
  finally
    MyFreeAndNil(output);
    MyFreeAndNil(Input);
  end;
end;

end.
