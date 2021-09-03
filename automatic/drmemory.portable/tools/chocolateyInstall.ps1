$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.4.0/DrMemory-Windows-2.4.0-2.zip'
  checksum       = 'ecf13d7acf6b936b85498d1dc9d1a77efe481de3b779afe9b6dd64f0ceb63955'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
