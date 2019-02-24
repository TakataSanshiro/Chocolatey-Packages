$ErrorActionPreference = 'Stop';

$packageName = 'defender-injector'
$url = 'https://www.sordum.org/files/small-tools/dInjector.zip' 
$checksum = '33F490C67CC02F5701F518E150A166C2D305ED2E31D77EB7E868C7886677666A'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
