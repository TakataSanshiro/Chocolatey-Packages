$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/wp-desktop/releases/download/3.2.0/WordPress.com-3.2.0-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 379847907E919344C0F3872BAB201F7429C6F500792DAD75E49749A7EC4DDF1A -ChecksumType sha256
