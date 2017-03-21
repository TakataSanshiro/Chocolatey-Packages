$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://getconfide.com/download/windows/dl' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 83B3CD41C6CC5AF3556A3BDDFCE9A13A509F4C51CAAAA6C50DF2F1936E7A9A71 -ChecksumType sha256
