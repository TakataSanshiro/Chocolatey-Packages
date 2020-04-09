import-module au

$releases = 'https://protonvpn.com/download/win-update.json'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $json = Invoke-WebRequest $releases | ConvertFrom-Json
    $version = $json.Categories[1].Releases[0].Version

    @{
        Version = $version
        URL64   = "https://protonvpn.com/download/ProtonVPN_win_v$version.exe"
    }
}

update