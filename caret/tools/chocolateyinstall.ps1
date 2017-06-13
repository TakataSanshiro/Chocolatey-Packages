$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/careteditor/caret/releases/download/2.1.3/CaretSetup.exe'
$checksum = '69987A77B1999C87AD178571ACEC5DCFD79B1AD92E31B430798650143EF29478'
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
