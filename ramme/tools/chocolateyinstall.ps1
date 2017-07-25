$ErrorActionPreference = 'Stop';

$packageName = 'ramme'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/terkelg/ramme/releases/download/v3.2.3/Ramme-Setup-3.2.3.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 707DD10D9D2C825FF353EC76418C18EEEB51C9D0776BD601C97F7772F8ACA8E7 -ChecksumType sha256
