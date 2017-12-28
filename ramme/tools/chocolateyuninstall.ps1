$ErrorActionPreference = 'Stop';

$packageName = 'ramme'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\Ramme\Uninstall Ramme.exe"

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