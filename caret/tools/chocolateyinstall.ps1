$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/careteditor/caret/releases/download/3.1.0/CaretSetup.exe'
$checksum = '26CE9C0539CFC2C516CCBC1531CA528C3539E604D040CB9E72C6E35B2C85BB3E'
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
