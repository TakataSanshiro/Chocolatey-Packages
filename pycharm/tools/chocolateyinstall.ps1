$ErrorActionPreference = 'Stop';

$packageName = 'pycharm'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.jetbrains.com/python/pycharm-professional-2017.3.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B9AB7F268F7A515BABB641E8EAED2A30AF1140014E8DE67E7013917D3D9E516D -ChecksumType sha256
