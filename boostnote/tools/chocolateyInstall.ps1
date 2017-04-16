$packageName = 'boostnote'
$installerType = 'exe'
$url = 'https://github.com/BoostIO/boost-releases/releases/download/v0.8.7/Boostnote-win.exe' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B87BD85BE4167FF3D360D1918E04C9F6817EA9FD91B2D4E4A0FA8794DA7FA966 -ChecksumType sha256
