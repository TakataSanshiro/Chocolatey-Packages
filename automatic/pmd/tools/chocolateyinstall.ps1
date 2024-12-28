$ErrorActionPreference = 'Stop';

$package  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pmd_home = Join-path $package "pmd-bin-$env:ChocolateyPackageVersion"
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'

$packageArgs = @{
  packageName    = 'pmd'
  url            = 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F7.9.0/pmd-dist-7.9.0-bin.zip'
  checksum       = 'dcb363fe20c2cc6faa700f3bf49034ef29b9a18f8892530d425a3f3b15eeea0d'
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
