$ErrorActionPreference = 'Stop';

$packageName = 'composercat'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://downloads.getcomposercat.com/composercat/Composercat%20Setup%200.3.2.exe'
$checksum = 'A35EF2F776BC0975B7F932187915504A3A49EB303C4ACB416ABE536437426DED'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
