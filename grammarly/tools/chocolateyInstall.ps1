$ErrorActionPreference = 'Stop';

$packageName    = 'grammarly'
$installerType  = 'exe'
$url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0BEA2D870B362CB64AA6FB19C2FEADB3E561AD1642A29E28ABA24B345A2D7E62 -ChecksumType sha256
