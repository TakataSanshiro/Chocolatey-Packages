$packageName = 'boostnote'
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.6/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum F13FAF62CDCADFB0B35531F6EDFB1EB603D7154AEEE09F802075759919169939 -ChecksumType sha256
