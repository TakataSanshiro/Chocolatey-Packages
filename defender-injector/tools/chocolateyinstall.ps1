$ErrorActionPreference = 'Stop';

$packageName = 'defender-injector'
$url = 'https://www.sordum.org/files/small-tools/dInjector.zip' 
$checksum = '33D207F30C8E105603A9C51F522BF15D572676FED0E1A13F6341BF56EC481848'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
