import-module au

$releases = 'https://wingware.com/downloads/wing-pro'

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
    $version = $download_page.ParsedHtml.querySelector(".download-button").outerHTML
    $version = $version -split ">" | select -first 1
    $version = $version -split "/" | select -first 4
    $version = $version[3]

    @{
        Version   = $version
        URL32     = "https://wingware.com/pub/wing-personal/$version/wing-personal-$version.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}