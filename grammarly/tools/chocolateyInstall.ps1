$ErrorActionPreference = 'Stop';

$packageName    = 'grammarly'
$installerType  = 'exe'
$url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 4FE1904D631F81D69706CCD20325D085C9EB92DC95390AFCCE227A8DFE331F6A -ChecksumType sha256
