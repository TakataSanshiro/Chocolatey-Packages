$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B17CF6EA131F5BDB27A326CD7C2ECE0F88BBC116C8119775F123E9D754EB1782 -ChecksumType sha256
