$ErrorActionPreference = 'Stop';

$packageName = 'firealpaca' 
$installerType = 'exe' 
$url = 'http://115.146.50.91/firealpaca/bin/FireAlpaca64_setup_2_1_3.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0798E3975DF1974725D81F4BD4A544F8CEA76E49E1A5F783116331FAFC749535 -ChecksumType sha256
