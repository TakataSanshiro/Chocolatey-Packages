$ErrorActionPreference = 'Stop';

$packageName = 'lepton'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hackjutsu/Lepton/releases/download/v1.7.3/Lepton-Setup-1.7.3.exe'
$checksum = '8E57F588456C6CC2C430EAFD5BABD9896ED6563139D2135F61F0BD852D51478B'
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
