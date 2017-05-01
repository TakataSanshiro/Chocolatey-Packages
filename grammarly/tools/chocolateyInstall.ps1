$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 5820616B37AACFFDDB69884BC378792F553A47F902D88A4844355E6E9DC0ECB2 -ChecksumType sha256
