$packageName = 'xenko'
$installerType = 'exe'
$url = 'https://store.xenko.com/Content/XenkoSetup.exe' 
$silentArgs = '/q'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C6F73CCDFA994E1F1D942F40E52202FC8CF84BAA58C37C60422B345EB901ECAB -ChecksumType sha256
