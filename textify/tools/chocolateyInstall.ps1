$packageName = 'textify' 
$installerType = 'exe' 
$url = 'http://rammichael.com/downloads/textify_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 832FCDC538FF5C8270A921AA0F6D71CC45759BC5153BAA73E7696A76F068A9D7 -ChecksumType sha256
