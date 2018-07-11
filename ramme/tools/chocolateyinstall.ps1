$ErrorActionPreference = 'Stop';

$packageName = 'ramme'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/terkelg/ramme/releases/download/v3.2.5/Ramme-Setup-3.2.5.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 39AAAAA20186DD1EE20E55AEF02D00752E68EA1D74268417303515BB33511457 -ChecksumType sha256
