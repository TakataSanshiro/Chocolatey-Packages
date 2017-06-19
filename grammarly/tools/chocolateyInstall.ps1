$ErrorActionPreference = 'Stop';

$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 2FFBDAA976CF8882C1E6DD3A0069840C2CCD0AB6FB30E55EE96590731C7B49D4 -ChecksumType sha256
