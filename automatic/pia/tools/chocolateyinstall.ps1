$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$url = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.6.1-08339.exe'
$checksum = 'b407c39d82398aff52602ae98a2b7cd904023a5f6d1e88416dc30b2c31a3cf56'

#$packageArgs = @{
#  packageName    = 'pia'
#  fileType       = 'exe'
#  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.3.1-06924.exe'
#  checksum       = '4bc9bfaeeb63870406d4ce403190a4f9fafeadefad2338a45ac235810f423bd0'
#  checksumType   = 'sha256'
#  silentArgs     = ''
#  validExitCodes = @(0)
#  softwareName   = 'pia*'
#}
#Install-ChocolateyPackage @packageArgs

Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url $url -Checksum $checksum -ChecksumType 'SHA256' -GetOriginalFileName

Start-Process -FilePath (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
Start-Sleep -Seconds 20

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe

Start-Sleep -Seconds 60
