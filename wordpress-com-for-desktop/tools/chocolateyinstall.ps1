$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/Automattic/wp-desktop/releases/download/v3.7.0/WordPressDesktop-Setup-3.7.0.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 51E8758266D72F0915D5B2B7C06C76B0A712310B8D20AE66E3A8515D8F03863B -ChecksumType sha256
