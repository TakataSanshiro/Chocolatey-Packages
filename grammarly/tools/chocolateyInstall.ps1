$packageName = 'grammarly' 
$installerType = 'exe' 
$url = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 3E3DAABFF26BB436EF3925B83CFC9553D3269695C31A4F76F168A508018826ED -ChecksumType sha256
