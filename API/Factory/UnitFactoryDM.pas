unit UnitFactoryDM;

interface

uses
  System.Classes;

type
  FactoryDM<TFactoryClass : TDataModule> = class
    class function Criar : TFactoryClass;
  end;

implementation

{ TFactory<TFactoryClass> }

class function FactoryDM<TFactoryClass>.Criar : TFactoryClass;
begin
  Result := TFactoryClass.Create(nil);
end;

end.
