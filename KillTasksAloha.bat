set LogPath=C:\upgrade.txt
call :alohaupdate 1>>%LogPath% 2>>&1
exit /B 0

:alohaupdate


ECHO %DATE% %TIME% ***BEGINNING OF PREUPDATE


ECHO %DATE% %TIME% ***KILLING SERVICES

REM Kill monitor services first
net stop RadiantTakeoutMonitor /y
echo Y | net stop AtgHelper /y

net stop AeMInStoreService /y
net stop AlohaAlertEngine /y
net stop "Aloha Enterprise Redirector Service" /y
net stop agmhost /y
net stop agmfiles /y
net stop AlohaKitchenService /y
net stop RadiantTakeout /y
net stop edcsvr /y
net stop ctlsvr /y
net stop rfssvr /y
net stop ATGService /y
net stop SVBoHService /y
net stop SVUpdateService /y
net stop ALOHA /y
net stop alohamobileservice /y


ECHO %DATE% %TIME% ***KILLING TASKS

REM Kill monitor tasks first
taskkill /f /im radianttakeoutmonitor.exe
taskkill /f /im ATOServiceMonitor.exe
taskkill /f /im AtgHelperService.exe

taskkill /f /im AeMInStoreService.exe
taskkill /f /im AlAdmSvr.exe
taskkill /f /im AlohaAlertEngine.exe
taskkill /f /im AlohaKitchen.exe
taskkill /f /im AlohaKitchenService.exe
taskkill /f /im AlohaSec.exe
taskkill /f /im AlohaTransactionGateway.exe
taskkill /f /im atddb.exe
taskkill /f /im iber.exe
taskkill /f /im IberQS.exe
taskkill /f /im PollCheck.exe
taskkill /f /im ctlsvr.exe
taskkill /f /im deltrack.exe
taskkill /f /im edcsvr.exe
taskkill /f /im gclegacy.exe
taskkill /f /im GuestManagerFiles.exe
taskkill /f /im GuestManagerHost.exe
taskkill /f /im hasplms.exe
taskkill /f /im Radiant.Hospitality.AlohaToGo.ServiceHost.exe
taskkill /f /im RfsSvr.exe
taskkill /f /im StoreActivityRecorder.exe
taskkill /f /im StoredValue.Boh.App.exe
taskkill /f /im StoredValue.BoH.UpdateService.exe
taskkill /f /im AlohaS.exe


ECHO %DATE% %TIME% ***END OF PREUPDATE

exit /B 0