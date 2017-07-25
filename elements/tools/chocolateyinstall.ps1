$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/FlorianFe/Elements/releases/download/v1.1.2/Elements.exe'
$checksum = 'B271AA26C6EA06B939D4A5E2986B2F1BC6A3661CD62190680FEDB4C351E44C1F'
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
