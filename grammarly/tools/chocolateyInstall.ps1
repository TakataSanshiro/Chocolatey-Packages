$ErrorActionPreference = 'Stop';

$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum E43E99BE5899CBBD90F6E67525D657C405CAF8A88176DF3063062C68FC03C4BB -ChecksumType sha256
