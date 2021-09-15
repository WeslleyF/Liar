program LiarAPIService;



uses
  Vcl.SvcMgr,
  UnitLiarService in 'UnitLiarService.pas' {LiarService: TService},
  UnitLiarServicosWebModule in '..\API\UnitLiarServicosWebModule.pas' {LiarServicosWebModule: TWebModule},
  UnitRegisterController in '..\API\Controller\Apoio\UnitRegisterController.pas',
  UnitClienteController in '..\API\Controller\UnitClienteController.pas',
  UnitDMBase in '..\API\Data\UnitDMBase.pas' {DMBase: TDataModule},
  UnitDMCliente in '..\API\Data\DMCliente\UnitDMCliente.pas' {DMCliente: TDataModule},
  UnitFactoryDM in '..\API\Factory\UnitFactoryDM.pas',
  UnitDMConn in '..\API\Data\UnitDMConn.pas' {DMConn: TDataModule};

{$R *.RES}

begin
  // Windows 2003 Server requires StartServiceCtrlDispatcher to be
  // called before CoRegisterClassObject, which can be called indirectly
  // by Application.Initialize. TServiceApplication.DelayInitialize allows
  // Application.Initialize to be called from TService.Main (after
  // StartServiceCtrlDispatcher has been called).
  //
  // Delayed initialization of the Application object may affect
  // events which then occur prior to initialization, such as
  // TService.OnCreate. It is only recommended if the ServiceApplication
  // registers a class object with OLE and is intended for use with
  // Windows 2003 Server.
  //
  // Application.DelayInitialize := True;
  //
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  Application.CreateForm(TLiarService, LiarService);
  Application.CreateForm(TDMCliente, DMCliente);
  Application.CreateForm(TDMConn, DMConn);
  Application.Run;
end.
