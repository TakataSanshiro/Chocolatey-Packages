$ErrorActionPreference = 'Stop';

$packageName = 'pycharm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.jetbrains.com/python/pycharm-professional-2017.2.3.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 9ce635b5bb8de851d5613a79d3724b11018e71953f9dbcc1f8aecbcb8d019c52 -ChecksumType sha256
