import-module au

$releases = 'https://sourceforge.net/projects/nikkhokkho/files/ZEROFILL/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'projects/nikkhokkho/files/ZEROFILL/' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]

    @{
        Version = $version
        URL32   = "https://sourceforge.net/projects/nikkhokkho/files/ZEROFILL/$version/ZEROFILL.ZIP/download"
    }
}

update