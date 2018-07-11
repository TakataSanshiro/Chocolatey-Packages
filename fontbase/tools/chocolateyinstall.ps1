$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://releases.fontba.se/win/FontBase-2.5.3.exe'
$checksum = '55B280142B39FCAD32936AA417FA328DAC4C46573E351F80B8E34EAA4238B83C'
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
