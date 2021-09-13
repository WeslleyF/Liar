unit UnitRegisterController;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp,
  MVCFramework;

type
  RegistrarController = class
   class procedure Registrar(aMVC : TMVCEngine);
  end;

implementation

{ TRegisterController }

uses UnitClienteController;

class procedure RegistrarController.Registrar(aMVC: TMVCEngine);
begin
  aMVC.AddController(TClienteController);
end;

end.
