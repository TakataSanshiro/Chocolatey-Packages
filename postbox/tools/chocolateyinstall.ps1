$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/download.getpostbox.com/installers/5.0.20/1_9dabbd369c5779984b351fe768d906fec845cb23/postbox-5.0.20-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Postbox*'
  checksum      = '26D749C79CD3704668ED1095A088DAFBC2F393F7DBCB99DFAA51400F28B72015'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
