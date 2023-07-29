$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  file64         = (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Element' 
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe
