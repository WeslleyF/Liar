object DMConn: TDMConn
  OldCreateOrder = False
  Height = 231
  Width = 272
  object FDBConnLiar: TFDConnection
    Params.Strings = (
      'Database=Liar'
      'User_Name=Liar'
      'Password=teste'
      'Server=LocalHost'
      'DriverID=PG')
    Left = 152
    Top = 32
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Weslley\OneDrive\Projetos\_Desenvolvimento\Liar\EXE\lib' +
      'pq.dll'
    Left = 40
    Top = 32
  end
end
