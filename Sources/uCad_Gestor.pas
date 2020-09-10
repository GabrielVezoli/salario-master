unit uCad_Gestor;

interface

uses uFuncionario;

type
  TCad_Gestor = class(TFuncionario)

  private
    FHExtra: Integer;
    procedure setHExtra(value: Integer);
    function getHExtra: Integer;

  public
    property HExtra: Integer read getHExtra write setHExtra;
    function Hora(HoraT: Double): Double;
  end;

implementation

{ TCad_Gestor }

function TCad_Gestor.getHExtra: Integer;
begin
  Result := FHExtra;
end;

function TCad_Gestor.Hora(HoraT: Double): Double;
begin
  Result := ((Salario / HExtra) * 0.5) + HExtra;
end;

procedure TCad_Gestor.setHExtra(value: Integer);
begin
  FHExtra := value;
end;

end.
