$ErrorActionPreference = 'Stop';

$packageName = 'signal'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://updates.signal.org/desktop/Signal-win-1.0.37.exe' 
$checksum = '79197F9615D14471F8AE7BFF2A6FF2043FBCF5EDC09F3F4AE22A5BB0C8947BD5'
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
