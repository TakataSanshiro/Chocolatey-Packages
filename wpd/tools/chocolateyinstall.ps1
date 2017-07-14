$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://getwpd.com/get/latest.zip' 
$checksum = '3DD8DF5B457D4A184FEC275C0F6BD36462595FBA1EE8BA1BA79A841D189CE22A'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\WPD.lnk" `
						     -TargetPath "$toolsDir\WPD 1.1.475.exe"