$ErrorActionPreference = 'Stop';

$packageName  = 'exiftoolgui'
$url          = 'https://exiftool.org/gui/exiftoolgui516.zip'
$checksum     = '8A55DAAE8CBF342152A0CCE53792C5EEEC2F54C64F29CB94FD841674940F344F'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "$packageName" |
               Join-Path -ChildPath "$($packageName).exe.gui"

Set-Content -Path "$installFile" `
            -Value $null
