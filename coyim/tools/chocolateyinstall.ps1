$ErrorActionPreference = 'Stop';

$packageName = 'coyim'
$url = 'https://dl.bintray.com/coyim/coyim-bin/v0.3.10/windows/CoyIM.zip' 
$checksum = '25E980F9C016CD93068BD01A0E793E47E423633596621B38E6E7CDC301613711'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
