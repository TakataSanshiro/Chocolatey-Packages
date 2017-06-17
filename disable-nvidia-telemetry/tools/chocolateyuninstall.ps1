$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "disable-nvidia-telemetry" `
  -ZipFileName "Disable.Nvidia.Telemetry*.zip" 

Remove-item -path "$Home\Desktop\Disable Nvidia Telemetry.lnk" -Force -ErrorAction 'SilentlyContinue'
