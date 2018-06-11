$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum AB010D2DE9C3A5910356B0C83F46CABE6E4AFDA9167913022DE3C96D35204B17 -ChecksumType sha256
