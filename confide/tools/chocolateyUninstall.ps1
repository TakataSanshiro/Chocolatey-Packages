$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\Confide\Update.exe"
$userprofile = "$Env:USERPROFILE\AppData\Local\Confide"

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

if(Test-Path "$userprofile"){
  # Delete junk files of Confide at $Env:USERPROFILE\AppData\Local\Confide
  Remove-Item  $userprofile -recurse
}else{
  Write-Host "The userprofile data doesn't exist, the software has already been uninstalled." -foreground "magenta"
}