$ErrorActionPreference = 'Stop';

$packageName = 'divvy'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://mizage.com/downloads/InstallDivvy.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum E1E51A0FB54307E4438E2CC77D4B10E4353B01E0DC036ECC5523C932B054F529 -ChecksumType sha256