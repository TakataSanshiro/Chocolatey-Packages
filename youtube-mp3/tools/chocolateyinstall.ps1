$ErrorActionPreference = 'Stop';

$packageName = 'youtube-mp3'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/MedZed/Electron-Youtube-to-Mp3-Converter/releases/download/1.0.0/Youtube-mp3.exe'
$checksum = '8F6EAC3E64974830542BCC67C904E16AC054EA412C1D631B9DE9C13FF441C44A'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
