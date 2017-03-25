$packageName = 'grammarlyformsoffice' 
$installerType = 'exe' 
$url = 'https://download-office.grammarly.com/latest/GrammarlyAddInSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum F3DB7B7952B7DFD21CC7812E66FF50227F0AB261D13BE08583272A68F543FDF7 -ChecksumType sha256
