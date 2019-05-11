$ErrorActionPreference = 'Stop';

$packageName = 'winxcorners'
$url = 'https://doc-0k-a8-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/34gjbq3su1ph7h16ubse9sidhm9qi9ds/1557590400000/12606421919403606798/*/0B_iiJl28uix-MG84QTI2cFlNUWs?e=download' 
$checksum = 'C2AE7DD33557629DA1984B35D8BC200817AFD3D727129F1D00575E30E2F56EB7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
