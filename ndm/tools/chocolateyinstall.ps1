$ErrorActionPreference = 'Stop';

$packageName = 'ndm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/720kb/ndm/releases/download/v1.2.0/ndm-1.2.0.exe'
$checksum = '2AF8B2AAF106B0F3411F9E9594715B3A29ECE444EA62A7024AC09C09CA0F475D'
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
