$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = 'b95f7b253293680330ca45a9342ceb1ed66b004d8e445971d46bdcb2c50e2771'
  checksum64     = '4bd2ec1bb34cdec50aa84a47ce39b1acefe10bef92dd8c16c5d55e199e24f865'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
