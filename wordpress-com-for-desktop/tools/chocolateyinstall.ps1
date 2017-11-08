$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/wp-desktop/releases/download/v3.0.0/WordPress.com-3.0.0-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 1F93B1CD0A36590D0838F6F5E9A58C5ABCFE5B4C6861EFB243B6F4B6B4146F17 -ChecksumType sha256
