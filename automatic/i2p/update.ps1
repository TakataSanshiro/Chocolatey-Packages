import-module au

$releases = 'https://geti2p.net/en/download'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $version = $download_page.links.href -match 'windows.exe/download' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version | % { $_ -split '_' | select -first 2 }
    $version = $version[1]

    @{
        Version = $version
        URL64   = "https://download.i2p2.de/releases/$version/i2pinstall%5F$version%5Fwindows.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}