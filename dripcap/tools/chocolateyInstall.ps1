$packageName = 'dripcap'
$installerType = 'exe'
$url = 'https://github.com/dripcap/dripcap/releases/download/v0.6.15/dripcap-windows-amd64.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum FE9745894DF4E59A2F21EBC4F560941A7AAB9B3872059B5A0EF666AB8F2AFB8D -ChecksumType sha256
