$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\GitHubDesktop\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of github-desktop at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\GitHubDesktop -recurse
Remove-Item "$Env:USERPROFILE\AppData\Roaming\GitHub Desktop" -recurse