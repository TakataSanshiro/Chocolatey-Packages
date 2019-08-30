$ErrorActionPreference = 'Stop';

$packageName    = 'fontbase'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://releases.fontba.se/win/FontBase-2.9.4.exe'
$checksum       = '92477D14D09E0437B76AA44D532858B705BB3087749DBD00E4B16DB3754C6B74'
$checksumType   = 'sha256'
$silentArgs     = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
