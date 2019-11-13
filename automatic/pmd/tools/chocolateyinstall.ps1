$ErrorActionPreference = 'Stop';

$package  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pmd_home = Join-path $package 'pmd-bin-6.19.0'
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'

$packageArgs = @{
  packageName    = 'pmd'
  url            = 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.19.0/pmd-bin-6.19.0.zip'
  checksum       = '9f3c1e28e2a005dd6ee195edb980e34cc25c342a559a798d99547a55fac9517b'
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
