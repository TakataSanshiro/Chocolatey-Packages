$packageName = 'bitcrypt' 
$installerType = 'exe' 
$url = 'https://github.com/Nazgul07/BitCrypt/releases/download/v0.0.3/bitcrypt-0.0.3-win-64bits.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D555FB638F7A9E671E0899E514BABADB9D9D28EDD552AD15194C70C3A24272D5 -ChecksumType sha256


