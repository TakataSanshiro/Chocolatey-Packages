$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/coyim/coyim/releases/download/v0.4/CoyIM.Windows.zip'
  checksum       = '8fbd916b595e46531e4a2a98bad416cadcc5b5957ba13a687d9d60ad25647097'
  checksumType   = 'sha256'
  unzipLocation  = "$env:AppData\coyim"
}
Install-ChocolateyZipPackage @packageArgs

Install-BinFile -Name 'coyim' -Path "$env:AppData\coyim\coyim_windows_amd64.exe"
Update-SessionEnvironment
