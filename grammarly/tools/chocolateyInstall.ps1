$ErrorActionPreference = 'Stop';

$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 630800B0CB5A8CD7597A39A0200DA6D3553AFA31D7A18098341F1FEFC1317B9F -ChecksumType sha256
