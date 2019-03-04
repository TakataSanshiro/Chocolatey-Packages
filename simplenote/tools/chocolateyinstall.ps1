$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.5.0/Simplenote-win-1.5.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B86A7B5F5E81E65D8E999E8A3D36C4B4484DB9A11ADF818FC714A267A40F3AB5 -ChecksumType sha256