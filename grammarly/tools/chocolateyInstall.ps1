$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 5F852F5F06D8B5689522EF43782E693D112E95B431FA55510ABDA146CC1CA576 -ChecksumType sha256
