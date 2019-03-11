$ErrorActionPreference = 'Stop';

$packageName = 'whale'
$url = 'https://github.com/1000ch/whale/releases/download/v0.16.0/Whale-windows-v0.16.0.zip'
$checksum = 'E87C3EB2ECD192A6F49A1218507B22F9113515E35DE18B0A9BC8D5B815282880'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
