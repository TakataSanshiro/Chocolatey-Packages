$ErrorActionPreference = 'Stop';

$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6CED8A6FEA07C9214C9ACBEB330E227F7FB74CC783CB4CCFC8C63B736945027F -ChecksumType sha256
