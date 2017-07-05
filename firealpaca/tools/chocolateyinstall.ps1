$ErrorActionPreference = 'Stop';

$packageName = 'firealpaca' 
$installerType = 'exe' 
$url = 'http://115.146.50.91/firealpaca/bin/FireAlpaca_setup.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 1B2249048F26FE9D9A3554102EFBF386782A983161731EA50D7D56A493B8EFB6 -ChecksumType sha256
