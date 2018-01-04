$ErrorActionPreference = 'Stop';

$packageName = 'registrychangesview'
$url = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64 = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum = '7475702810C9D91CB4400A7CB59DEC78DE734924AA15137DA76348CC930081D0'
$checksum64 = '8E83C9DE25A2548CDC7E84317877D6AD24267C63F0505B4CF8D6839CA8842708'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\RegistryChangesView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"