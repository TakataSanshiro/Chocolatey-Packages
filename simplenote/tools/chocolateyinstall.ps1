$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.1.1/Simplenote-windows-1.1.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 264F6CDC1DBE4E3C046E62AA531D6EEA9E6DA2303930B61DB022EF8144ED4F7B -ChecksumType sha256