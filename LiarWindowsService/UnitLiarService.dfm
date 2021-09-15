object LiarService: TLiarService
  OldCreateOrder = False
  OnCreate = ServiceCreate
  AllowPause = False
  DisplayName = 'LiarAPIService'
  StartType = stManual
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 150
  Width = 215
end
