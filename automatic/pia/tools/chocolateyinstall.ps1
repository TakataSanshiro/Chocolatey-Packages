$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

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

Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.5.1-07760.exe' -Checksum '010B9BA48FEEACE8DDA320595344CBD30BA60AB803E87C1EFF0DFFA9BB7C43DD' -ChecksumType 'SHA256' -Url64 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.5.1-07760.exe' -Checksum64 'B045401C2D5432681A161B46E555607755A2A7D7E2360EFAF612A5FC34CB49C6' -ChecksumType64 'sha256' -GetOriginalFileName

Start-Process -FilePath (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
Start-Sleep -Seconds 20

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe

Start-Sleep -Seconds 60
