$packageName = 'airexplorer' 
$installerType = 'exe' 
$url = 'http://www.airexplorer.net/downloads/AirExplorer-Installer.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"   -validExitCodes $validExitCodes -Checksum 7C1AF260C2B38BD3B7612944BD4029088F9233977507F793D43084845289CE01 -ChecksumType sha256
