$ErrorActionPreference = 'Stop'

#$UninstallArgs = @{
#    PackageName = $env:ChocolateyPackageName
#    FileType    = 'exe'
#    File        = Join-Path ${env:ProgramFiles(x86)} "Perfect Privacy VPN Manager\uninst.exe"
#    SilentArgs  = '/S'
#}
#Uninstall-ChocolateyPackage @UninstallArgs

$File = Join-Path ${env:ProgramFiles(x86)} "Perfect Privacy VPN Manager\uninst.exe"
Start-Process -FilePath $File -ArgumentList "/S"
Start-Sleep -Seconds 30
