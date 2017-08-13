$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.14/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 3EA1BF7A90683BEC8156F585D794B2E521472E7DD3527210166E696C730114BD -ChecksumType sha256
