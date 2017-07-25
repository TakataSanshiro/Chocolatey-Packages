$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://download.xnview.com/XnConvert-win.exe'
$checksum = '2B5CFC3777B980A31D2CAD99682BEBA64B74F87609A51705A7EBF22B77B10A5F'
$checksumType = 'sha256'
$url64 = 'http://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = '60DF3948957343EBD262BFC5ECF9BE02FEAE7D3E2747A977FC99744839D5FEC5'
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
