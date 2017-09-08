$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.6.5/DevDocs-Setup-0.6.5.exe'
$checksum = 'A3A3FE6802EA80A23E66442BF916FDC941B3487F09AD53C7DFE9186378D555D7'
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
