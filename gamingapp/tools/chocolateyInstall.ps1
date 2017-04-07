$packageName = 'gamingapp' 
$installerType = 'exe' 
$url = 'http://download.msi.com/uti_exe/gaming_app_6.zip' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\6.2.0.08\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum 5BC321CF851E32CCC5CE5E5A7FCA16878F834FB389E5AE1AE130190452E13A6E -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
