$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browseraddonsview.zip'
  url64          = 'https://www.nirsoft.net/utils/browseraddonsview-x64.zip'
  checksum       = 'bd80bf87e8397bbb97b8e056f641fbc0b0886548229cfd6d127d41d5c7448f82'
  checksum64     = '904e2de667963c3a91a9d935c2fa9ff864490b53beed042a4439499a89e673f2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowserAddonsView'
}
Install-ChocolateyZipPackage @packageArgs
