import-module au

$releases = 'https://github.com/shadowsocks/shadowsocks-windows/releases'

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

    $url = $download_page.links.href -match 'shadowsocks-windows/releases/download/' | Select -First 1
    $version = $download_page.links.href -match 'shadowsocks-windows/releases/download/' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]

    @{
        Version = $version
        URL64   = "https://github.com$url"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
