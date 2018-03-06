$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/FlorianFe/Elements/releases/download/v1.1.4/Elements.exe'
$checksum = 'C9EF66EB8DC60018E05FE9006D3F658DC400AED665BA464D7C04D9002CB533BB'
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
