$ErrorActionPreference = 'Stop';

$packageName    = 'fontbase'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://releases.fontba.se/win/FontBase-2.8.5.exe'
$checksum       = '1D3C4CF6735F7A987C12CDA18614C6A1EEDB474A8AFB0D8760781A90EB7C2CA0'
$checksumType   = 'sha256'
$silentArgs     = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
