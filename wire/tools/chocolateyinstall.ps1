$ErrorActionPreference = 'Stop';

$packageName = 'wire'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/wireapp/wire-desktop/releases/download/release%2F3.4.2885/wire-3.4.2885.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum CC7B832A771032CBDD95037BDC7C15E8333BD5B335F5AAAB778EE37DEC4143EA -ChecksumType sha256
