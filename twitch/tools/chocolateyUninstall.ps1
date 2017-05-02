$ErrorActionPreference = 'Stop';

$packageName = 'twitch' 
$installerType = 'exe' 
$silentArgs = '/qn' 
$validExitCodes = @(0) 
$file = 'Get-UninstallRegistryKey -SoftwareName "twitch"'.UninstallString

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 