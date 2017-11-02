$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.6.7/DevDocs-Setup-0.6.7.exe'
$checksum = 'C2C08D3FCBDB18E61973F333C236522D9A78170AB7CA0F03AF29AC25B953BB33'
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
