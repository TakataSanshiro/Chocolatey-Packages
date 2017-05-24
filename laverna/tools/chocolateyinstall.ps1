$ErrorActionPreference = 'Stop';

$packageName = 'laverna'
$url = 'https://github.com/Laverna/laverna/releases/download/0.7.3/laverna-0.7.3-win32-ia32.zip'
$checksum = '74E6CD4951EB53AAD295646373C5F540CC072FD17227957FF3E7AC332602E719'
$checksumType = 'sha256'
$url64 = 'https://github.com/Laverna/laverna/releases/download/0.7.3/laverna-0.7.3-win32-x64.zip'
$checksum64 = 'E461E31930359EF2EFBB5B195A3061D548060ED9A2CF7D73DD78E25676405E44'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\laverna.lnk" `
						     -TargetPath "$toolsDir\laverna.exe"
							 