$ErrorActionPreference = 'Stop';

$package  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pmd_home = Join-path $package "pmd-bin-$env:ChocolateyPackageVersion"
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'

$packageArgs = @{
  packageName    = 'pmd'
  url            = 'https://github.com/pmd/pmd/releases/download/pmd_releases/6.48.0/pmd-bin-6.48.0.zip'
  checksum       = '0d7a2257902e9c319a81fabc0561c5720181bfd39d1a28f90c3bb138a2589c4e'
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
