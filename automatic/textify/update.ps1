import-module au

$releases = 'https://github.com/m417z/Textify/tags'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            #  "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'tag/v' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.Substring(1)

    @{
        Version = $version
        URL     = 'https://rammichael.com/downloads/textify_setup.exe'
    }
}

update -ChecksumFor all -NoCheckUrl