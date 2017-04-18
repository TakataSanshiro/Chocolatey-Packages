$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://getconfide.com/download/windows/dl' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B34445B03A715FF3A1168ED03CBBB8CF6AC572F830A2825E9902A6870FA8C2AD -ChecksumType sha256
