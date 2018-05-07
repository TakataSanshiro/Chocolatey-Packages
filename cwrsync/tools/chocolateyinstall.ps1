$ErrorActionPreference = 'Stop';

$packageName  = 'cwrsync'
$installerType  = 'zip'
$url          = 'https://itefix.net/dl/cwrsync_5.7.1_x86_free.zip'
$checksum     = '379DC8534B808BDD6C454470B293C1B65BE8373F279FB0C1EA0A2E52A3CC5502'
$checksumType = 'sha256'
$toolsDir     = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$zipDir       = 'cwRsync_5.7.1_x86_Free'

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  checksum      = $checksum
  checksumType  = $checksumType
  url           = $url
  unzipLocation = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs

# Ignore all executables
Set-Content -Path ("$toolsDir\$zipDir\ssh.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\$zipDir\ssh-keygen.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\$zipDir\rsync.exe.ignore") -Value $null
