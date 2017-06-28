$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://releases.fontba.se/win/2.0.2/FontBase%20Setup%202.0.2.exe'
$checksum = 'BAF14B07D2BDB5C04A902677371044D7921127A19B080ECA9CA73F193E601E93'
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
