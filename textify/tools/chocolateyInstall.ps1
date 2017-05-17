$packageName = 'textify' 
$installerType = 'exe' 
$url = 'http://rammichael.com/downloads/textify_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum DFCDBB7E46FB9F396BD9C0845E593731EF3FE6FD53A54841F56665D070DC5E5C -ChecksumType sha256
