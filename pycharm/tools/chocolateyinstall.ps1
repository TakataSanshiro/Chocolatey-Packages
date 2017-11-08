$ErrorActionPreference = 'Stop';

$packageName = 'pycharm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.jetbrains.com/python/pycharm-professional-2017.2.4.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0e7ba9ee642f751167e4a34de68c445dea8807ace56a5f54c94f4e07cddb1961 -ChecksumType sha256
