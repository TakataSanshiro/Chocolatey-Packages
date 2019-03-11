$ErrorActionPreference = 'Stop';

$packageName = 'datapixels'
$url = 'https://github.com/gmattie/Data-Pixels/releases/download/1.1.0/Data.Pixels.Playground-win32-x64.zip' 
$checksum = '9CBBE12EF711494B23C7DC9B84C8D5CB68F880A11D193FA4B96A8DF7BAE763AD'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
