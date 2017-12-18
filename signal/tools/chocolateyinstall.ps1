$ErrorActionPreference = 'Stop';

$packageName = 'signal'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://updates.signal.org/desktop/Signal-win-1.0.41.exe' 
$checksum = 'CDDD0F377E236642B1404761F06BE52F990D41C613209310BEA831C4F50B35A5'
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
