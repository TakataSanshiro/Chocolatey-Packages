$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://getwpd.com/get/WPD_1.1.451.zip' 
$checksum = '45C383E2240F5E6E83DF84D7FDE53B1B23235DC89129850402FAE58A80D9B9DE'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\WPD.lnk" `
						     -TargetPath "$toolsDir\WPD.exe"