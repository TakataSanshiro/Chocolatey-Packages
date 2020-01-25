import-module au

$releases = 'https://protonvpn.com/download/win-update.json'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $json = Invoke-WebRequest $releases | ConvertFrom-Json
    $version = $json.Categories[1].Releases[0].Version

    @{
        Version = $version
        URL     = "https://protonvpn.com/download/ProtonVPN_win_v$version.exe"
    }
}

update