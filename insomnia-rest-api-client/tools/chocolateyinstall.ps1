$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/getinsomnia/insomnia/releases/download/v5.16.6/Insomnia.Setup.5.16.6.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 654756F1AC02E961E30BC2ED54EB6D4E5466BD2643633DB1DC6103872452033C -ChecksumType sha256
