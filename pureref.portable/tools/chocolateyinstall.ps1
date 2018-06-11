$ErrorActionPreference = 'Stop';

$packageName = 'pureref.portable'
$url = 'https://www.pureref.com/files/portable.php?build=WIN32&downloadKey=C0Pzk5Buu9qgf4UPmFhc6g=='
$url64 = 'https://www.pureref.com/files/portable.php?build=WIN64&downloadKey=CK93Tk1GwLi/1JHk/TOkBw=='
$checksum = '09B26FE2F0DC7C0D336395838DC10B427656B3981319B86A13FA28855C0F43B0'
$checksum64 = 'DEADB1491977DD02E4BE49B0B049E1DFA5C90D09C485BDB96DF63824D5C9B3BD'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$path = "$toolsDir\pureref.portable.exe"

Get-ChocolateyWebFile        -PackageName "$packageName" `
                             -FileFullPath "$path" `
                             -Url "$url" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
						              	 -Url64bit "$url64" `
						              	 -Checksum64 "$checksum64" `
						              	 -ChecksumType64 "$checksumType64"
