$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.4/Glyphr.Studio-win32-ia32.zip'
$checksum = '911851EDAA1166B3FA84E360BB9863272F8427A980C134F17BDA26C73BA3DE2F'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.4/Glyphr.Studio-win32-x64.zip'
$checksum64 = '478F10F54FE64247A86CB47FC99D848C816FA831F341C038F762DDC240E03134'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"