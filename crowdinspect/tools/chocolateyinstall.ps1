$ErrorActionPreference = 'Stop';

$packageName = 'crowdinspect'
$url = 'http://download.crowdstrike.com/crowdinspect/CrowdInspect.zip' 
$checksum = '32FEC9FE206257901F348512A037BAECC959C7487EB8BAE9913BA010B72CB35E'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\CrowdInspect.lnk" `
						     -TargetPath "$toolsDir\CrowdInspect.exe"