$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://nuts.itch.zone/download/windows' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 39545FBBB8D48A58F563B60FB1DCB931148F2783A2C4A95F3F4400758853FBF2 -ChecksumType sha256


