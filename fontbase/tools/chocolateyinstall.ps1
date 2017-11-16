$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://releases.fontba.se/win/2.2.3/FontBase%20Setup%202.2.3.exe'
$checksum = 'E771A810021C5C94726573DE18696250F4EDE415995B9C63D4F42C5E1188BEDD'
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
