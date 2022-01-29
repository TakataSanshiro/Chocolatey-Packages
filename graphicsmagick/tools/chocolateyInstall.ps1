$packageName    = 'graphicsmagick'
$url            = 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.36/GraphicsMagick-1.3.36-Q8-win32-dll.exe'
$checksum       = 'FE3D6828F5D9B7805951EC420783418426EB01A831E6B89FE2358F3A42410206'
$checksumType   = 'sha256'
$url64          = 'https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.36/GraphicsMagick-1.3.36-Q8-win64-dll.exe'
$checksum64     = 'A88B8BD3BA5417ADA402A35701E6DF7E7B1D00FE70595352F85C262F20328347'
$checksumType64 = 'sha256'
$installerType  = 'EXE'
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64 "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
