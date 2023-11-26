import-module au

$releases = 'https://proton.me/drive/download'

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

    $version = $download_page.links.href -match 'windows/' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version | % { $_ -split '%20' | select -Last 1 }
    $version = $version.Substring(0,$version.length-4)

    @{
        Version = $version
        URL64   = "https://proton.me/download/drive/windows/Proton%20Drive%20Setup%20$version.exe"
    }
}

update
