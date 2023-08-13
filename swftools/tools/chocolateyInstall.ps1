$ErrorActionPreference = 'Stop';

$scriptPath     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile        = Join-Path $scriptPath 'swftoolsInstall.ahk'

#$packageArgs = @{
#  packageName    = $env:ChocolateyPackageName
#  installerType  = 'exe'
#  url            = 'http://swftools.org/swftools-0.9.0.exe'
#  checksum       = '80EDA119D9CA88D5525800C431EAE372CAE96559327C1CD6E4D77FEA9977622E'
#  checksumType   = 'sha256'
#  silentArgs     = ''
#  validExitCodes = @(0, 3010, 1641)
#  softwareName   = 'swftools'
#  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
#}

Start-Process 'AutoHotKey' "$ahkFile"

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url 'http://swftools.org/swftools-0.9.0.exe' -Checksum '80EDA119D9CA88D5525800C431EAE372CAE96559327C1CD6E4D77FEA9977622E' -ChecksumType 'SHA256' -GetOriginalFileName

Start-Process -FilePath (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
Start-Sleep -Seconds 10

Remove-Item -ea 0 -Force -Path $toolsDir\*.exe
