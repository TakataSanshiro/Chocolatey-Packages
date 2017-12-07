$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.12.4/Insomnia.Setup.5.12.4.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum AF5FE1E6A56B55D24B8F3DA73F7216C6535D7C76983135F613DA0001D1CB1173 -ChecksumType sha256
