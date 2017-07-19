$ErrorActionPreference = 'Stop';

$packageName = 'tagflow' 
$installerType = 'exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\Programs\TagFlow\Uninstall TagFlow.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of TagFlow at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\TagFlow -recurse
