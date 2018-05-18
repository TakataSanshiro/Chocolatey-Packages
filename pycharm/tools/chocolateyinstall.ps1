$ErrorActionPreference = 'Stop';

$packageName = 'pycharm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.jetbrains.com/python/pycharm-professional-2018.1.3.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum EE9E788F45E98BFCB7B9554657C86748911D2A17AA87A1BE43DF50457B4A9A60 -ChecksumType sha256
