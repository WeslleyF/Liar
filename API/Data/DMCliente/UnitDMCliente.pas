unit UnitDMCliente;

interface

uses
  System.SysUtils, System.Classes, UnitDMBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMCliente = class(TDMBase)
    QCliente: TFDQuery;
    QClienteCodCliente: TIntegerField;
    QClienteCliente: TWideStringField;
  private
    { Private declarations }
  public
    function ConsultarCliente : TDataSet;
  end;

var
  DMCliente: TDMCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMCliente }

function TDMCliente.ConsultarCliente: TDataSet;
begin
  QCliente.Close;
  QCliente.Open;

  Result:= QCliente;
end;

end.
