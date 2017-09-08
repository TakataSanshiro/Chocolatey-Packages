$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/careteditor/caret/releases/download/3.4.6/CaretSetup.exe'
$checksum = '29B9045BA70CD5576DAA3B871CF08FCFA8811537E11CB9C62E54555CCE327C3D'
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
