$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://download.xnview.com/XnConvert-win.exe'
$checksum = '26D7FAB024EEEECE556AE11A4DA970BD41D5E8D873CD515FDE766409C498CEA2'
$checksumType = 'sha256'
$url64 = 'http://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = 'F3C7B7F0A18433B6198BABC505C40026D29529729E3393D9C74193DACAC26CE3'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
