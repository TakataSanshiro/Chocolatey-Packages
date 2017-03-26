$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide/6.0.3/wingide-6.0.3-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6756649FBF3BC7A8D98C45ADC840778B684CE26549F981F43184E67A474DC90C -ChecksumType sha256
