$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 74A0599F57BEC12C328F488282FCD83A92F583D5598D37EF17A18DCA88BFAA68 -ChecksumType sha256
