$packageName = 'activepython' 
$installerType = 'exe' 
$url =  'https://downloads.activestate.com/ActivePython/releases/3.6.0.3600/ActivePython-3.6.0.3600-win32-x86-401834.exe' 
$url64 =  'https://downloads.activestate.com/ActivePython/releases/3.6.0.3600/ActivePython-3.6.0.3600-win64-x64-401834.exe' 
$silentArgs = '/Q' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum B091E6382AB4AB762485325C6A065F8EA086456D1C524FF53C9BC04151C484E2 -ChecksumType sha256 -checksum64 F99A0DAA8AB50B0285ECF3B1198022BB2A76A82747BDAA09F6F677F1206A643B -checksumtype64 sha256
