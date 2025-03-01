$ErrorActionPreference = 'Stop';

$package  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pmd_home = Join-path $package "pmd-bin-$env:ChocolateyPackageVersion"
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'

$packageArgs = @{
  packageName    = 'pmd'
  url            = 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F7.11.0/pmd-dist-7.11.0-bin.zip'
  checksum       = '670e342db65437abcbaf1ce114b2e3b3285de64c2dcc590ca0e4f1a15ab22a6b'
  checksumType   = 'sha256'
  softwareName   = 'PMD'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyEnvironmentVariable `
    -VariableName 'PMD_HOME' `
    -VariableValue $pmd_home `
    -VariableType 'Machine'

Install-BinFile -Name 'pmd' -Path $pmd_bin
Install-BinFile -Name 'cpd' -Path $cpd_bin

Update-SessionEnvironment
