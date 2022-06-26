$ErrorActionPreference = 'Stop';

$packageName  = 'winxcorners'
$url          = 'https://github.com/vhanla/winxcorners/releases/download/1.2.1b/WinXCornersRegistryFix.zip'
$checksum     = '26F8692CE24EAC1DF39B5852649818EA790F7EA0AFAF2439DC911FD91B2E85A9'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
