import-module au

$releases = 'https://www.privateinternetaccess.com/download/windows-vpn#download-windows'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      		= "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" 		= "`$1'$($Latest.Checksum32)'"
            "(^[$]url64\s*=\s*)('.*')"      	= "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" 	= "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $version = $download_page.links.href -match 'pia-windows' | Select -First 1 | % { $_ -split '-' | select -Last 2 }
    $secondVersion = $version[1].Substring(0,$version[1].length-4)
    $version = $version[0]
    $chocoPackageVersion = '290.' + $version

    @{
        Version   = $chocoPackageVersion
        URL32     = "https://installers.privateinternetaccess.com/download/pia-windows-x86-$version-$secondVersion.exe"
        URL64     = "https://installers.privateinternetaccess.com/download/pia-windows-x64-$version-$secondVersion.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
