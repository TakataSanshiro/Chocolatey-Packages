$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.14.3/Insomnia.Setup.5.14.3.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 2AECAB6CFFD155799CAEFC5E3E04C1104284E2F019711D6470BBD6BCC5367053 -ChecksumType sha256
