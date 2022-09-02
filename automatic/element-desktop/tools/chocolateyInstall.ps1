$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  file64         = Join-Path $toolsDir 'Element%20Setup%201.11.4_x64.exe'
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Element' 
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe
