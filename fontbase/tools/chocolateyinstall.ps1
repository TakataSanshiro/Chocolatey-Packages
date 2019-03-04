$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://releases.fontba.se/win/FontBase-2.7.0.exe'
$checksum = '65F867A3DB3771215D00F22FC31EFFFA685C16A6A3C1868D9487D81A8DCD0DAC'
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
