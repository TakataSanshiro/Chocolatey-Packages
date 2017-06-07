$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://public-api.wordpress.com/rest/v1.1/desktop/windows/download'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 970D375C50C281CC1E95E83EF923512286E6533E8B8DF4417DF6DC7EDD3ECACC -ChecksumType sha256
