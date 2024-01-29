﻿$ErrorActionPreference = 'Stop';

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
  silentArgs     = '/silent /nolaunch'
  validExitCodes = @(0, 1638)
  softwareName   = 'Twitch'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
