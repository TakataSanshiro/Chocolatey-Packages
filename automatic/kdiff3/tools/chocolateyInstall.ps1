$ErrorActionPreference = 'Stop';
$toolsDir              = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'kdiff3'
  file64         = (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
  installerType  = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'KDiff3'
}

Install-ChocolateyInstallPackage @packageArgs

#------additional setup ----------------
#add it to the path
$programPath = "$env:SystemDrive\Program Files\KDiff3\bin"
if (![System.IO.Directory]::Exists($programPath)) {
$programPath = "$env:SystemDrive\Program Files (x86)\KDiff3\bin";
}
Install-ChocolateyPath $programPath
