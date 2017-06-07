$ErrorActionPreference = 'Stop';

$packageName = 'ramme'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/terkelg/ramme/releases/download/v3.2.2/Ramme-Setup-3.2.2.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 9C4CAA7985BB2982FCD48814B12521A239B56B4D87A67466502FC179E4A5B575 -ChecksumType sha256
