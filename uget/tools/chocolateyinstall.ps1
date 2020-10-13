$ErrorActionPreference = 'Stop';

$packageName  = 'uget'
$url          = 'https://sourceforge.net/projects/urlget/files/uget%20%28stable%29/2.2.3/uget-2.2.3-1-win32%2Bgtk3.7z/download' 
$checksum     = '169C3E638DDF59212D2849BC320796D86CDD6426596EE913900E9BAC28928A80'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
