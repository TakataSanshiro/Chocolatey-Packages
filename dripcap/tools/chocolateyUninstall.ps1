$ErrorActionPreference = 'Stop';

$packageName = 'dripcap'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\dripcap\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Dripcap at $Env:USERPROFILE\AppData\Local\dripcap
Remove-Item $Env:USERPROFILE\AppData\Local\dripcap -recurse
