$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/jurplel/qView/releases/download/6.1/qView-6.1-win32.exe'
  url64          = 'https://github.com/jurplel/qView/releases/download/6.1/qView-6.1-win64.exe'
  checksum       = '097b6411e5b5a606fed4628c03cf7428fe21db2453cef57fccc3dfce91d5846e'
  checksum64     = 'a5d5912ad6e8efddee847da282d4bad42f3382c6caa704cff312a8edd2e748f5'
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
