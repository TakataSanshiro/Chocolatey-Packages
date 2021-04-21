import-module au

$releases = 'https://github.com/Automattic/wp-calypso/tags'

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

    $version = $download_page.links.href -match 'tag/v' -notmatch 'beta' -notmatch 'previews' -notmatch 'data' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.Substring(1)
    
    @{
        Version = $version
        URL64   = "https://github.com/Automattic/wp-calypso/releases/download/v$version/wordpress.com-win32-setup-$version.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
