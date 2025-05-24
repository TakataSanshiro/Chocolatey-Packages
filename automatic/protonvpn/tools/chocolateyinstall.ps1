$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'https://github.com/ProtonVPN/win-app/releases/download/4.1.13/ProtonVPN_v4.1.13_x64.exe'
$checksum = 'CD2C6BC19821C5DEAF02C7B62D56D8F5B79FE1A8CA3102905194F17BD6D52EF6'

#$packageArgs = @{
#  packageName    = 'protonvpn'
#  fileType       = 'exe'
#  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.5.1/ProtonVPN_v3.5.1_x64.exe'
#  silentArgs     = '/silent'
#  validExitCodes = @(0)
#  softwareName   = 'ProtonVPN*'
#  checksum       = '5658A2F5506EDE6BFE552BDE6AF35F1DACCD3D7092A60CE4BE85BFF806770056'
#  checksumType   = 'sha256'
#}
#Install-ChocolateyPackage @packageArgs

Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url $url -Checksum $checksum -ChecksumType 'SHA256' -GetOriginalFileName

Start-Process -FilePath (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname -ArgumentList "/silent"
Start-Sleep -Seconds 120

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe

Start-WaitandStop "ProtonVPN"
