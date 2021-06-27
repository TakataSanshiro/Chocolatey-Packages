import-module au

$releases = 'https://fontba.se/updates'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector("h1").innerHTML
    $version = $version | % { $_ -split '/' | select -FIRST 3 }
    $version = $version[2] | % { $_ -split '>' | select -FIRST 3 }
    $version = $version[0].Substring(0,$version[0].Length-1)

    @{
        Version = $version
        URL32   = "https://releases.fontba.se/win/FontBase-$version.exe"
    }
}

update -ChecksumFor all
