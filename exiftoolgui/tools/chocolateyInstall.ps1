$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$pp = Get-PackageParameters
if ($pp['installPath']) { $toolsDir = $pp["installPath"] }

$packageName  = $env:ChocolateyPackageName
$url          = 'https://exiftool.org/gui/exiftoolgui516.zip'
$checksum     = '8A55DAAE8CBF342152A0CCE53792C5EEEC2F54C64F29CB94FD841674940F344F'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Install-BinFile -Path "$toolsDir\exiftoolgui\ExifToolGUI.exe" -Name 'exiftoolgui'
