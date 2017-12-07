$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.0.8/Simplenote-1.0.8-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7E32C7EEF8BE12F686ECA419633EEF8E02A88ABE89A6F6260EC792633AC0687A -ChecksumType sha256
