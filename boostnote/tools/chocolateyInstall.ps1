$packageName = 'boostnote'
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.9/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 688931855729AC759FCC645420614C9564528F837E07730F611539B4D872D960 -ChecksumType sha256
