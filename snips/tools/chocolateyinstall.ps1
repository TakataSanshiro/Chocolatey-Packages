$ErrorActionPreference = 'Stop';

$packageName  = 'snips'
$url          = 'https://github.com/ethanpil/snips/releases/download/1.2/snips-v1.2.zip' 
$checksum     = '6C0FD412EF32CD47F458F4EDD47B9673956A75DC06560465BD11F9788CD3DBD6'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
