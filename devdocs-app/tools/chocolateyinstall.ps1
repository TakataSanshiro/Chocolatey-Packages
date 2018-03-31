$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.6.9/DevDocs-Setup-0.6.9.exe'
$checksum = 'DA559B3AD88BB71BDAA22582FFFE9710953384F85167E36B8CA882E159EE2C05'
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
