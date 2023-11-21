import-module au

$releases = 'https://dist.torproject.org/torbrowser/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $version = ($page.links | ? { $_.href -match '^[0-9]' } | select -expand href -Last 1).Replace('/','')

    @{
        URL32   = $releases + $version + '/tor-browser-windows-i686-portable-' + $version + '.exe'
        URL64   = $releases + $version + '/tor-browser-windows-x86_64-portable-' + $version + '.exe'
        Version = $version.Replace('a','.')
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
