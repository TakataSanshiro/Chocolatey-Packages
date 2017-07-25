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

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
