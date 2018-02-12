$ErrorActionPreference = 'Stop';

$packageName = 'pycharm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.jetbrains.com/python/pycharm-professional-2017.3.3.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 086EC491451E740B89B6329A79E9443F922B1EE0868D39E978717E1D7270FF84 -ChecksumType sha256
