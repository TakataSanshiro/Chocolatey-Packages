$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.1.2/Simplenote-windows-1.1.2.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 3F50DF27BBA1230A6EEAC88B24EC99449766FF06A27CE29F073D18A12F18EF2F -ChecksumType sha256