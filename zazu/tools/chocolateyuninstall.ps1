$packageName = 'zazu'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\zazu\Uninstall Zazu.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of Zazu at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\zazu -recurse
