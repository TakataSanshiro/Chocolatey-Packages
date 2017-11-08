$ErrorActionPreference = 'Stop';

$packageName = 'lepton'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hackjutsu/Lepton/releases/download/v1.5.0/Lepton.Setup.1.5.0.exe'
$checksum = 'A086A8521407CD07FDB016E1857168558D2DE9C4E5556FA5143A95E974903F07'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
