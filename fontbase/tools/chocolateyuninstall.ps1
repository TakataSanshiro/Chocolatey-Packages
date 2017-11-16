$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\FontBase\Update.exe"

if(Test-Path "$file"){
  Uninstall-ChocolateyPackage `
    -PackageName $packageName `
    -FileType $installerType `
    -SilentArgs "$silentArgs" `
    -ValidExitCodes $validExitCodes `
    -File "$file"
 }else{
  Write-Host "The uninstall script doesn't exist, the software has already been uninstalled." -foreground "magenta"
}