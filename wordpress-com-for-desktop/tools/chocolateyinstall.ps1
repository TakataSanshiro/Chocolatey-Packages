$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://public-api.wordpress.com/rest/v1.1/desktop/windows/download'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 5E97E65663B9F2D250C8CA01F28736FBF78593EEF194A7F291B1F72258C12285 -ChecksumType sha256
