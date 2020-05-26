$ErrorActionPreference = 'Stop';

$packageName  = 'wpd'
$url          = 'https://wpd.app/get/latest.zip' 
$checksum     = 'c9e572c0254ef885e26dd6749e8ba1eea87b1ff56cb26bd1fc74d0a69a95fa66'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
