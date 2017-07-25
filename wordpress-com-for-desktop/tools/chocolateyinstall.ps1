$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://public-api.wordpress.com/rest/v1.1/desktop/windows/download'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum DD085637FCD6B369501E38BEC59EE1FD326061BAAEF90895ABE53107FC9CD1F5 -ChecksumType sha256
