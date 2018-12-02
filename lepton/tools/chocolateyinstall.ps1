$ErrorActionPreference = 'Stop';

$packageName = 'lepton'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hackjutsu/Lepton/releases/download/v1.7.0/Lepton-Setup-1.7.0.exe'
$checksum = '5B1D8D87B1429211A5FAAAF8754E31C901E27E85DA13A6C3DDC4DDA207430BE0'
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
