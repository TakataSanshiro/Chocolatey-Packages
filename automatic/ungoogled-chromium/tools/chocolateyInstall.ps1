$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file64      = "$toolsDir\ungoogled-chromium_120.0.6099.224-1.1_windows_x64_x64.zip"
  destination = $toolsDir
}

Get-ChocolateyUnzip @packageArgs

Remove-Item $toolsDir\*.zip -ea 0
