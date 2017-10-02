$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://download.xnview.com/XnConvert-win.exe'
$checksum = 'C362500CA4225068C528DEDCE6F4B7D7D4E5C31861C490FF3FBBA0745C3A119B'
$checksumType = 'sha256'
$url64 = 'http://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = 'BD8181329FEF4BF58315E53B407CB9D1A1DF4FB0C429F6B43CA3704F3E25A34E'
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
