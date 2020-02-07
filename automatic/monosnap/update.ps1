import-module au

$releases = 'https://api.monosnap.com/downloads'

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
    $version = $json.win[0].title
    $version = $version | % { $_ -split ' ' | select -last 1 }
    $version = $version.Substring(1)

    @{
        Version = $version
        URL     = "https://static.monosnap.com/windows/Monosnap.$version.msi?web"
    }
}

update