$ErrorActionPreference = 'Stop';

$packageName    = 'fontbase'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://releases.fontba.se/win/FontBase-2.8.2.exe'
$checksum       = 'D7552BFE94D009A764FAAF5DB61FBE6E0BD4F838F744DE1D0747B5080DA19214'
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
