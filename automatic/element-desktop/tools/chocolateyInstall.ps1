$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition
$file64                = (Get-Childitem -Path $toolsDir -Filter "*_x64.exe").fullname

$packageArgs = @{
  file64         = $file64
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Element' 
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item -ea 0 -Force $file64 