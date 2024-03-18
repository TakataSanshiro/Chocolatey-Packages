$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$url = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.5.3-07926.exe'
$checksum = '3f9ce1e90f228bf441eabb48d4519dfb8271e8e350b52e2a49cb1fddbf2e3fa9'
$url64 = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.5.3-07926.exe'
$checksum64 = 'd42d9ad7f347dbabbca56d2d264de653d9448d029eb18a53d69fd7fed3315094'

#$packageArgs = @{
#  packageName    = 'pia'
#  fileType       = 'exe'
#  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.3.1-06924.exe'
#  checksum       = '4bc9bfaeeb63870406d4ce403190a4f9fafeadefad2338a45ac235810f423bd0'
#  checksumType   = 'sha256'
#  silentArgs     = ''
#  validExitCodes = @(0)
#  softwareName   = 'pia*'
#  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.3.1-06924.exe'
#  checksum64     = '5a9d98995f8c388eee2b92d5fb15c8d346c2cb1ef9b9c12922d2bd5bfc57b175'
#  checksumType64 = 'sha256'
#}
#Install-ChocolateyPackage @packageArgs

Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url $url -Checksum $checksum -ChecksumType 'SHA256' -Url64 $url64 -Checksum64 $checksum64 -ChecksumType64 'sha256' -GetOriginalFileName

Start-Process -FilePath (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
Start-Sleep -Seconds 20

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe

Start-Sleep -Seconds 60
