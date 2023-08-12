import-module au

$releases = 'https://www.enpass.io/downloads/'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'dl.enpass.io/stable/windows/setup' | Select -First 1 | % { $_ -split '/' | select -Last 2 } | % { $_ -split '/' | select -First 1 }
    $version = $version[0]

    @{
        Version = $version
        URL     = "https://dl.enpass.io/stable/windows/setup/$version/Enpass-setup.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
