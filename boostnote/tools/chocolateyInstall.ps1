$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.11.4/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 363F817BCB42CEA7A5F7BB6D2984E3649B47611057D06E799C5F179AB127EEE6 -ChecksumType sha256