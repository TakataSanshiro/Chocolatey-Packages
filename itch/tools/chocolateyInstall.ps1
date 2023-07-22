$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

#$packageArgs = @{
#  packageName    = $env:ChocolateyPackageName
#  installerType  = 'exe'
#  url            = 'https://itch.io/app/download?platform=windows'
#  checksum       = '55E97E558F22F6EE39243EB47C6E3A5DEE12D1039EA73B9A860562AD12AF0FEB'
#  checksumType   = 'sha256'
#  silentArgs     = '--silent'
#  validExitCodes = @(0)
#  softwareName   = 'itch*'
#  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
#}
#This cmdlet displays huge error messages unless itch has been installed successfully.
#Install-ChocolateyPackage @packageArgs
#Call the installer directly to suppress huge error messages.
Get-ChocolateyWebFile -PackageName "$env:ChocolateyPackageName" -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\thefile.exe" -Url 'https://itch.io/app/download?platform=windows' -Checksum '55E97E558F22F6EE39243EB47C6E3A5DEE12D1039EA73B9A860562AD12AF0FEB' -ChecksumType 'SHA256' -GetOriginalFileName

Start-Process -FilePath "$toolsDir\itch-setup.exe" -ArgumentList "--silent"
Start-Sleep -Seconds 120

Start-WaitandStop "itch"
Remove-Item -ea 0 -Force -Path $toolsDir\*.exe
