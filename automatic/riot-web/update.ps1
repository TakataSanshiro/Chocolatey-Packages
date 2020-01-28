import-module au

$releases = 'https://github.com/vector-im/riot-web/tags'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"              = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"         = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')"     = "`$1'$($Latest.ChecksumType32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"            = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"       = "`$1'$($Latest.Checksum64)'"
            "(?i)(^\s*checksumType64\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'tag/v' -notmatch 'rc' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.Substring(1)

    @{
        Version        = $version
        URL32          = "https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%20$version.exe"
        URL64          = "https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%20$version.exe"
        ChecksumType32 = 'sha512'
        ChecksumType64 = 'sha512'
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}