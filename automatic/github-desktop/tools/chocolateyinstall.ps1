$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  file           = (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}

Install-ChocolateyInstallPackage @packageArgs

Start-Sleep -Seconds 60

Remove-Item "$toolsDir\*.exe" -Force -EA SilentlyContinue | Out-Null
