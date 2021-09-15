unit UnitLiarService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  IdHTTPWebBrokerBridge;

type
  TLiarService = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    LServer: TIdHTTPWebBrokerBridge;
  public
    function GetServiceController: TServiceController; override;

  end;

var
  LiarService: TLiarService;

implementation

uses
  Web.WebReq, UnitLiarServicosWebModule;

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  LiarService.Controller(CtrlCode);
end;

function TLiarService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TLiarService.ServiceCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
end;

procedure TLiarService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  LServer := TIdHTTPWebBrokerBridge.Create(nil);
  LServer.DefaultPort := 7575;
  LServer.Active      := True;
end;

procedure TLiarService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  LServer.Free;
end;

end.
