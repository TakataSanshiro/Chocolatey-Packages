$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://releases.fontba.se/win/FontBase-2.6.4.exe'
$checksum = '24FF560F1E51691FEE273886988043168B26FFEFB3A25CFDB7498E4B0C935FEF'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
