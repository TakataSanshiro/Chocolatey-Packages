$ErrorActionPreference = 'Stop';

$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 98C95CB57DB756F0D65FF54C9CC3D92165672E1EC323127BA6321DFAFB2C5ED4 -ChecksumType sha256
