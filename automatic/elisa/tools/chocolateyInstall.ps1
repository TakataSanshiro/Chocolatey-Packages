$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  file64         = Join-Path $toolsDir 'elisa-22.08.3-1311-windows-msvc2019_64-cl_x64.exe'
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Elisa'
}

Install-ChocolateyInstallPackage @packageArgs

Get-ChildItem -Path $toolsDir\*.exe | % { Remove-Item $_ -ea 0; if (Test-Path $_) { Set-Content "$_.ignore" } }
