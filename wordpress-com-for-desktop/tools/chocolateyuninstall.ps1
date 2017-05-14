$ErrorActionPreference = 'Stop';

$packageName = 'wordpress-com-for-desktop'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\WordPress.com\Uninstall WordPress.com.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of WordPress.com at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\WordPress.com -recurse
