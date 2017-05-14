$ErrorActionPreference = 'Stop';

$packageName = 'insomnia'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.0.20/Insomnia.Setup.5.0.20.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 85FD609DB7AE82C7C533511EEC36EC9CD37E63378786409564A062BCDC2E716D -ChecksumType sha256
