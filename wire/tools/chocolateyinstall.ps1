$ErrorActionPreference = 'Stop';

$packageName = 'wire'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.5.2899/wire-3.5.2899.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6D75935E1E4A86D2F39B2EBCE259ABF2B78C9A334CC02E6EA6FF13A5A365E1FE -ChecksumType sha256
