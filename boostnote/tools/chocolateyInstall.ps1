$packageName = 'boostnote'
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.8/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7D6467B39BED9C636BA09608A4DAF180426DEF038EDE7CDB899C0C8C84588E45 -ChecksumType sha256
