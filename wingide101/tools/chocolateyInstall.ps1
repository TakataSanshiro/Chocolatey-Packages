$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.3/wingide-101-6.0.3-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 4AE40BFA99C4E92DF547C97045B9500CDE14A52B6FC867C63CBDB11BF44FFD46 -ChecksumType sha256
