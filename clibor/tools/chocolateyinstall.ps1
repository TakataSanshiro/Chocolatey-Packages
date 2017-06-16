$ErrorActionPreference = 'Stop';

$packageName = 'clibor'
$url = 'https://www.amunsnet.com/downfile/down.php?fid=clibor149_en1.zip' 
$checksum = 'CB62544F88C89BED384A8F71DC0D742DCB502CF9D5CF5D3E27F50D7C7CCC2FE3'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Clibor.lnk" `
						     -TargetPath "$toolsDir\clibor149_en1\Clibor.exe"
							 