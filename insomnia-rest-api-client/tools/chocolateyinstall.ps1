$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.7.14/Insomnia.Setup.5.7.14.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7BEDAA7B08C12C0B1F2877283CF3FD42FB8D4403E1970546B441EFED04A9F071 -ChecksumType sha256
