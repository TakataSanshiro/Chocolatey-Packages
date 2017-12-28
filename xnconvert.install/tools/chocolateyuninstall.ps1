$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install' 
$installerType = 'exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$file = "${env:ProgramFiles}\XnConvert\unins000.exe"
	}
	else{
	$file = "${env:ProgramFiles(x86)}\XnConvert\unins000.exe"
}

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