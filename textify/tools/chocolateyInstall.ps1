$packageName = 'textify' 
$installerType = 'exe' 
$url = 'http://rammichael.com/downloads/textify_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 996CD588D664188CE41696B729A58876B5B0209492CFD7C280E6C57E7148C5F2 -ChecksumType sha256
