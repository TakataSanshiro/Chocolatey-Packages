import-module au

$releases = 'https://www.vyprvpn.com/vpn-apps/vpn-for-windows/download'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'vyprvpn/desktop/windows/' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]
    
    @{
        Version = $version
        URL32   = "https://www.vyprvpn.com/downloads/vyprvpn/desktop/windows/production/$version/VyprVPN-$version-installer.exe"
    }
}

update -ChecksumFor all
