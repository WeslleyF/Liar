inherited DMCliente: TDMCliente
  object QCliente: TFDQuery
    SQL.Strings = (
      'SELECT "CodCliente", "Cliente" FROM "Cliente"')
    Left = 48
    Top = 40
    object QClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = '"CodCliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QClienteCliente: TWideStringField
      FieldName = 'Cliente'
      Origin = '"Cliente"'
      Size = 250
    end
  end
end
