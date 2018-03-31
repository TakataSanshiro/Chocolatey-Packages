$ErrorActionPreference = 'Stop';

$packageName = 'zerofill'
$url = 'https://downloads.sourceforge.net/project/nikkhokkho/ZEROFILL/1.06/ZEROFILL.ZIP?r=https://sourceforge.net/projects/nikkhokkho/files/ZEROFILL/1.06/&ts=1522518161&use_mirror=superb-sea2' 
$checksum = '8A4F18BDE0EA4FD4EEF5E7061E2C8FA913A471F71DA68FC09A1412F9E1DC37AA'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"					 