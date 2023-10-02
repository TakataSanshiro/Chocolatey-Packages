import-module au

$releases = 'https://downloads.iridiumbrowser.de/windows/'

function global:au_SearchReplace {
   @{
    ".\tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
        "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        "(?i)(^\s*url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
        "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}

function global:au_GetLatest {
    $downloads = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $version   = ($downloads.links | ? href -match '/$' |  select -Last 1 -expand href) -replace '/',''
    $folder    = 'https://downloads.iridiumbrowser.de/windows/' + $version + '/'
    $current = Invoke-WebRequest -Uri $folder -UseBasicParsing
    $url32 = $current.links | ? href -match '-x86.msi$' |  select -First 1 -expand href
    $url64 = $current.links | ? href -match '-x64.msi$' |  select -First 1 -expand href

    @{
        URL32      = $folder + $url32
        URL64      = $folder + $url64
        Version    = ($version).Replace('-','.')
    }
}

update
