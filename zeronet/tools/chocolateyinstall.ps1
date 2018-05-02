$ErrorActionPreference = 'Stop';

$packageName = 'zeronet'
$url = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist/ZeroNet-win.zip' 
$checksum = 'EBA104F51B342C932F19141403A06DAC57CD45694D56AC077BA45FC149762363'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
