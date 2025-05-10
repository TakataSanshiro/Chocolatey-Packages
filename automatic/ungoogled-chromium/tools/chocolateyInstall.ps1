$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file64      = "$toolsDir\ungoogled-chromium_136.0.7103.92-1.1_windows_x64_x64.zip"
  destination = $toolsDir
}

Get-ChocolateyUnzip @packageArgs

Remove-Item $toolsDir\*.zip -ea 0

# remove the version name from path for suitable for firewalls and shortcuts.
$file = "ungoogled-chromium*windows*"
Get-ChildItem -Path $toolsDir | where-object { $_.Name -like $file } | %{ Rename-Item -LiteralPath $_.FullName -NewName "ungoogled-chromium" }
