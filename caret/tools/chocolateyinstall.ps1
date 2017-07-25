$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/careteditor/caret/releases/download/3.3.1/CaretSetup.exe'
$checksum = 'C8FD380AA45AC5766E4038E4E44DC3426DDA58B681CAE647AA56B6D518E33A1B'
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
