$ErrorActionPreference = 'Stop';

$packageName = 'magicavoxel'
$url = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.2-alpha-win32.zip' 
$url64 = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.2-alpha-win64.zip' 
$checksum = 'E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855'
$checksum64 = '2B5E10DF8E3733DEF08357469FFA2D7D32BD2E3F6D5F14B5E5BD4AB258A05DCA'
$checksumType = 'sha256'
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
							 