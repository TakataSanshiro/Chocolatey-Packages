import-module au

$releases = 'https://github.com/pkulchenko/ZeroBraneStudio/tags'

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
    $version = $download_page.links.href -match 'tag/' | Select -First 1 | % { $_ -split '/' | select -Last 1 }

    @{
        Version = $version
        URL32   = "https://download.zerobrane.com/ZeroBraneStudioEduPack-$version-win32.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}