unit uCad_Vendedor;

interface

uses uFuncionario;

type
  TCad_Vendedor = class(TFuncionario)

  private
    FComissao: Integer;
    procedure setComissao(value: Integer);
    function getComissao: Integer;

  public
    property Comissao: Integer read getComissao write setComissao;
    function SalarioT(ComissaoT: Double): Double;
  end;

implementation

{ TCad_Vendedor }

function TCad_Vendedor.getComissao: Integer;
begin
  Result := FComissao;
end;

function TCad_Vendedor.SalarioT(ComissaoT: Double): Double;
begin
  Result := Salario * ComissaoT;
end;

procedure TCad_Vendedor.setComissao(value: Integer);
begin
  FComissao := value;
end;

end.
