$ErrorActionPreference = 'Stop';

$packageName = 'composercat'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://downloads.getcomposercat.com/composercat/Composercat%20Setup%200.4.0.exe'
$checksum = '8BDACF9472917379131D26645FB8F8329D54197A62A162138F5BB27B8BD971EA'
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
