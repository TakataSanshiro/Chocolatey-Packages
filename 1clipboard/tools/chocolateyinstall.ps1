$ErrorActionPreference = 'Stop';

$packageName = '1clipboard'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://1clipboard.io/download/windows/1ClipboardSetup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum A3425082F63FFB0F7AABFE5C01BBD6346D90ACB88366CF293FB55AD2C85D9196 -ChecksumType sha256
