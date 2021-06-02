﻿$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  file           = "$toolsDir\GitHubDesktopSetup.exe"
  file64         = "$toolsDir\GitHubDesktopSetup-x64.exe"
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item "$toolsDir\*.exe" -Force -EA SilentlyContinue | Out-Null
