$ErrorActionPreference = 'Stop';

$packageName    = 'portexpert'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://kcsoftwares.com/files/portexpert_lite.exe'
$checksum       = '4B9977543F68D0CCAD12DB24476EEA55D9E4456FB5F001994C5B7AC80FD4A0A6'
$checksumType   = 'sha256'
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
