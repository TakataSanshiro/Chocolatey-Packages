$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 
$file = "${env:ProgramFiles(x86)}\Wing IDE 6.0\unins000.exe"

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