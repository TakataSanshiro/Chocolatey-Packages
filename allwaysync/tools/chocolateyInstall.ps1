$packageName = 'allwaysync' 
$installerType = 'exe' 
$url = 'https://allwaysync.com/content/download/allwaysync.exe'
$url64 ='https://allwaysync.com/content/download/allwaysync-x64.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum 13F7279EEA696F8EB0077A960F957ACF91C38B128B5F3FF56C98B89699E23EAE -ChecksumType sha256 -checksum64 3D5E2C11468152601C13806408EAE57B72A1AEA2276EB24BB94AD75E54F19DF3 -checksumtype64 sha256
