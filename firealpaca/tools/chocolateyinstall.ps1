$ErrorActionPreference = 'Stop';

$packageName = 'firealpaca' 
$installerType = 'exe' 
$url = 'http://115.146.50.91/firealpaca/bin/FireAlpaca64_setup_2_1_5.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 1D4EC65DE6B1A4228A17D4B36745A56057ED633815533F542ABA712EB842EAD2 -ChecksumType sha256
