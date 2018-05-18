$ErrorActionPreference = 'Stop';

$packageName = 'lepton'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hackjutsu/Lepton/releases/download/v1.6.2/Lepton-Setup-1.6.2.exe'
$checksum = 'FD6702DAB02083A0B2576D490B3C22C08318F89C4B5D7752FB28CDB24F26E141'
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
