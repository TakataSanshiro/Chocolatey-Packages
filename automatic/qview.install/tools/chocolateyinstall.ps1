$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/jurplel/qView/releases/download/5.0/qView-5.0-win32.exe'
  url64          = 'https://github.com/jurplel/qView/releases/download/5.0/qView-5.0-win64.exe'
  checksum       = '7e95cae01ca4e3cd9df8f62e50c79e4f04658ebbc617b5d917d132f93114ba61'
  checksum64     = '2d493c49aee638d5ffbc144c822e88d9f6c17162f502c5d43e6fc83712de0b29'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'qView*'
}
Install-ChocolateyPackage @packageArgs

$installLocation = Get-AppInstallLocation $packageArgs.softwareName
if (!$installLocation)  {  Write-Warning "Can't find $PackageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"
Install-BinFile -Path "$installLocation\qView.exe" -Name 'qview'
