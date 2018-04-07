$ErrorActionPreference = 'Stop';

$packageName = 'coyim'
$url = 'https://dl.bintray.com/twstrike/coyim/master/windows/CoyIM.zip' 
$checksum = '291875744F40110F11CF4112D94E24647B5FEDC8680F61C511C84C2ED26CA465'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
