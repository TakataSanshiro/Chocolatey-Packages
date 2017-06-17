$packageName = 'textify' 
$installerType = 'exe' 
$url = 'http://rammichael.com/downloads/textify_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D3F93A4E740D5AFF453EDA2CEF71041FDC391860F1755FFE169EA2F443498CF9 -ChecksumType sha256
