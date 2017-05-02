$ErrorActionPreference = 'Stop';

$packageName = 'bitcrypt'
$installerType = 'exe'
$silentArgs = '/currentuser /S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\bitcrypt\Uninstall bitcrypt.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Bitcrypt at $Env:USERPROFILE\AppData\Local\Programs\bitcrypt
Remove-Item $Env:USERPROFILE\AppData\Local\Programs\bitcrypt -recurse
