$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'gitg'
  installerType  = 'msi'
  url            = 'https://download.gnome.org/binaries/win64/gitg/41/gitg-x86_64-41.0.msi'
  checksum       = '96C4E323607FDA46BDB02698C92B991AAEC882E050DE1DF959E7ACF3993F117C'
  checksumType   = 'sha256'
  silentArgs     = "/quiet /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0)
  softwareName   = 'Gitg*'
}
Install-ChocolateyPackage @packageArgs
