$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/coyim/coyim/releases/download/v0.4.1/CoyIM.Windows.zip'
  checksum       = '8d88824715ecdd48017a4f5ab2486e1933c4c2e75be674709065781295e5f5f3'
  checksumType   = 'sha256'
  unzipLocation  = "$env:AppData\coyim"
}
Install-ChocolateyZipPackage @packageArgs

Install-BinFile -Name 'coyim' -Path "$env:AppData\coyim\coyim_windows_amd64.exe"
Update-SessionEnvironment
