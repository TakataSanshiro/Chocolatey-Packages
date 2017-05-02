$ErrorActionPreference = 'Stop';

$packageName = 'grammarly'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\GrammarlyForWindows\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of GrammarlyForWindows at $Env:USERPROFILE\AppData\Local\GrammarlyForWindows
Remove-Item $Env:USERPROFILE\AppData\Local\GrammarlyForWindows -recurse
