import-module au

$releases = 'https://sourceforge.net/projects/ijbswa/files/Win32/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'stable' -notmatch 'beta' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]
    $version = $version.split("%") | select -First 1

    @{
        Version = $version
        URL   = "https://sourceforge.net/projects/ijbswa/files/Win32/$version%20(stable)/privoxy_setup_$version.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
