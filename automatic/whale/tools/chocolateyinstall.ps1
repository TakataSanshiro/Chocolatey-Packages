$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.3.0/Whale.Setup.2.3.0.exe'
  checksum       = '6195e231cdf244d3139cea4bfb87fb5db98ff60335ef397d0578651bf5fc75b5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
