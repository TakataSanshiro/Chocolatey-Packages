$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.16.1/Insomnia.Setup.5.16.1.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 2F90A2A885D744DBB846738EDDE07F88266850D8B3DFDB173F4F30837622DDB8 -ChecksumType sha256
