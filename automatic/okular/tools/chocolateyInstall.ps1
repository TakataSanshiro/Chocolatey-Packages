$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  file64         = "$toolsDir\okular-release_24.08-5436-windows-cl-msvc2022-x86_64.exe"
  silentArgs     = "/S"
  validExitCodes = @(0)
  softwareName   = 'Okular'
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item $toolsDir\*.exe -ea 0
