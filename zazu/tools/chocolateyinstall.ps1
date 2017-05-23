$ErrorActionPreference = 'Stop';

$packageName = 'zazu'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/tinytacoteam/zazu/releases/download/v0.5.2/zazu-Setup-0.5.2.exe'
$checksum = 'EDCCF301C4C53C4227FDAAC7D2EA56A5805DF5BDDBB6FF627176509ECA02B455'
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
