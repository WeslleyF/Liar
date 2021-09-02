unit UnitBaseController;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons;

type

  [MVCPath('/api')]
  TBaseController = class(TMVCController) 
  public
  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils;





end.
