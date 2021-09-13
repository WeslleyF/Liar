unit UnitCliente;

interface

uses UnitEntidade;

type

  TCliente = class(TEntidade)
    private
      FCliente    : string;
    public
      property Cliente    : string  read FCliente    write FCliente;

      constructor Criar(aCodCliente : Integer; aCliente : string);
  end;

implementation

{ TCliente }

constructor TCliente.Criar(aCodCliente: Integer; aCliente: string);
begin
  inherited Create;

  FCodigo  := aCodCliente;
  FCliente := aCliente;
end;

end.
