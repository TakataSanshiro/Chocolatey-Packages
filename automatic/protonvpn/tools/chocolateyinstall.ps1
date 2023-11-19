$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.2.7/ProtonVPN_v3.2.7.exe'
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '57bea2dd764fb122edd25842985274e249bbf7181dee7840cc791a87e202ac09'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs

Start-WaitandStop "ProtonVPN"
