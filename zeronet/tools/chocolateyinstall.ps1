$ErrorActionPreference = 'Stop';

$packageName = 'zeronet'
$url = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist/ZeroNet-win.zip' 
$checksum = '0807B49E8CBB78B81D8ADD93BA2E9B8C1C8DCE38EE664743F9779520BDC315FD'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
