$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.xnview.com/XnConvert-win.exe'
$checksum = 'FA79A72C765A3C2E81B2E45952A969DD79BB982138872DA588DE6C33E71CF0D7'
$checksumType = 'sha256'
$url64 = 'https://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = '4DC63CFA5D2CB05FE633C454C4A1F1B64F3957449D518FCF3125C6B8D771C8C9'
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
