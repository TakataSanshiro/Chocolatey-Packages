$ErrorActionPreference = 'Stop';

$packageName = 'mupdf'
$url = 'https://mupdf.com/downloads/mupdf-1.11-windows.zip' 
$checksum = '8FC97CBD56BD5C9C309FC08559EA517775BD4CE09225910C67076AF9E6F3515B'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an execution shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\MuPDF.lnk" `
						     -TargetPath "$toolsDir\mupdf-1.11-windows\mupdf.exe"
							 