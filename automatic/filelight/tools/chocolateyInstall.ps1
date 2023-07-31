$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  file64         = Join-Path $toolsDir 'filelight-23.04.0-1330-windows-cl-msvc2019-x86_64_x64.exe'
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Filelight'
}

Install-ChocolateyInstallPackage @packageArgs

Get-ChildItem -Path $toolsDir\*.exe | % { Remove-Item $_ -ea 0; if (Test-Path $_) { Set-Content "$_.ignore" } }
