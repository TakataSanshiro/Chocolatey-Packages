$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.18/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 4E64F82CA5BFD6C803B713C478A510EEA5D4CA71844805CB66A2563B397F7B3C -ChecksumType sha256