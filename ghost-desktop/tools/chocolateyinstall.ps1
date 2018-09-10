$ErrorActionPreference = 'Stop';

$packageName = 'ghost-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/TryGhost/Ghost-Desktop/releases/download/v1.7.0/ghost-desktop-1.7.0-windows-desktop.exe'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 53B6896D55BA4D63FCAEC00BEB44AF75F196B033D76E39D9838C980787BBE060 -ChecksumType sha256