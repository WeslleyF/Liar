unit UnitDMBase;

interface

uses
  System.SysUtils, System.Classes, UnitDMConn, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMBase = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FDMConn : TDMConn;
  public
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitFactoryDM;

{$R *.dfm}

{ TDMBase }

procedure TDMBase.DataModuleCreate(Sender: TObject);
var
  I: Integer;
begin
  FDMConn := FactoryDM<TDMConn>.Criar;

  for I := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[I] is TFDQuery then
      TFDQuery(Self.Components[I]).Connection := FDMConn.FDBConnLiar;
  end;
end;

procedure TDMBase.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FDMConn);
end;

end.
