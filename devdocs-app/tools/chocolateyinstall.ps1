$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/egoist/devdocs-app/releases/download/v0.3.0/DevDocs.Setup.0.3.0-ia32.exe'
$checksum = '0C9012C74083BA87D59507573F7C99C745656CBCF285FFC6F538D5D233933263'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
