$ErrorActionPreference = 'Stop';

$packageName    = 'grammarly'
$installerType  = 'exe'
$url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 91B8BF2007BEF950EFF1C6FE2C7FF565E18DA59C35CB711B7E757C80E294C684 -ChecksumType sha256
