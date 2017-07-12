$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/careteditor/caret/releases/download/3.2.1/CaretSetup.exe'
$checksum = '5E47203CFCA1F53F1A9925E48BD403DF3D116C5C6A7553941DAC033AB18FE215'
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
