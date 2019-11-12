import-module au

$releases = 'https://www.charlesproxy.com/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".downloadbox > p").innerText
    $version = $version.split("`r`n") | select -last 1
    $version = $version -split " " | select -last 1

    @{
        Version   = $version
        URL64     = "https://www.charlesproxy.com/assets/release/$version/charles-proxy-$version-win64.msi"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}