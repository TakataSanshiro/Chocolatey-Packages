$ErrorActionPreference = 'Stop';

$packageName = 'firealpaca' 
$installerType = 'exe' 
$url = 'http://115.146.50.91/firealpaca/bin/FireAlpaca64_setup_2_0_1.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 54FEA1ECD761F7DDFFBFDF822746A2D159ECAEDE84B97BD4E6F429A9CB6E44C3 -ChecksumType sha256
