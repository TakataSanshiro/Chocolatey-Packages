$ErrorActionPreference = 'Stop';

$packageName = 'windowsxappremover'
$url = 'https://downloads.sourceforge.net/project/windows8appremover/winxar_102.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fwindows8appremover%2Ffiles%2F&ts=1493024347&use_mirror=superb-sea2' 
$checksum = 'B9FA3EA3FB7DC320DC83D4EF7F27F453844CC53B65536F7F18196871956B8907'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
							 
# Create a folder shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\WindowsXAppRemover.lnk" `
						     -TargetPath "$toolsDir\WindowsXAppRemover.exe"
