$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://download.xnview.com/XnConvert-win.exe'
$checksum = '9F5930279C567CC84EE71CC2501A0067B322EFC155683FBCF9404265DBC28682'
$checksumType = 'sha256'
$url64 = 'http://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = 'CD22BD1C713B616446074A6AEE8DF04114F4C1612282F50BDAD93E9CE5E7CA0E'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
