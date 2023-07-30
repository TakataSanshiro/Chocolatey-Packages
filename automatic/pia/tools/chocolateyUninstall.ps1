$ErrorActionPreference = 'Stop'

#$UninstallArgs = @{
#    PackageName = $env:ChocolateyPackageName
#    FileType    = 'exe'
#    File        = Join-Path $env:ProgramFiles "Private Internet Access\uninstall.exe"
#    SilentArgs  = '/qn'
#}
#Uninstall-ChocolateyPackage @UninstallArgs

$File = Join-Path $env:ProgramFiles "Private Internet Access\uninstall.exe"
Start-Process -FilePath $File -ArgumentList "/qn"
Start-Sleep -Seconds 30
