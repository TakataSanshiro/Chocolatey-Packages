$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.11.12/BoostnoteSetup.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 342D8FC92262927CCC21398C7F2ABE164F082B876B9F395AF8C1C72AA706024A -ChecksumType sha256