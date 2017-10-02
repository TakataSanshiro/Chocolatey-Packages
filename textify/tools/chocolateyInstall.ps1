$packageName = 'textify' 
$installerType = 'exe' 
$url = 'http://rammichael.com/downloads/textify_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum ADCF10CFB77099FD5244C53959A15A548E3872D7FEF216781AB543C06CC34303 -ChecksumType sha256
