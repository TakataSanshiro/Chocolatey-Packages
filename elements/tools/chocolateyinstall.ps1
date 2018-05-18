$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/FlorianFe/Elements/releases/download/v1.1.5/Elements.exe'
$checksum = '5535817B54357FA70189AB711651BDE3320B020DBED6EE95565C2F8335151C27'
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
