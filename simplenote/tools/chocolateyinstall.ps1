$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.1.6/Simplenote-1.1.6-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum CD822C69979C6A13D2680D87CDC60B26538F46C97D9DD5D389ED7C594720D07C -ChecksumType sha256