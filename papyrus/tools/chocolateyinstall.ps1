$ErrorActionPreference = 'Stop';

$packageName  = 'papyrus'
$url          = 'https://github.com/morkro/papyrus/releases/download/1.0.3/Papyrus-windows-1.0.3.zip'
$checksum     = '4C0AD2489640A79F00642B7D13CBDD40DFA3B5BBF8F64CC720DDD9A576FF08A5'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
