$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/jurplel/qView/releases/download/6.0/qView-6.0-win32.exe'
  url64          = 'https://github.com/jurplel/qView/releases/download/6.0/qView-6.0-win64.exe'
  checksum       = 'd0b1ca7f46838400fd3b69868b54066983e8d52eebf3e329634ef37e7ac40db5'
  checksum64     = '8c519cd9b7532f4d4c5f4d90d090a86d178a25fc615662c20403aba8ff63ff4a'
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
