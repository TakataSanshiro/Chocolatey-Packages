$ErrorActionPreference = 'Stop';

$packageName = 'papyrus'
$url = 'https://github.com/morkro/papyrus/releases/download/1.0.2/Papyrus-windows-1.0.2.zip'
$checksum = 'EC624A7387ED2257BEB9C0483A422B0E4B1D950E1F01AA188B8AB4077FFBF2DF'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Papyrus.lnk" `
						     -TargetPath "$toolsDir\Papyrus.exe"
							 