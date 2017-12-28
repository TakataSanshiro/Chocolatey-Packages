$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/FlorianFe/Elements/releases/download/v1.1.3/Elements.exe'
$checksum = 'DA94EB9C1A6C2244B5373BFB5CBD39863D35566D52EB48197719A8B51A728D09'
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
