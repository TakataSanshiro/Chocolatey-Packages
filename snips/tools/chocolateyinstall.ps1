$ErrorActionPreference = 'Stop';

$packageName = 'snips'
$url = 'https://github.com/ethanpil/snips/releases/download/1.1/snips-v1.1.zip' 
$checksum = '46F65C3F7F2919A259ED830681934A5D9C5BE1EC2C8DBF90FB44B59994C5C748'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Snips.lnk" `
						     -TargetPath "$toolsDir\snips.exe"