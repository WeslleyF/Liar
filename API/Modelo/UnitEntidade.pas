unit UnitEntidade;

interface

type
  TEntidade = class
    protected
      FCodigo    : Integer;
    public
      property Codigo : Integer read FCodigo write FCodigo;
  end;

implementation

end.
