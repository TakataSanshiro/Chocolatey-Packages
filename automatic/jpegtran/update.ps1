import-module au

$releases = 'https://jpegclub.org/jpegtran.zip'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            # "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version       = '9.0.0'

    @{
        Version = $version
        URL32   = "https://jpegclub.org/jpegtran.zip"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}