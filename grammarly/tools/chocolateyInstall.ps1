$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 35ADE64FA15FCA78B0F639A91FAE9B1FB9B9718FBC8712BCD317D73027F98847 -ChecksumType sha256
