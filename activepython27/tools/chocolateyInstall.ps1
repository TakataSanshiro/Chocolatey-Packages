$packageName = 'activepython27' 
$installerType = 'exe' 
$url =  'https://downloads.activestate.com/ActivePython/releases/2.7.13.2713/ActivePython-2.7.13.2713-win32-x86-401787.exe' 
$url64 =  'https://downloads.activestate.com/ActivePython/releases/2.7.13.2713/ActivePython-2.7.13.2713-win64-x64-401787.exe' 
$silentArgs = '/Q' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum 0587A31FAC947983AAE56520AD3C7FA8BC644660213B29B9BDDED9A6615DF010 -ChecksumType sha256 -checksum64 B8B397A737C2AFC5AF472901ED628AEF0026A3832C997D61CBEFA8B44E0EB42D -checksumtype64 sha256
