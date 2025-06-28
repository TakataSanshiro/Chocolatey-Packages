$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/jurplel/qView/releases/download/7.0/qView-7.0-win32.exe'
  url64          = 'https://github.com/jurplel/qView/releases/download/7.0/qView-7.0-win64.exe'
  checksum       = 'a29301c653f6e86aa03ac062012104b2cd29bf9b776514e5feafe98ad4a3be95'
  checksum64     = '8c24f7b8ae9b2031255b673c964f145673e57856020a080f81388a3b779b690a'
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
