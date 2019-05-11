$ErrorActionPreference = 'Stop';

$packageName = 'coyim'
$url = 'https://github.com/coyim/coyim/releases/download/v0.3.11/coyim-windows-0.3.11.zip' 
$checksum = '3C4B7C514BF2D6A9FF7E734739C4074008A79496E5947648A4DAA873726AB853'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
