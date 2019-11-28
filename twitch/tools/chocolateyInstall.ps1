$ErrorActionPreference = 'Stop';

if (-not $env:ChocolateyForce) {
  try {
    $TwitchExeHandler = Get-ItemPropertyValue -Path "Microsoft.PowerShell.Core\Registry::HKEY_CLASSES_ROOT\twitch\shell\open\command"-Name "(default)"
    $TwitchExePath = [System.Management.Automation.PSParser]::Tokenize($TwitchExeHandler, [ref] $null) | Select-Object -First 1 -ExpandProperty "Content"
    $InstalledVersion = (Get-Item -Path $TwitchExePath).VersionInfo.ProductVersion

    if ([Version]::Parse($InstalledVersion) -ge [Version]::Parse($env:ChocolateyPackageVersion))
    {
      Write-Host "Skipping installation because version $InstalledVersion is already installed."
      return
    }
  } catch {
    # Installed version couldn't be checked, attempt installation
  }
}

$packageArgs = @{
  packageName    = 'twitch'
  installerType  = 'exe'
  url            = 'https://desktop.twitchsvc.net/installer/windows/TwitchSetup.exe'
  checksum       = '72F96219D19E39D73D0E9D1E8F0E4B095514F660DA3B8BB28BD9E027BE4E20C0'
  checksumType   = 'sha256'
  silentArgs     = '/silent'
  validExitCodes = @(0, 1638)
  softwareName   = 'Twitch'
}
Install-ChocolateyPackage @packageArgs
