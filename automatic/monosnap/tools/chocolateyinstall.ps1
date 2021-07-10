$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'monosnap'
  fileType       = 'msi'
  url            = 'https://static.monosnap.com/windows/Monosnap.Web.Installer.msi'
  silentArgs     = "/quiet /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0)
  softwareName   = 'monosnap*'
  checksum       = 'ECEAC3760067D7FDDD3672894297803A4623208456F48C389C5F1FD4F32314B6'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
