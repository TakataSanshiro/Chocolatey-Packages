$ErrorActionPreference = 'Stop';

$packageName = 'wire'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/wireapp/wire-desktop/releases/download/release%2F3.0.2828/wire-3.0.2828.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C3B2C2B487864429B69D1DE5CE67814A599E939B6D0A540425A0BFF89FBAF8B8 -ChecksumType sha256
