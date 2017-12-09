$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/wp-desktop/releases/download/v3.1.0/WordPress.com-3.1.0-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum F8882DEE842537425D3E41DB6541A6955507966D2F95E0F344E0652A89DD71AB -ChecksumType sha256
