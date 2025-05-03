$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'https://github.com/ProtonVPN/win-app/releases/download/4.1.10/ProtonVPN_v4.1.10_x64.exe'
$checksum = 'CAFE79BBD331282078CA546694D0299FB4DB4DC721B021EA307010179C0462BF'

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
