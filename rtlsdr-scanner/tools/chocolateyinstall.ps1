$ErrorActionPreference = 'Stop';

$packageName = 'rtlsdr-scanner'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/EarToEarOak/RTLSDR-Scanner/releases/download/v1.3.2/rtlsdr_scanner-setup-win32.exe'
$checksum = '03716668BEB4C6583632188EFCC728BF5859AE40CD50A87C8585374E4A9C1E1A'
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
