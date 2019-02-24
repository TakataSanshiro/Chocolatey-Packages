$ErrorActionPreference = 'Stop';

$packageName = 'tagspaces'
$url = 'https://github.com/tagspaces/tagspaces/releases/download/v3.1.1/tagspaces-win-x64-3.1.1.zip'
$checksum = '5ADE2A1C79192A79281564608CA1200E23D8EB6ECF59BAE486E09E05556FD11B'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"