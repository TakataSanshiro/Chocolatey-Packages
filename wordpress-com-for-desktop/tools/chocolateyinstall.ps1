$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/wp-desktop/releases/download/v3.3.0/WordPressDesktop-Setup-3.3.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum AFA2C086EB633892477648C61C9C62B0B99F520E5F8D05A9524C51B074B25EDA -ChecksumType sha256
