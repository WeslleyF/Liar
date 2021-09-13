unit UnitClienteController;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons;

type

  [MVCPath('/api/Cliente')]
  TClienteController = class(TMVCController) 
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils, UnitFactoryDM,
  UnitDMCliente;

procedure TClienteController.Index;
begin
  Render(FactoryDM<TDMCliente>.Criar.ConsultarCliente, True);
end;

end.
