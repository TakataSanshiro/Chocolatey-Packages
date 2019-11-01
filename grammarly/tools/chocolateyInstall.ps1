$ErrorActionPreference = 'Stop';

$packageName    = 'grammarly'
$installerType  = 'exe'
$url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 1BDD0BADB579768DA0BFB7D3D62858686033EE2C9005BB27F322A6BD30B1B100 -ChecksumType sha256
